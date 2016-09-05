%Pads an image by P pixels on each side
function [img]=padImg(img,P)

N=size(img,1);
img(N+2*P,N+2*P)=0;
img=circshift(img,[P,P]);
