f=inter_lagrange([1 2 4],[8 1 5]);

disp(poly2sym(f));

x_arr=0.3:0.1:0.9;
y_arr=log(x_arr);
 
% 0.5 0.6
x_arr_1=x_arr(3:4);
y_arr_1=y_arr(3:4);
f_1=inter_lagrange(x_arr_1,y_arr_1);
f_1_val=polyval(f_1,0.52)


% 0.5 0.6 0.7
x_arr_2=x_arr(3:5);
y_arr_2=y_arr(3:5);
f_2=inter_lagrange(x_arr_2,y_arr_2);
f_2_val=polyval(f_2,0.52)

% 0.4 0.5 0.6
x_arr_3=x_arr(2:4);
y_arr_3=y_arr(2:4);
f_3=inter_lagrange(x_arr_3,y_arr_3);
f_3_val=polyval(f_3,0.52)

% 0.4 0.5 0.6 0.7 0.8
x_arr_4=x_arr(2:6);
y_arr_4=y_arr(2:6);
f_4=inter_lagrange(x_arr_4,y_arr_4);
f_4_val=polyval(f_4,0.52)

% 0.3 0.4 0.5 0.6 0.7
x_arr_5=x_arr(1:5);
y_arr_5=y_arr(1:5);
f_5=inter_lagrange(x_arr_5,y_arr_5);
f_5_val=polyval(f_5,0.52)

