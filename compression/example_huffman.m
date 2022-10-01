close all; clc; clear
%pkg load communications 

%% codigo Huffman
symbols = 1:256; 
p = [.25 .125 .125 .125 .0625 .0625 ones(1,250)*0.001];

%Create a Huffman dictionary based on the symbols and their probabilities.

dict = huffmandict(symbols,p);

%Generate a vector of random symbols.

inputSig = randsrc(65536,1,[symbols;p]);

%Encode the random symbols.

code = huffmanenco(inputSig,dict);

%Decode the data. Verify that the decoded symbols match the original symbols.

sig = huffmandeco(code,dict);

isequal(inputSig,sig)