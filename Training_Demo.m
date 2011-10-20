inputData = [];
targetData = [];

% Load in cockroaches
inputData = [inputData;Insect.imageFeatureVector(imread('C:\Users\Demo\Desktop\insect_photos\cockroaches\cockroach-edited.jpg'),-30.613,116.616)]; %
inputData = [inputData;Insect.imageFeatureVector(imread('C:\Users\Demo\Desktop\insect_photos\cockroaches\cockroach-edited-noise1.jpg'),-32.337,146.630)];
inputData = [inputData;Insect.imageFeatureVector(imread('C:\Users\Demo\Desktop\insect_photos\cockroaches\cockroach-edited-noise2.jpg'),-31.740,130.459)];
inputData = [inputData;Insect.imageFeatureVector(imread('C:\Users\Demo\Desktop\insect_photos\cockroaches\cockroach-edited2.jpg'),-21.712,123.427)];
inputData = [inputData;Insect.imageFeatureVector(imread('C:\Users\Demo\Desktop\insect_photos\cockroaches\cockroach-edited2-noise1.jpg'),43.250,-121.962)];
inputData = [inputData;Insect.imageFeatureVector(imread('C:\Users\Demo\Desktop\insect_photos\cockroaches\cockroach-edited2-noise2.jpg'),36.797,-89.619)]; 
inputData = [inputData;Insect.imageFeatureVector(imread('C:\Users\Demo\Desktop\insect_photos\cockroaches\cockroach-edited3.jpg'),-29.929,130.459)];
inputData = [inputData;Insect.imageFeatureVector(imread('C:\Users\Demo\Desktop\insect_photos\cockroaches\cockroach-edited4.jpg'),61.724,-96.650)]; 
inputData = [inputData;Insect.imageFeatureVector(imread('C:\Users\Demo\Desktop\insect_photos\cockroaches\cockroach-edited4.jpg'),43.250,122.724)];

targetData = [InsectType.cockroach;
              InsectType.cockroach;
              InsectType.cockroach;
              InsectType.cockroach;
              InsectType.cockroach;
              InsectType.cockroach; 
              InsectType.cockroach;
              InsectType.cockroach; 
              InsectType.cockroach];

% Load in Wanderer Butterflies
inputData = [inputData;Insect.imageFeatureVector(imread('C:\Users\Demo\Desktop\insect_photos\wanderer_butterflies\wanderer1-edit.jpg'),-30.613,116.616)];
inputData = [inputData;Insect.imageFeatureVector(imread('C:\Users\Demo\Desktop\insect_photos\wanderer_butterflies\wanderer2-edit.jpg'),-28.085,116.396)]; %
inputData = [inputData;Insect.imageFeatureVector(imread('C:\Users\Demo\Desktop\insect_photos\wanderer_butterflies\wanderer3-edit.jpg'),-32.337,123.427)];
inputData = [inputData;Insect.imageFeatureVector(imread('C:\Users\Demo\Desktop\insect_photos\wanderer_butterflies\wanderer4-edit.jpg'),-29.318,131.865)]; %
inputData = [inputData;Insect.imageFeatureVector(imread('C:\Users\Demo\Desktop\insect_photos\wanderer_butterflies\wanderer6-edit.jpg'),-39.718,143.115)]; %
inputData = [inputData;Insect.imageFeatureVector(imread('C:\Users\Demo\Desktop\insect_photos\wanderer_butterflies\wanderer7-edit.jpg'),-34.101,147.334)];
inputData = [inputData;Insect.imageFeatureVector(imread('C:\Users\Demo\Desktop\insect_photos\wanderer_butterflies\wanderer8-edit.jpg'),-30.537,141.005)]; % 
inputData = [inputData;Insect.imageFeatureVector(imread('C:\Users\Demo\Desktop\insect_photos\wanderer_butterflies\wanderer9-edit.jpg'),-36.961,147.334)];
inputData = [inputData;Insect.imageFeatureVector(imread('C:\Users\Demo\Desktop\insect_photos\wanderer_butterflies\wanderer10-edit.jpg'),-28.703,148.740)]; 
inputData = [inputData;Insect.imageFeatureVector(imread('C:\Users\Demo\Desktop\insect_photos\wanderer_butterflies\wanderer11-edit.jpg'),-36.398,142.412)];
inputData = [inputData;Insect.imageFeatureVector(imread('C:\Users\Demo\Desktop\insect_photos\wanderer_butterflies\wanderer101-edit.jpg'),-28.085,131.865)]; %
inputData = [inputData;Insect.imageFeatureVector(imread('C:\Users\Demo\Desktop\insect_photos\wanderer_butterflies\wanderer102-edit.jpg'),-41.848,145.224)];
inputData = [inputData;Insect.imageFeatureVector(imread('C:\Users\Demo\Desktop\insect_photos\wanderer_butterflies\wanderer104-edit.jpg'),-24.300,145.224)];
inputData = [inputData;Insect.imageFeatureVector(imread('C:\Users\Demo\Desktop\insect_photos\wanderer_butterflies\wanderer107-edit.jpg'),-30.537,145.224)];
inputData = [inputData;Insect.imageFeatureVector(imread('C:\Users\Demo\Desktop\insect_photos\wanderer_butterflies\wanderer109-edit.jpg'),-30.537,116.396)]; 

targetData = [targetData;
              InsectType.butterfly_wanderer;
              InsectType.butterfly_wanderer;
              InsectType.butterfly_wanderer;
              InsectType.butterfly_wanderer;
              InsectType.butterfly_wanderer;
              InsectType.butterfly_wanderer;
              InsectType.butterfly_wanderer; 
              InsectType.butterfly_wanderer;
              InsectType.butterfly_wanderer; 
              InsectType.butterfly_wanderer;
              InsectType.butterfly_wanderer;
              InsectType.butterfly_wanderer;
              InsectType.butterfly_wanderer;
              InsectType.butterfly_wanderer;
              InsectType.butterfly_wanderer]; 

% Load in Ulysses Butterflies
inputData = [inputData;Insect.imageFeatureVector(imread('C:\Users\Demo\Desktop\insect_photos\ulysses_butterflies\ulysses1-edit.jpg'),-11.591,142.565)];
inputData = [inputData;Insect.imageFeatureVector(imread('C:\Users\Demo\Desktop\insect_photos\ulysses_butterflies\ulysses2-edit.jpg'),-13.436,142.082)]; 
inputData = [inputData;Insect.imageFeatureVector(imread('C:\Users\Demo\Desktop\insect_photos\ulysses_butterflies\ulysses3-edit.jpg'),-14.587,144.587)];
inputData = [inputData;Insect.imageFeatureVector(imread('C:\Users\Demo\Desktop\insect_photos\ulysses_butterflies\ulysses5-edit.jpg'),-16.787,142.785)]; %
inputData = [inputData;Insect.imageFeatureVector(imread('C:\Users\Demo\Desktop\insect_photos\ulysses_butterflies\ulysses6a-edit.jpg'),-17.459,145.817)]; 
inputData = [inputData;Insect.imageFeatureVector(imread('C:\Users\Demo\Desktop\insect_photos\ulysses_butterflies\ulysses6b-edit.jpg'),-18.379,145.861)]; 
inputData = [inputData;Insect.imageFeatureVector(imread('C:\Users\Demo\Desktop\insect_photos\ulysses_butterflies\ulysses7-edit.jpg'),-18.587,138.303)]; 
inputData = [inputData;Insect.imageFeatureVector(imread('C:\Users\Demo\Desktop\insect_photos\ulysses_butterflies\ulysses8-edit.jpg'),-13.820,141.774)]; 
inputData = [inputData;Insect.imageFeatureVector(imread('C:\Users\Demo\Desktop\insect_photos\ulysses_butterflies\ulysses9-edit.jpg'),-5.510,138.742)]; %
inputData = [inputData;Insect.imageFeatureVector(imread('C:\Users\Demo\Desktop\insect_photos\ulysses_butterflies\ulysses11a-edit.jpg'),-10.037,149.597)];
inputData = [inputData;Insect.imageFeatureVector(imread('C:\Users\Demo\Desktop\insect_photos\ulysses_butterflies\ulysses11b-edit.jpg'),-25.238,153.178)];

targetData = [targetData;
              InsectType.butterfly_ulysses;
              InsectType.butterfly_ulysses;
              InsectType.butterfly_ulysses;
              InsectType.butterfly_ulysses;
              InsectType.butterfly_ulysses;
              InsectType.butterfly_ulysses;
              InsectType.butterfly_ulysses;
              InsectType.butterfly_ulysses;
              InsectType.butterfly_ulysses;
              InsectType.butterfly_ulysses;
              InsectType.butterfly_ulysses];

% Load in Eastern Hercules Beetles
inputData = [inputData;Insect.imageFeatureVector(imread('C:\Users\Demo\Desktop\insect_photos\eastern_hercules_beetle\herc1.jpg'),-7.050,-60.307)]; %
inputData = [inputData;Insect.imageFeatureVector(imread('C:\Users\Demo\Desktop\insect_photos\eastern_hercules_beetle\herc2.jpg'),-14.640,-62.592)]; %
inputData = [inputData;Insect.imageFeatureVector(imread('C:\Users\Demo\Desktop\insect_photos\eastern_hercules_beetle\herc3.jpg'),36.691,-84.543)];
inputData = [inputData;Insect.imageFeatureVector(imread('C:\Users\Demo\Desktop\insect_photos\eastern_hercules_beetle\herc4.jpg'),33.455,-89.190)]; 
inputData = [inputData;Insect.imageFeatureVector(imread('C:\Users\Demo\Desktop\insect_photos\eastern_hercules_beetle\herc5.jpg'),2.532,-53.627)];
inputData = [inputData;Insect.imageFeatureVector(imread('C:\Users\Demo\Desktop\insect_photos\eastern_hercules_beetle\herc6.jpg'),5.688,-74.194)];
inputData = [inputData;Insect.imageFeatureVector(imread('C:\Users\Demo\Desktop\insect_photos\eastern_hercules_beetle\herc7.jpg'),26.496,-105.131)];
inputData = [inputData;Insect.imageFeatureVector(imread('C:\Users\Demo\Desktop\insect_photos\eastern_hercules_beetle\herc8.jpg'),28.058,-108.999)]; %
inputData = [inputData;Insect.imageFeatureVector(imread('C:\Users\Demo\Desktop\insect_photos\eastern_hercules_beetle\herc9.jpg'),31.265,-102.319)];
inputData = [inputData;Insect.imageFeatureVector(imread('C:\Users\Demo\Desktop\insect_photos\eastern_hercules_beetle\herc10.jpg'),-8.856,-46.684)]; % 
inputData = [inputData;Insect.imageFeatureVector(imread('C:\Users\Demo\Desktop\insect_photos\eastern_hercules_beetle\herc11.jpg'),14.505,-89.926)];
inputData = [inputData;Insect.imageFeatureVector(imread('C:\Users\Demo\Desktop\insect_photos\eastern_hercules_beetle\herc12.jpg'),37.914,-84.741)];
inputData = [inputData;Insect.imageFeatureVector(imread('C:\Users\Demo\Desktop\insect_photos\eastern_hercules_beetle\herc13.jpg'),35.233,-93.178)];

targetData = [targetData;
              InsectType.eastern_hercules_beetle;
              InsectType.eastern_hercules_beetle;
              InsectType.eastern_hercules_beetle;
              InsectType.eastern_hercules_beetle;
              InsectType.eastern_hercules_beetle;
              InsectType.eastern_hercules_beetle;
              InsectType.eastern_hercules_beetle;
              InsectType.eastern_hercules_beetle;
              InsectType.eastern_hercules_beetle;
              InsectType.eastern_hercules_beetle;
              InsectType.eastern_hercules_beetle;
              InsectType.eastern_hercules_beetle;
              InsectType.eastern_hercules_beetle];

inputData = inputData';
targetData = targetData';

numHiddenNeurons = 30;
net = newpr(inputData,targetData,numHiddenNeurons);

net.divideParam.trainRatio = 50/100;
net.divideParam.valRatio = 25/100;
net.divideParam.testRatio = 25/100;

% Train and Apply Network
[net,tr] = train(net,inputData,targetData);
