%% comparar utilizando 
close all; clear; clc

f1 =  imread ('lena_gray_512.tif');

f2 =  imread ('lena_gray_512.jpg');

imshow([f1 f2])

sum(sum(abs(f1-f2)))

compare(f1,f2)

psnr(f1,f2)



