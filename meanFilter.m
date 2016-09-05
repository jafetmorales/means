% Performs arithmetic mean filtering

function [imgFilt]=meanFilter(img,L)

N=size(img,1);
P=(L-1)/2;
img=padImg(img,P);
% ARITHMETIC MEAN
kernel=1/L^2*ones(L,L);
invKernel=kernel(L:-1:1,L:-1:1);
imgFilt=zeros(N,N);
for y=1:N
    for x=1:N
        target=img(y:(y+2*P),x:(x+2*P));
        imgFilt(y,x)=sum(sum(target.*invKernel));
    end
end

