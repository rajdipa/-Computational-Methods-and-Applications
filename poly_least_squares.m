function [a,err] = poly_least_squares(xi,yi,M)
n = length(yi);
B = [ones(n,1), xi];
if M >= 2
for i=2:M
B = [B, (xi.^i)];
end
end
a =(B'*B)\B'*yi;
err = 0;
for i=1:n
err = err + ((B(i,:)*a) - yi(i)).^2;
end


end
