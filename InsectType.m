% File: InsectType.m
% Author: B. Jordan
% Date: 29-SEP-2009
% Description: This file contains output vector matching to target constants
%              for insects.

classdef InsectType
    properties (Constant = true)
        butterfly_wanderer = [1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0];     % Wanderer Butterfly
        butterfly_ulysses = [0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0];      % Ulysses Butterfly
        eastern_hercules_beetle = [0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0];      % Ulysses Butterfly
        cockroach = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1];              % Cockroach
    end
    methods(Static)
        function[insectName] = getInsectType(outputVector)
            
            % Add each constant to a new matrix.
            classList = [InsectType.butterfly_wanderer;
                         InsectType.butterfly_ulysses;
                         InsectType.eastern_hercules_beetle;
                         InsectType.cockroach];
            
            % Element-by-element, subtract the output vector from each class.
            difference = bsxfun(@minus,classList,outputVector);
            
            % Obtain class differences.
            class_diff = sum(difference.^2,2);
            
            % Return the height index of the lowest difference.
            [m index] = min(class_diff);
            
            % Match the index to the class list, obtaining the matching
            % class vector.
            outputVector = (classList(index,:));
            
            % Choose a property based on the selected class vector and give 
            % it a descriptor.
            if (outputVector == InsectType.butterfly_wanderer)
                insectName = 'Wanderer Butterfly';
            elseif (outputVector == InsectType.butterfly_ulysses)
                insectName = 'Ulysses Butterfly';
            elseif (outputVector == InsectType.eastern_hercules_beetle)
                insectName = 'Eastern Hercules Beetle';
            elseif (outputVector == InsectType.cockroach)
                insectName = 'Cockroach';
            else
                insectName = 'Unknown';
            end
        end
    end
end