function [z0,iter,res,his] = chordmethod(fun,a,b,tol,Nmax)
format long;
x1 = a;
x2=b;
z0 = x1;
iter = 1;
x0 = (a+b)/2;
his(iter) = x0;
res_tol= 1;
while abs(res_tol) >= tol % until the tolerance has been met
    xn = his(iter) -(fun(his(iter))*((x2 - x1)/(fun(x2) - fun(x1))));
    z0 = xn;
    iter = iter+1;
    his(iter)= xn;
    res = abs(fun(z0)); %defined as residue in the homework 2 pdf
    res_tol = his(iter) -his(iter-1) ;
    if (iter == Nmax)
            disp(['Error tolerance was not met within ', num2str(Nmax), ' iterations'])
            break
    end
end

