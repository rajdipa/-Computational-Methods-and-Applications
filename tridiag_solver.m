function x = tridiag_solver(e,a,c,b)
D = diag(a);
for i = 1:length(e)
    D(i+1,i) = e(i);
end
for i = 1:length(c)
    D(i,i+1) = c(i);
end

A =D;


N=size(A,1);
p=1:N;

for ii=1:N-1

% Pivoting step
  [m,idx]=max(abs(A(ii:N,ii)));
  tmp  = A(ii,:);
  tmp_p = p(ii);
 
  A(ii,:)      = A(idx+ii-1,:);
  p(ii)        = p(idx+ii-1);
  
  A(idx+ii-1,:)=tmp;
  p(idx+ii-1)=tmp_p;
  
% Elimination step
   for jj=ii+1:N
       
       l = A(jj,ii)/A(ii,ii);
       A(jj,ii:end)= A(jj,ii:end)- ... 
                A(ii,ii:end)*l;
            A(jj,ii)=l;
   end
  
end
U=triu(A); %till here I used the Prof's code for LU.m
alpha  = diag(U);
n = length(a);
y = [];
x = [];
y(1) = b(1);
for i =2:n
    beta(i) = e(i-1)/alpha(i-1);
end
for j = 2:n 
    y(j) = b(j) - (beta(j)*y(j-1));
end
x(n) = y(n)/alpha(n);
for k = n-1:-1:1
    x(k) = (y(k)-(c(k)*x(k+1)))/alpha(k);
end
x = x';
end
    