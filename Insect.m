% File: Insect.m
% Author: B. Jordan
% Date: 14-AUG-2009
% Description: This file contains image preprocessing steps for neural
%              network input feature vectors, as well as target constants
%              for previously identified insects.

classdef Insect
    properties (Constant = false)
        name
        image
        featureVector
        xCoordinate
        yCoordinate
        hProjection
        vProjection
        colorProfile
    end
    methods(Static)
        function[featureVector] = imageFeatureVector(RGB, xCoordinate, yCoordinate)
            
            %% Convert the image to greyscale.
            I = rgb2gray(RGB);
            
            %% Dilate the image
            [junk threshold] = edge(I, 'sobel');
            fudgeFactor = 0.5;
            BWs = edge(I,'sobel', threshold * fudgeFactor);
            se90 = strel('line', 3, 90);
            se0 = strel('line', 3, 0);
            BWsdil = imdilate(BWs, [se90 se0]);
            
            %% Fill the interior gaps
            BWdfill = imfill(BWsdil, 'holes');
            
            %% Remove connected objects on border.
            BWnobord = imclearborder(BWdfill, 4);
            
            %% Smoothen the object
            seD = strel('diamond',1);
            BWfinal = imerode(BWnobord,seD);
            BWfinal = imerode(BWfinal,seD);
            
            %% Remove artifacts touching the edge of the image
            BWfinal = imclearborder(BWfinal);
            
            %% Crop the image.
            % Generate bounding box matrix.
            STATS = regionprops(BWfinal, 'BoundingBox');
            
            % TODO: Remove antenae before cropping.
            
            % Use the bounding box to crop the image.
            BWfinal = imcrop(BWfinal, STATS(1).BoundingBox);
            RGBfinal = imcrop(RGB, STATS(1).BoundingBox);
            
            %% Resize the image by height. Don't preserve the aspect ratio.
            BWfinal = imresize(BWfinal, [64, 64]);
            RGBfinal = imresize(RGBfinal, [64, 64]);
            
            %% Remove artifacts from resize.
            BWfinal = bwareaopen(BWfinal, 50);
            
            %% Perform minimum variance quantization with a tolerance of 8.
            [X_no_dither,map]= rgb2ind(RGBfinal,8,'nodither');
            %figure, imshow(X_no_dither,map);
            
            % TODO: Fix this part?
            
            % Sort the map in ascending order.
            map = sort(map);
            
            %% Flatten RGB color map.
            map = [map(:,1)', map(:,2)', map(:,3)'];
            
            %% Get the number of "foreground" pixels within the image.
            % Get the number of white pixels.
            STATS = regionprops(BWfinal, 'FilledArea');
            filledArea = STATS.FilledArea;
            
            % Massage the value for neural network input.
            filledArea = ((filledArea - 1)/(4096 - 1));
            
            %% Get the horizontal and vertical projections of a black and white image.
            
            % TODO: Place this in a function.
            pWidth = 64;
            pHeight = pWidth;
            pSegments = 6;
            
            xpixel = 1;
            ypixel = 1;
            pixelCount = 0;
            
            vprojection = zeros(1,pSegments);
            hprojection = zeros(1,pSegments);
            
            format long;
            
            % Loop through each segment.
            for segment = 1:pSegments
                
                pixelCount = 0;
                
                % Get the horizontal coordinate for this segment.
                ypixel = round( (pWidth/pSegments) * segment);
                
                % Loop through each horizontal pixel and aggregate 'on' pixels.
                for xpixel=1:pHeight
                    pixelCount = pixelCount + BWfinal(xpixel,ypixel);
                end
                
                % Store off this segment in the vertical projection matrix.
                vprojection(1,segment) =  pixelCount;
                
                pixelCount = 0;
                
                % Get the vertical coordinate for this segment.
                xpixel = round( (pHeight/pSegments) * segment);
                
                % Loop through each horizontal pixel and aggregate 'off' pixels.
                for ypixel=1:pWidth
                    pixelCount = pixelCount + BWfinal(xpixel,ypixel);
                end
                
                % Store off this segment in the horizontal projection matrix.
                hprojection(1,segment) =  pixelCount;
                
            end
            
            %% Massage each vertical and horizontal projection value.
            for segment = 1:pSegments
                hprojection(1,segment) = (hprojection(1,segment))/(pWidth);
                vprojection(1,segment) = (vprojection(1,segment))/(pHeight);
                
                % Alternatively, a function such as mapminmax could be used here.
            end
            
            %% Get cross-section RGB profile.
            segmentCount = 7;
            s = round(pWidth/segmentCount);
            profile = zeros(3,segmentCount);
            
            for i=1:segmentCount
                r = s*i;
                v = impixel(RGBfinal,r,r);
                
                % Sample pixel values around the current pixel.
                % Nine RGB values are taken in total.
                v = v + impixel(RGBfinal,r-1,r+1);
                v = v + impixel(RGBfinal,r+1,r+1);
                v = v + impixel(RGBfinal,r-1,r-1);
                v = v + impixel(RGBfinal,r+1,r-1);
                v = v + impixel(RGBfinal,r-1,r);
                v = v + impixel(RGBfinal,r+1,r);
                v = v + impixel(RGBfinal,r,r+1);
                v = v + impixel(RGBfinal,r,r-1);
                
                % Get the average pixel values.
                v = v / 9;
                
                % Massage the RGB values in the vector.
                profile(1,i) = v(1)/255;
                profile(2,i) = v(2)/255;
                profile(3,i) = v(3)/255;
            end
            
            % Transpose the RGB profile
            profile = profile';
            
            % Flatten the profile.
            profileFlattened = [];
            for i=1:segmentCount
                profileFlattened = [profileFlattened, profile(i,:)];
            end
            
            %% Prepare Coordinates
            
            % Shift the coordinates so that they are all positive values.
            xCoordinate = xCoordinate + 100;
            yCoordinate = yCoordinate + 200;
            
            % Massage the coordinate data for the feature vector
            xCoordinate = xCoordinate/200;
            yCoordinate = yCoordinate/400;
            
            %% Combine all this information into the feature vector.
            featureVector = [hprojection, vprojection, filledArea, profileFlattened, xCoordinate, yCoordinate];
        end
    end
end

