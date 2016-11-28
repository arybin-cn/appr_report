function f=inter_neville(x_arr,y_arr)
x_arr_length=length(x_arr);
if x_arr_length~=length(y_arr) or x_arr_length<2
    disp('须提供相同的横纵坐标分量数目（且要求不少于两个点）。')
    return;
end
if x_arr_length==2
    k=(y_arr(1)-y_arr(2))/(x_arr(1)-x_arr(2));
    f=[k y_arr(1)-x_arr(1)*k];
else
    x_arr_left=x_arr;x_arr_left(x_arr_length)=[];
    y_arr_left=y_arr;y_arr_left(x_arr_length)=[];
    x_arr_right=x_arr;x_arr_right(1)=[];
    y_arr_right=y_arr;y_arr_right(1)=[];
    f=(conv([-1 x_arr(x_arr_length)],neville_inter(x_arr_left,y_arr_left))...
        +conv([1 -x_arr(1)],neville_inter(x_arr_right,y_arr_right)))...
        /(x_arr(x_arr_length)-x_arr(1));
end
