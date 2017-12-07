%find zero points
%
a=0:0.1:5;
%runs over a
x0=0;
x=[];
opt=optimset('TolFun',10e-5,'TolX',10e-4);
for i=1:length(a)
    x(i)=fzero(@(x)funct(x,a(i)),x0);
end
X=0:pi/30:2*pi;

for i=1:length(a)
    figure(i)
    clf
    hold on
    Y=funct(X,a(i));
    y=funct(x(i),a(i));
    plot(X,Y,'b')
    plot(x(i),y,'r*')
    hold off
end


