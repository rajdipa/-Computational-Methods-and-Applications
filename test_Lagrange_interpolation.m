function [x,f,P1,P2,P3,P4]=test_Lagrange_interpolation()
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
P1 = Lagrange_interpolation(x1,f_t(x1),x);
P2 = Lagrange_interpolation(x2,f_t(x2),x);
P3 = Lagrange_interpolation(x3,f_t(x3),x);
P4 = Lagrange_interpolation(x4,f_t(x4),x);
%   plot function and the Lagrangian by even grid with N= 14
figure(1)
hold on
plot(x, f,'b')
plot(x1,f_t(x1),'k--o')
plot(x,P1,'r')
legend('function (1)','data points','lagrange interpolation even grid , N=14 ')

%   plot function and the Lagrangian by even grid with N= 40
figure(2)
hold on
plot(x, f,'b')
plot(x2,f_t(x2),'k--o')
plot(x,P2,'r')
legend('function (1)','data points','lagrange interpolation even grid , N=40 ')

%   plot function and the Lagrangian by uneven grid with N= 14
figure(3)
hold on
plot(x, f,'b')
plot(x3,f_t(x3),'k--o')
plot(x,P3,'r')
legend('function (1)','data points','lagrange interpolation uneven grid , N=14 ')

%   plot function and the Lagrangian by uneven grid with N= 40
figure(4)
hold on
plot(x, f,'b')
plot(x4,f_t(x4),'k--o')
plot(x,P4,'r')
legend('function (1)','data points','lagrange interpolation uneven grid , N=40 ')



