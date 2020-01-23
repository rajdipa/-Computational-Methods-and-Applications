function [y] = matrix_times_vector(A,x)
y = []; %initializing y
for i = 1:size(A) %outer loop
    s = 0; %initializing the sum
    for j = 1:size(A) %inner loop
        s = s + (A(i,j) * x(j)); %calculating each element of the product matrix 
    end
 y = [y;s]; %entering the calculated element on the product column matrix
end
end
    
