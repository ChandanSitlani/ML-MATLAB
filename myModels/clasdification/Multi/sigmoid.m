function [sigmoid] = sigmoid(Z)
%SIGMOID Summary of this function goes here
%   Detailed explanation goes here
[m,n]=size(Z);
sigmoid=zeros(m,1);
sigmoid=1./(1+exp(-Z));
end

