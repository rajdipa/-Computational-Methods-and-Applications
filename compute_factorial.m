function b = compute_factorial(n)
if n == floor(n) && n == 0 % if we enter zero
b = 1;
elseif n == floor(n) && n > 0 %if we enter a natural number greater than zero
b = 1;
for i = 1:n
b = b * i;
end
else % only natural number will be taken
fprintf('Please enter a natural number\n');
end
end

        
            
  