function [y] = Lagrange_interpolation(xi,yi,x)
n= size(xi,2); 
m = size(x,2);
y = [];
%we are using triple for loop. The outer forloop is to evaluate the at all
%the points of x. 
for k = 1:m
    l = [];
    if (size(xi,2)~=size(yi,2))
        fprintf(1,'\nERROR!\n xi and yi must have the same number of elements\n');
        break;
    end
    for i = 1:n %this it to calculate li
        li = 1;
        for j = 1:n 
            if (j~= i)
                li = li * ((x(k)-xi(j))/(xi(i)-xi(j)));
            end
        end
         l = [l;li];
    end
    f = 0;
       for o = 1:n
      f = f+(yi(o)* l(o)) ;
       end
   y = [y;f];
end
     
            
            
