function [I]=int_Simpson_rule(fun,a,b,n)
format long;
h = (b-a)/(n-1);
x_j = [];
for j = 1:n
    x_j(j) = a+((j-1)*h);
end
sum = 0;
for i = 2:n
    x_k = (x_j(i)+x_j(i-1))/2;
    sum_app = fun(x_j(i-1))+4*fun(x_k)+fun(x_j(i));
    sum  = sum+sum_app;
end
I = (h/6)*sum;
