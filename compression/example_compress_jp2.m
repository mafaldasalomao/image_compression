% pkg load image
close all; clear

%% arquivo de imagem referencia
filename_img_ref = 'lena_gray_512.tif';
img_ref =  imread (filename_img_ref);

bpp     =[];
my_psnr =[];

for param1 = 2:5:150 % CompressionRatio
  filename_img_comp = 'lena_gray_512.jp2';
  imwrite(img_ref, filename_img_comp,'CompressionRatio', param1);

  img_compress = imread(filename_img_comp);
  figure; imshow(img_compress,[]); title(['CompressionRatio = ' num2str(param1)])

  Cr =imratio(filename_img_ref,filename_img_comp);

  bpp     = [8/Cr bpp];
  my_psnr = [psnr(img_ref,uint8(img_compress)) my_psnr];
end

figure; plot(bpp,my_psnr,'^-r');
ylabel('PSNR'); xlabel('bpp');
title('compressao JPG2000');
grid on

