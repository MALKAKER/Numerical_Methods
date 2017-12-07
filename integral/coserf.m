function [ y ] = coserf( x,a )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
y=integral(@(t)Erf_ma(t,a),x,inf)-cos(x);

end

