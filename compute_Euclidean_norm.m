function [z] = compute_Euclidean_norm(x)
s = 0.0;
for ii = 1:length(x)
    s = s+ x(ii).^2; %squaring and summing 
end
z = sqrt(s); % taking the sqroot of the sum
end
