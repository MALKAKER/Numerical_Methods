%---------------------------
%~~~~~~~~~~~~~~~~~~~~~~~~~~~
%         6/6/17
%        integrals
%~~~~~~~~~~~~~~~~~~~~~~~~~~~
%---------------------------
clear
%limit range
x=0:0.66666:20;
%keeps the specific integral
I=[];
%check the intgral for increasing left limit
for i=1:length(x)
    I(i)= integral(@(t)Erf_ma(t),x(i),inf);
end
clf
%drawing the dot plot of the different integral values
%indicates about the trendline of the integral in the different limits
figure(1)
hold on
plot(x,I,'g-')
plot(x,I,'r*')
hold off

%integral/quad
