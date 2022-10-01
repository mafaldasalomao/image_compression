% pkg load image
close all; clear

%% arquivo de imagem referencia
filename_img_ref = 'lena_gray_512.tif';
img_ref =  imread (filename_img_ref);

bpp     =[];
my_psnr =[];

for param1 = 0.01:0.1:1 % bpp
  filename_img_comp = 'lena_gray_512.wtc';
  
  wcompress('c',filename_img_ref,filename_img_comp,'spiht','bpp',param1)

  img_compress = wcompress('u',filename_img_comp);
  
  figure; imshow(img_compress,[]); title(['param1 = ' num2str(param1)])

  Cr =imratio(filename_img_ref,filename_img_comp);

  bpp     = [8/Cr bpp];
  my_psnr = [psnr(uint8(img_compress), img_ref) my_psnr];
end

figure; plot(bpp,my_psnr,'^-r');
ylabel('PSNR'); xlabel('bpp');
title('compressao SPIHT');


