function [x] = backward_sub(U,b)
[n,m] = size(U);
x = [];
x(n) = b(n)/U(n,n);
%x(n-1) = (b(n-1)-(U(n-1,n)*x(n)))/(U(n-1,n-1));
for i = n-1:-1:1
    S= 0;
    for j = i+1:1:n
        S = S+U(i,j)*x(j);
    end
    x(i) = (b(i)-S)/(U(i,i));
end
x = x';
end
    