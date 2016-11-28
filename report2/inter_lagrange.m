function f=inter_lagrange(x_arr,y_arr)
f=[];
x_arr_len=length(x_arr);
if x_arr_len~=length(y_arr)
    disp('array x/y must have the same size');
    return;
end
for i=1:x_arr_len
    tmp_x_arr=x_arr;
    tmp_x_arr(i)=[];
    tmp_f=poly(tmp_x_arr);
    f=polyadd(f,tmp_f*y_arr(i)/polyval(tmp_f,x_arr(i)));
end
end