%���ݸ���Newton-Cotes��ʽ������ֵ����
%h - ������С����ĳ���(����)
%n - ��ѡ��ֵ����ʽ����(nȡ1,2,4�ֱ��Ӧ���ι�ʽ,Simpson��ʽ,Cotes��ʽ)
%func - �Ա���Ϊx�ı�������(�ַ�����ʾ)
%a,b - ������,����
function quadra=compound_cotes_quad(h,n,func,a,b)
quadra=0;
for xk=a:h:b-h
  quadra=quadra+cotes_quad(n,func,xk,xk+h);
end
