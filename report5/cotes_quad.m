%����Newton-Cotes��ʽ������ֵ����
%n - ��ѡ��ֵ����ʽ����(nȡ1,2,4�ֱ��Ӧ���ι�ʽ,Simpson��ʽ,Cotes��ʽ)
%func - �Ա���Ϊx�ı�������(�ַ�����ʾ)
%a,b - ������,����
function quadra=cotes_quad(n,func,a,b)
quadra=0;
x_arr=linspace(a,b,n+1);
for k=0:n
  quadra=quadra+cotes_coe(n,k)*subs(char(func),x_arr(k+1));
end
quadra=quadra*(b-a);
