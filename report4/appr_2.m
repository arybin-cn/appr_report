%X,Y�ֱ�Ϊ���ݵ�,nָ����ߴ���
%˫��Ԫ�����
function A=appr_2(X,Y,n)
%���õ�λ����(����ʽ)����������
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
