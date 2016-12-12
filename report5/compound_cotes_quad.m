%根据复化Newton-Cotes公式计算数值积分
%h - 所划分小区间的长度(步长)
%n - 所选插值多项式次数(n取1,2,4分别对应梯形公式,Simpson公式,Cotes公式)
%func - 自变量为x的被积函数(字符串表示)
%a,b - 积分下,上限
function quadra=compound_cotes_quad(h,n,func,a,b)
quadra=0;
for xk=a:h:b-h
  quadra=quadra+cotes_quad(n,func,xk,xk+h);
end
