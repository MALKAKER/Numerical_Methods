%קירוב לגרנג
clear
%clf
X_ma=0:pi/5:2*pi;
Y_ma=sin(X_ma);
x_ma=-pi:pi/60:3*pi;
P_ma=0;

for i =1:length(X_ma)
    La_ma=ones(1,length(x_ma));
    Lb_ma=1;
    for k = 1:length(X_ma)
        if k~=i
            La_ma=La_ma.*(x_ma-X_ma(k));
            Lb_ma=Lb_ma*(X_ma(i)-X_ma(k));
        end
    end
    P_ma=P_ma+Y_ma(i)*La_ma/Lb_ma;
    %disp(P_ma)
end
figure(1)
clf
hold on
plot(X_ma,Y_ma,'ro','markersize',10)
%disp(P_ma)
plot(x_ma,P_ma,'b','linewidth',2)
hold off