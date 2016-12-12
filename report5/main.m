func_arr={'exp(x^2)' '(1-cos(x))/(x+1)' 'sqrt(1-x^2)' 'exp(-t)/(1+t^2)'};
b_arr=[1 pi 1 2];
h_arr=[1/10 pi/9 1/5 1/5];

len=length(func_arr);
for i=1:len
  disp(['>>> ' char(func_arr(i))]);
  disp(['梯形公式         ' num2str(cotes_quad(1,func_arr(i),0,b_arr(i)))]);
  disp(['复化梯形公式     ' num2str(compound_cotes_quad(h_arr(i),1,func_arr(i),0,b_arr(i)))]);
  disp(['Simpson公式      ' num2str(cotes_quad(2,func_arr(i),0,b_arr(i)))]);
  disp(['复化Simpson公式  ' num2str(compound_cotes_quad(h_arr(i),2,func_arr(i),0,b_arr(i)))]);
  disp(['Cotes公式        ' num2str(cotes_quad(4,func_arr(i),0,b_arr(i)))]);
  disp(['复化Cotes公式    ' num2str(compound_cotes_quad(h_arr(i),4,func_arr(i),0,b_arr(i)))]);
end
