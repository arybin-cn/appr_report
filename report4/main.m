clc;

%EX4
X=1:12;
X_check=1:0.001:12;
Y=[256 201 159 61 77 40 17 25 103 156 222 345];
plot(X,Y,'*','Color','black');hold on;

%基函数取为:1,x,x^2
p=appr_2(X,Y,2)
plot(X_check,polyval(p,X_check),'LineWidth',2,'Color','blue');hold on;

%基函数取为:1,x,x^2,x^3
p=appr_2(X,Y,3)
plot(X_check,polyval(p,X_check),'LineWidth',2,'Color','red');hold on;

%基函数取为:1,x,x^2,x^3,x^4
p=appr_2(X,Y,4)
plot(X_check,polyval(p,X_check),'LineWidth',2,'Color','green');hold on;

%基函数取为:1,x,x^2,x^3,x^4,...x^10
p=appr_2(X,Y,10)
plot(X_check,polyval(p,X_check),'LineWidth',2,'Color','yellow');hold on;

%基函数取为:1,x,...,x^32
figure;
p=appr_2(X,Y,32)
plot(X_check,polyval(p,X_check),'LineWidth',2,'Color','red');



%EX5
A=[39  567 10000 2  0.2;
   37  679     0 3 0.15;
   30  346  5000 3 0.10;
   25  987  5000 3 0.08;
   25 1101     0 4 0.07;
   10 1004  5000 5 0.07;
   15  667     0 4 0.05;
    5  604 10000 6 0.04;]
Y=[75 68 105 136 152 191 148 234]';
a=(A'*A)\(A'*Y)

