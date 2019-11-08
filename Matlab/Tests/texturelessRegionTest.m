%addpath 'D:\Dev\Windows Linux\DenseCorrespondences\CPP\mexFindTexturelessRegions\x64\Debug'
addpath '/home/cel/PERL/Algorithms/DenseCorrespondences/CPP/mexFindTexturelessRegions/x64/Release'

%% Load images

img=imread('/home/cel/PERL/Algorithms/cnn-registration/img/bbb_left.jpg');

sImg = im2single(img);
if size(sImg, 3) == 3
    sImg = rgb2gray(sImg);
end

%% Process
winSize = 21;
t = 4;
out = findTexturelessRegions2(sImg, winSize, t/255);
%out = mexFindTexturelessRegions2(sImg, winSize, t);

%% Show results
figure;imshow(img);
figure;imshow(out*255);