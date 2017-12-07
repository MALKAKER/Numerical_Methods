% van der pol ode
clear
% limits
span=[0 100];
% parameter
% IF MU<1 there is no stiff problems
% if mu>1 there is stif problems and need to solve by 23s
mu=0.1;
% the level of the function 0=y',1=y"
y0=[0;1];
% when you dont have sttif cases the 45 is better its very cheap and right
% define abs and rel in order to cover high level function and low level function
% ode function calculate delta until the accurancy  is less then both of
% them
otp=odeset('AbsTol',1e-1,'RelTol',1e-6);
%[T,Y]=ode45(@(t,y)VanDerPol(t,y,mu),span,y0,otp);
% in sttif problem use 23s becauase the delta t is very small
[T,Y]=ode23s(@(t,y)VanDerPol(t,y,mu),span,y0,otp);
% the analisys of the functions in plot
figure(1)
clf
subplot(2,2,1)
plot(T,Y(:,1))
title('Subplot 1: t->y')
subplot(2,2,3)
plot(T,Y(:,2))
title('Subplot 2: t->dy/dt')
subplot(2,2,[2 4])
plot(Y(:,1),Y(:,2))
axis square
title('Subplot 3: y->dy/dt')