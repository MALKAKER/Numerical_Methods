%interpulation with error bar data

clear
%x range from experiance
x=0:pi/5:2*pi;
%y range from experiance
y=sin(x);
%low error bar 
L=0.7*rand(1,length(x));
%upper error bar 
U=0.9*rand(1,length(x));
%teating range
X=min(x):(max(x)-min(x))/30:max(x);
%values for each power
pr=[];
%definitly that interpulation runs from 0 to the size of (x range) minus 1
for i=1:(length(x)-1)
    %gets parameters to a current power level
    A=polyfit(x,y,i);
    %calculates the polinom value for the x range according to the parameters above
    p=polyval(A,x);
    %calculates the polinom value for the X(arbitrary values) range according to the parameters above
    pt=polyval(A,X);
    %keeps the values in the determined range for each power 
    pr=[pr;pt];
    %checks if the upcoming values are contained in the err-bar if not ,
    %continue to the next power
    if all(p-y+L>=0)&&all(p-y-U<=0)
        disp(['m=',num2str(i)])
        break
    end
    
end
%============================================
%ploting
%============================================
figure(1)
clf
[nm,tmp]=size(pr);
for i=1:nm
    clf
    errorbar(x,y,L,U,'rx');
    hold on
    plot(X,pr(i,:),'b','LineWidth',3)
    %disp(num2str(i))
    pause(0.5)
    hold off
end




%A=polyfit(X,y,m)//מה הפונקציה מקבלת
%A=[am,....,a0]//מה הפונקציה מחזירה
%polyval(A,x)