%% hw4
%  

%% hw4-1
%
clc; clear; close all;
test1 = imread('.\pic\test1.pgm');
test2 = imread('.\pic\test2.tif');
test3 = imread('.\pic\test3_corrupt.pgm');
test4 = imread('.\pic\test4 copy.bmp');

figure(1);
subplot(241); imshow(test1); title('\fontsize{24}test1 origin')
subplot(242); imshow(Median(test1, 3), [0,255]); title('\fontsize{24}test1 Median 3x3')
subplot(243); imshow(Median(test1, 5), [0,255]); title('\fontsize{24}test1 Median 5x5')
subplot(244); imshow(Median(test1, 7), [0,255]); title('\fontsize{24}test1 Median 7x7')
subplot(245); imshow(test2); title('\fontsize{24}test2 origin')
subplot(246); imshow(Median(test2, 3), [0,255]); title('\fontsize{24}test2 Median 3x3')
subplot(247); imshow(Median(test2, 5), [0,255]); title('\fontsize{24}test2 Median 5x5')
subplot(248); imshow(Median(test2, 7), [0,255]); title('\fontsize{24}test2 Median 7x7')

%% hw4-2
%
figure(2);
subplot(241); imshow(test1); title('\fontsize{24}test1 origin')
subplot(242); imshow(Gaussian(test1, 3), [0,255]); title('\fontsize{24}test1 Gaussian 3x3')
subplot(243); imshow(Gaussian(test1, 5), [0,255]); title('\fontsize{24}test1 Gaussian 5x5')
subplot(244); imshow(Gaussian(test1, 7), [0,255]); title('\fontsize{24}test1 Gaussian 7x7')
subplot(245); imshow(test2); title('\fontsize{24}test2 origin')
subplot(246); imshow(Gaussian(test2, 3), [0,255]); title('\fontsize{24}test2 Gaussian 3x3')
subplot(247); imshow(Gaussian(test2, 5), [0,255]); title('\fontsize{24}test2 Gaussian 5x5')
subplot(248); imshow(Gaussian(test2, 7), [0,255]); title('\fontsize{24}test2 Gaussian 7x7')

%% hw4-3
%
figure(3);
subplot(251); imshow(test3); title('\fontsize{24}test3 origin')
subplot(252); imshow(Unsharp(test3), [0,255]); title('\fontsize{24}test3 Unsharp')
subplot(253); imshow(Sobel(test3), [0,255]); title('\fontsize{24}test3 Sobel')
subplot(254); imshow(Laplace(test3), [0,255]); title('\fontsize{24}test3 Laplace')
subplot(255); imshow(Canny(test3)); title('\fontsize{24}test3 Canny')
subplot(256); imshow(test4, [0,255]); title('\fontsize{24}test4 origin')
subplot(257); imshow(Unsharp(test4), [0,255]); title('\fontsize{24}test4 Unsharp')
subplot(258); imshow(Sobel(test4), [0,255]); title('\fontsize{24}test4 Sobel')
subplot(259); imshow(Laplace(test4), [0,255]); title('\fontsize{24}test4 Laplace')
subplot(2,5,10); imshow(Canny(test4)); title('\fontsize{24}test4 Canny')

%% Helper functions
%

% Helper function
function image_C=Conv(image, maskSize, Filter)
    [image_M, image_N] = size(image);
    image_extend = wextend('2D','zpd',image,floor(maskSize/2));
    image_C = zeros([image_M, image_N]);
    for i = 1:maskSize
        for j = 1:maskSize
            image_C = image_C + double(image_extend(i:(image_M + i - 1), j:(image_N + j - 1))) * Filter(i, j);
        end
    end
end

% Median Filter by maskSize
function image_M = Median(image, maskSize)
    MFM = ones(maskSize) / maskSize^2;
    image_M = Conv(image, maskSize, MFM);
end

% Gaussian Filter by maskSize
function image_G=Gaussian(image, maskSize)
    GFM = zeros(maskSize);
    sigma = 1.5;
    for i = 1:maskSize
        for j = 1:maskSize
            x = i - floor(maskSize/2) - 1;
            y = j - floor(maskSize/2) - 1;
            GFM(i,j) = exp(-(x^2+y^2)/(2*sigma^2))/(2*pi*sigma^2);
        end
    end
    GFM = GFM / sum(sum(GFM));
    image_G = Conv(image, maskSize, GFM);
end

% Unsharp Filter by maskSize
function image_U = Unsharp(image)
    image_blur = Gaussian(image, 3);
    image_unsharp_mask = double(image) - image_blur;
    image_sharpened = double(image) + image_unsharp_mask;
    image_U = image_sharpened;
end

% Sobel Filter by maskSize
function image_S = Sobel(image)
    SFMx = [1,0,-1;2,0,-2;1,0,-1];
    SFMy = [1,2,1;0,0,0;-1,-2,-1];
    image_Sx = Conv(image, 3, SFMx);
    image_Sy = Conv(image, 3, SFMy);
    image_S = abs(image_Sx) + abs(image_Sy);
end

% Laplace Filter by maskSize
function image_L = Laplace(image)
    LFM = [1,1,1;1,-8,1;1,1,1];
    image_L = Conv(image, 3, LFM);
end

% Canny Filter by maskSize
function image_C = Canny(image)
    image_C = edge(image, 'canny');
end

