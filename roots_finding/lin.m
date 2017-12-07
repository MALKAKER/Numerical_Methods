
A=[2 1 -1;
    1 -1 2;
    1 1 0];
b=[3;0;2];

%kremer method
[t,col_len]=size(A);
clear t

x=[]
for i=1:col_len
    tmp=A;
    tmp(:,i)=b;
    x=[x,det(tmp)/det(A)];
end
x=[1:col_len;x];
disp(x)

%inverse matrix
x1=inv(A)*b;
disp(x1);

%lu factorization

[L,U,P]=lu(A);
y=L\(P*b);
x2=U\y;
disp(x2)