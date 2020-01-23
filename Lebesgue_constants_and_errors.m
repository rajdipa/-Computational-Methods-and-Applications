function [L1,L2,L3,L4,e1,e2,e3,e4]=Lebesgue_constants_and_errors()
x= linspace(-1,1,1000);
f_t = @(t) (1+(sin(2*pi*t)).^2).^(-1); 
f = f_t(x);
x1 = [];
x2 = [];
x3 = [];
x4 = [];
for i = 1:15
    x1(i) = -1 + (2*(i-1)/(14));
end
for i = 1:41
    x2(i) = -1 + (2*(i-1)/(40));
end
for i = 1:15
    x3(i) = cos((pi*(i-1))/14);
end
for i = 1:41
    x4(i) = cos((pi*(i-1))/40);
end
[L1f,L1] = compute_Lebesgue_function(x1,x);
[L2f,L2] = compute_Lebesgue_function(x2,x);
[L3f,L3] = compute_Lebesgue_function(x3,x);
[L4f,L4] = compute_Lebesgue_function(x4,x);

pi_x1 = Lagrange_interpolation(x1,f_t(x1),x);
pi_x2 = Lagrange_interpolation(x2,f_t(x2),x);
pi_x3 = Lagrange_interpolation(x3,f_t(x3),x);
pi_x4 = Lagrange_interpolation(x4,f_t(x4),x);

e1 = max(abs(f_t(x)-reshape(pi_x1,[1,1000])));
e2 = max(abs(f_t(x)-reshape(pi_x2,[1,1000])));
e3 = max(abs(f_t(x)-reshape(pi_x3,[1,1000])));
e4 = max(abs(f_t(x)-reshape(pi_x4,[1,1000])));


figure(1)
hold on 
plot(x, L1f)
legend('Lebesgue function lagrange interpolation even grid , N=14 ')

figure(2)
hold on 
plot(x, L2f)
legend('Lebesgue function lagrange interpolation even grid , N=40 ')
figure(3)
hold on 
plot(x, L3f)
legend('Lebesgue function lagrange interpolation uneven grid , N=14 ')

figure(4)
hold on 
plot(x, L4f)
legend('Lebesgue function lagrange interpolation uneven grid , N=40 ')




