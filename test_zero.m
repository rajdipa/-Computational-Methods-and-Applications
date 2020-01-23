function [zc,ec,x,f] = test_zero()
    format long;
    fun = @(x)(16*x.^5)-(20*x.^3)+(5*x);
   
    a = -0.99;
    b = -0.9;
    Nmax = 20000;
    tol = 10.^(-15);
    [z0, iter, res, his]=chordmethod(fun,a,b,tol,Nmax);
    zc = (z0);
    z_ac = cos((9*pi)/10);
    ec = abs(his - z_ac);
    x = linspace(-1, 1, 1000);  % set of x values 
    f = fun(x);                % f(x)
    
    %   plot function
    figure(1)
    plot(x, f)
    title('f(x)');
    
     
%   plot convergence history
    figure(2)
    semilogy(1:iter, ec)
    title('Semilog plot of error');
    
    %   plot loglog
   
    figure(3)
    hold on
    loglog( ec(1:iter-1), ec(2:iter) );

    
    
   
  
    
    
    
    
    
    