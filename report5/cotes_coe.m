%����n,k����Cotesϵ��
function coe=cotes_coe(n,k)
zero_points=0:n;
zero_points(k+1)=[];
coe=((-1)^(n-k))*int(poly2sym(poly(zero_points)),'x',0,n)/(factorial(k)*factorial(n-k)*n);
%ȥ���Ż�
coe=double(coe);
