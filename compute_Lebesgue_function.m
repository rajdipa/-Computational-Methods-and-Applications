function [lambda,L]=compute_Lebesgue_function(xi,x)
n= size(xi,2);
m = size(x,2);
lambda = [];
ll = [];
L= NaN; 
for k = 1:m
    t = [];
    for i = 1:n
        li = 1;
        for j = 1:n
            if (j~= i)
                li = li * ((x(k)-xi(j))/(xi(i)-xi(j)));
            end
        end
      t = [t;li];
    end
    f = 0;
       for o = 1:n
      f = f+abs( t(o)) ;
       end
   lambda = [lambda;f];
end

for q = 1:m
    if (x(q) <= 1 && x(q) >= -1  )
        ll = [ll;lambda(q)];
    end
end
L = max(ll);
        
    
    



