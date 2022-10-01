%% Entropy
% Entropy of grayscale image
% pkg load image
close all; clear
%% imagem de test 
img = imread('lena_gray_512.tif');
figure; imshow(img,[])
figure; imhist(img)
 
I = entropy(img)

%% imagem de test 
img = imread('Fig0801(a).tif');
figure; imshow(img,[])
figure; imhist(img)
 
I = entropy(img)

%% imagem de test 
img = imread('Fig0801(b).tif');
figure; imshow(img,[])
figure; imhist(img)
 
I = entropy(img)

%% imagem de test 
img = imread('Fig0801(c).tif');
figure; imshow(img,[])
figure; imhist(img)
 
I = entropy(img)

%% imagem de test 
img = zeros(512,512);
figure; imshow(img,[])
figure; imhist(img)

I = entropy(img)

img = ones(512,512);
 
figure; imshow(img,[])
figure; imhist(img)

I = entropy(img)