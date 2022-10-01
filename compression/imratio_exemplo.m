% pkg load image
close all; clear;clc

%% mesmo arquivo de imagem
f1 =  imread ('lena_gray_512.tif');
cr =imratio ( f1 , 'lena_gray_512.tif')
 
%% imagem normal e com compressao
f2 = 'lena_gray_512.jpg';
imwrite(f1, f2,'Quality', 75);
 
cr =imratio ( f1 , f2)  % utilizando matriz e arquivo

figure; imshow(f1)

f2 = imread(f2);

figure; imshow(f2)

figure; imshow([f1 f2])




 
 
  

 
