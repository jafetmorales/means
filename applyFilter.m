% HOMEWORK 4: IMPLEMENTATION OF ARITHMETIC MEAN, GEOMETRIC MEAN, HARMONIC
% MEAN, AND MAX AND MIN FILTERS
% JAFET MORALES

close all;
clear all;
clc;

img=imread('butter.tif');
N=size(img,1);

% GAUSSIAN NOISE
std=20;
noise=std*randn(size(img));
imgNoised=double(uint8(double(img)+noise));

figure(1);imshow(img,[0 255]);
figure(2);imshow(uint8(imgNoised),[0 255]);



% MUST BE ODD
L=5;
P=(L-1)/2;
imgNoisedDummy=imgNoised;
imgNoisedDummy(N+2*P,N+2*P)=0;
imgNoisedDummy=circshift(imgNoisedDummy,[P,P]);

% ARITHMETIC MEAN
kernel=meanFilter(L);
imgA=zeros(N,N);
for y=1:N
    for x=1:N
        invKernel=kernel(L:-1:1,L:-1:1);
        target=imgNoisedDummy(y:(y+2*P),x:(x+2*P));
        imgA(y,x)=sum(sum(target.*invKernel));
    end
end

figure(1);imshow(uint8(img),[0 255]);
figure(2);imshow(uint8(imgNoised),[0 255]);
figure(3);imshow(uint8(imgA),[0 255]);

