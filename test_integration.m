function [em,et,es] = test_integration()
format long;
em =[];
et = [];
es = [];
t = linspace(-1, 3, 1000);
f_t = @(x) ((1/(1+x.^2))*(cos((3/2)*exp(-(x.^2)))))- ((x.^3)/30);
I_ref = 1.6851344770476;
z = 2:100;
for n = 2:100
    I_m = int_midpoint_rule(f_t,-3,1,n);
    I_t = int_trapezoidal_rule(f_t,-3,1,n);
    I_s = int_Simpson_rule(f_t,-3,1,n);
    em = [em,abs(I_ref-I_m)];
    et = [et,abs(I_ref-I_t)];
    es = [es,abs(I_ref-I_s)];
end
y = [];
for s = -100:100
    fil = f_t(s);
    y = [y,fil];
end
figure(1)
plot(-100:100,y)

figure(2)
hold on
%plot(z,em)
set(gca, 'XScale', 'log', 'YScale', 'log');
a1 = loglog(z, em);M1 = "Midpoint ";

a2 = loglog(2:100, et) ; M2 = "Trap ";
a3 = loglog(2:100, es);M3 = "simp ";

legend([a1,a2,a3], [M1, M2,M3]);
