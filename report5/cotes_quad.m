%根据Newton-Cotes公式计算数值积分
%n - 所选插值多项式次数(n取1,2,4分别对应梯形公式,Simpson公式,Cotes公式)
%func - 自变量为x的被积函数(字符串表示)
%a,b - 积分下,上限
function quadra=cotes_quad(n,func,a,b)
quadra=0;
x_arr=linspace(a,b,n+1);
for k=0:n
  quadra=quadra+cotes_coe(n,k)*subs(char(func),x_arr(k+1));
end
quadra=quadra*(b-a);
