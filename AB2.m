function [y,t] = AB2(fun,y0,NSTEPS,DT,IOSTEP)
y = y0;
t = 0;
u1 = y0 + (0.5 * DT)*(fun(y0,t)+fun(y0+DT*fun(y0,t),DT));
y_o = y0;
for i = 3:NSTEPS
    ts = (i-1)*DT;
    y_u = u1+(0.5*DT)*(3*fun(u1,(i-2)*DT)-fun(y_o,(i-3)*DT));
    if mod(i,IOSTEP) == 0
        y = [y y_u];
        t = [t ts];
    end
    y_o = u1;
    u1 = y_u;
end
end
    
    