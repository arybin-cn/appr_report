function f_sum=polyadd(f1,f2)
f1_len=length(f1);f2_len=length(f2);
max_len=f1_len;
if f2_len>max_len
    max_len=f2_len;
end
f_sum=zeros(1,max_len);
for i=1:f1_len
    f_sum(max_len-i+1)=f_sum(max_len-i+1)+f1(f1_len-i+1);
end
for i=1:f2_len
    f_sum(max_len-i+1)=f_sum(max_len-i+1)+f2(f2_len-i+1);
end 
end