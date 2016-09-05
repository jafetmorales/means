%This file shows examples of how you can apply each of the mean filters

close all;
clear all;
clc;

img=imread('butter.tif');
N=size(img,1);

% GAUSSIAN NOISE
std=20;
noise=std*randn(size(img));
imgNoised=double(uint8(double(img)+noise));

% MUST BE ODD
L=5;
% ARITHMETIC MEAN
imgA=meanFilter(imgNoised,L);

%% GEOMETRIC MEAN
%kernel=ones(L,L);
%imgG=zeros(N,N);
%for y=1:N
%    for x=1:N
%        invKernel=kernel(L:-1:1,L:-1:1);
%        target=imgNoisedDummy(y:(y+2*P),x:(x+2*P));
%        imgG(y,x)=(prod(prod(target.*invKernel)))^(1/L^2);
%    end
%end
%% HARMONIC MEAN
%kernel=(1/L^2).*ones(L,L);
%imgH=zeros(N,N);
%for y=1:N
%    for x=1:N
%        invKernel=kernel(L:-1:1,L:-1:1);
%        target=imgNoisedDummy(y:(y+2*P),x:(x+2*P));
%        imgH(y,x)=1/sum(sum(invKernel./target));
%    end
%end
%% MIN FILTER
%kernel=ones(L,L);
%imgMin=zeros(N,N);
%for y=1:N
%    for x=1:N
%        invKernel=kernel(L:-1:1,L:-1:1);
%        target=imgNoisedDummy(y:(y+2*P),x:(x+2*P));
%        imgMin(y,x)=min(min(invKernel.*target));
%    end
%end
%% MAX FILTER
%kernel=ones(L,L);
%imgMax=zeros(N,N);
%for y=1:N
%    for x=1:N
%        invKernel=kernel(L:-1:1,L:-1:1);
%        target=imgNoisedDummy(y:(y+2*P),x:(x+2*P));
%        imgMax(y,x)=max(max(invKernel.*target));
%    end
%end

figure(1);imshow(uint8(imgA),[0 255]);
%figure(2);imshow(uint8(imgG),[0 255]);
%figure(3);imshow(uint8(imgH),[0 255]);
%figure(4);imshow(uint8(imgMin),[0 255]);
%figure(5);imshow(uint8(imgMax),[0 255]);

