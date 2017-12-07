function [ dydt ] = VanDerPol( t, y, mu )
%VanDerPel 
dydt=[y(2);
    mu*y(2)*(1-(y(1).^2))-y(1)];
end

