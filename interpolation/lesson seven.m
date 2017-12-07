%A=polyfit(X,y,m)//מה הפונקציה מקבלת
%A=[am,....,a0]//מה הפונקציה מחזירה
%polyval(A,x)
for i=1:n-1
    A=polyfit(x,y,i);
    p=polyval(A,x);
    pr=[pr;p];
    if all(p-y+L>=0)&&all(p-y-U<=0)
        disp(['m='num2str(i)])
        break
    end
    
