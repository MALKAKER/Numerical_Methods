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
    I(i)= integral(@(t)Erf_ma(t,1),x(i),inf);
end
clf
%drawing the dot plot of the different integral values
%indicates about the trendline of the integral in the different limits


%new function
%find zero points
%
%runs over a
x0=0;
%
h=fzero(@(t)coserf(t,1),x0);
disp('integral=')
disp(h)
figure(2)
hold on
plot(x,I,'g',x,cos(x),'r')
hold off

%========================
a=1:0.1:5;
v=[];
for j=1:length(a)
    v(j)=fzero(@(t)coserf(t,a(j)),x0);
end
figure(3)
clf
hold on
plot(a,v,'g')
hold off