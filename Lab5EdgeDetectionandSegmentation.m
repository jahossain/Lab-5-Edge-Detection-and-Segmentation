%% Lab 5: Edge Detection and Segmentation
close all; clear; clc;

%% Load grayscale image
I = im2double(rgb2gray(imread('peppers.png')));

%% 1) Basic derivative filters (Sobel, Prewitt)
edges_sobel  = edge(I, 'Sobel');
edges_prewitt = edge(I, 'Prewitt');

figure;
montage({edges_sobel, edges_prewitt}, 'Size', [1 2]);
title('Sobel | Prewitt edges');

%% 2) Canny detector (multi-stage)
edges_canny = edge(I, 'Canny', [0.05 0.2]);

figure;
imshow(edges_canny); 
title('Canny edges');

%% 3) Laplacian of Gaussian (LoG)
edges_log = edge(I, 'log');

figure;
imshow(edges_log); 
title('Laplacian of Gaussian edges');

%% 4) Segmentation using Otsu thresholding
level = graythresh(I);        % automatic threshold (Otsu)
BW = imbinarize(I, level);    % binary mask

figure;
montage({I, BW}, 'Size', [1 2]);
title('Original | Otsu threshold binary mask');

%% 5) Region labeling + visualization
[L, num] = bwlabel(BW);       % label connected regions
RGB = label2rgb(L);           % convert to colored labels

figure;
imshow(RGB);
title(['Labeled regions: ', num2str(num)]);

%% 6) Reflections (write in GitHub)
% - Canny gives the thinnest and cleanest edges.
% - Canny outperforms Sobel/Prewitt because it smooths, uses gradients,
%   applies non-max suppression, and double thresholds.
% - Otsu's method selects a threshold based on maximizing between-class variance.
