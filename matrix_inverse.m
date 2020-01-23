function [Ai] = matrix_inverse(A)
[n,n] = size(A);
B{1} = eye(n);
a_k = []; 
for k = 1:n
    a_k(k) = trace(A*B{k})/k;
    B{k+1} = - A*B{k}+(a_k(k)*B{1}); 
end
Ai = B{n}/a_k(n);