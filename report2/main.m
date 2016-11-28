%检验Runge效应
i=0;
for n=[2 4 8 16 32]
    %等距节点形式
    x_arr=linspace(-1,1,n);
    
    %切比雪夫节点形式（取消下两行代码的注释后程序将改用切比雪夫点）
    %x_arr=double(solve(['cos(' num2str(n) '*acos(x))=0'],'x')');
    %x_arr=sort(x_arr);
    
    y_arr=double(subs(sym('1/(1+25*x^2)'),x_arr));
    
    %实际画图用的函数点
    x_arr_inter=-1:0.001:1;
    
    %以下分别做子图以便对比
    i=i+1;
    subplot(5,4,i);
    %标准函数
    plot(x_arr_inter,subs(sym('1/(1+25*x^2)'),x_arr_inter),'blue','LineWidth',2);
    hold on;
    %普通插值
    plot(x_arr_inter,polyval(inter_lagrange(x_arr,y_arr),x_arr_inter),'red','LineWidth',2);
    hold on;
    
    i=i+1;
    subplot(5,4,i);
    %标准函数
    plot(x_arr_inter,subs(sym('1/(1+25*x^2)'),x_arr_inter),'blue','LineWidth',2);
    hold on;
    %分段线性插值
    plot(x_arr_inter,interp1(x_arr,y_arr,x_arr_inter,'linear'),'red','LineWidth',2);
    hold on;
    
    i=i+1;
    subplot(5,4,i);
    %标准函数
    plot(x_arr_inter,subs(sym('1/(1+25*x^2)'),x_arr_inter),'blue','LineWidth',2);
    hold on;
    %三次Hermite插值
    plot(x_arr_inter,pchip(x_arr,y_arr,x_arr_inter),'red','LineWidth',2);
    hold on;
    
    i=i+1;
    subplot(5,4,i);
    %标准函数
    plot(x_arr_inter,subs(sym('1/(1+25*x^2)'),x_arr_inter),'blue','LineWidth',2);
    hold on;
    %三次样条插值
    plot(x_arr_inter,interp1(x_arr,y_arr,x_arr_inter,'spline'),'red','LineWidth',2);
    hold on;
end

