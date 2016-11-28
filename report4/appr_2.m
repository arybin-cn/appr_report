%X,Y分别为数据点,n指定最高次数
%双变元简单拟合
function A=appr_2(X,Y,n)
%利用单位阵构造(多项式)基函数矩阵
P=eye(n+1);
K=[]; H=[];
for i=1:n+1
  for j=1:n+1
    K(i,n+1-j+1)=dot(...
    polyval(P(n+1-i+1,:),X),...
    polyval(P(n+1-j+1,:),X));
  end
 H(i,1)=dot(...
 polyval(P(n+1-i+1,:),X),Y);
end
A=K\H;
