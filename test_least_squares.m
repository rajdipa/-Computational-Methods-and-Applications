function [x,p1,p2,p4,p8] = test_least_squares()
load DJI_2014_2019.dat;
x_d = DJI_2014_2019(:,1);
y_d = DJI_2014_2019(:,2);
x= linspace(0,1,1000);
% for p1
a_1 = poly_least_squares(x_d,y_d,1);
for i = 1:length(x)
    sum = 0;
    for j = 1:length(a_1)
        sum = sum + (a_1(j)*(x(i).^(j-1)));
    end
    p1(i) = sum; 
end

% for p2
a_2 = poly_least_squares(x_d,y_d,2);
for i = 1:length(x)
    sum = 0;
    for j = 1:length(a_2)
        sum = sum + (a_2(j)*(x(i).^(j-1)));
    end
    p2(i) = sum; 
end

% for p4
a_4 = poly_least_squares(x_d,y_d,4);
for i = 1:length(x)
    sum = 0;
    for j = 1:length(a_4)
        sum = sum + (a_4(j)*(x(i).^(j-1)));
    end
    p4(i) = sum; 
end


% for p8
a_8 = poly_least_squares(x_d,y_d,8);
for i = 1:length(x)
    sum = 0;
    for j = 1:length(a_8)
        sum = sum + (a_8(j)*(x(i).^(j-1)));
    end
    p8(i) = sum; 
end
figure(1)
hold on
plot(x_d, y_d,'b');
plot(x,p1,'r');
plot(x,p2,'r');
plot(x,p4,'r');
plot(x,p8,'r');



        
    



