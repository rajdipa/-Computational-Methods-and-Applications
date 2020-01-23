function [I]=int_midpoint_rule(fun,a,b,n)
format long;
h = (b-a)/(n-1);
x_j = [];
for j = 1:n
    x_j(j) = a+((j-1)*h);
end
I = 0;
for i = 2:n
    x_k = (x_j(i)+x_j(i-1))/2;
    I = I +h*fun(x_k);
end
end


    

