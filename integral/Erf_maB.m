function [y] = Erf_ma(t,a)
%Erf_ma calculates erf
y=1/sqrt(a*pi)*exp(-a*(t.^2));
end

