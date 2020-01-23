function [P,n,p]=pi_series()
P = [];
Q = [];
cur = [];
lim = 0.0001;
format long % to make sure we are not rounding off early. 
for i = 0:14 %this is for finding P, we start with n = 0 to n = 14
    s = 0;
    for j = 0:i %for each n, calculating the partial sum Pn
        s = s + (3* (-1).^j *((1/((6*j) + 1))+(1/((6*j) + 5))));
    end
 P(i+1) = s;
end

for i = 0:10000 % we used 10000 to have a safe range to find the required n
    s = 0;
    for j = 0:i
        s = s + (3* (-1).^j *((1/((6*j) + 1))+(1/((6*j) + 5))));
    end
 Q(i+1) = s; %same as P but has 10000 elements instead 
end
J = abs(Q - pi); % getting the required substraction
for i = 1:length(J)
    if J(i) < lim % whenever this condition is satisfied the index elements will be stored in an array
        cur = [cur; i-1]; %appending with i-1 because we started with i =1, instead of i = 0
    end
end
n = cur(1); %since the indexes in cur were stored in ascending order, the first element will give us the smallest n
l = 0; %l,r,t are introduced to find p, and were helpers in calculating e_n ,e_n+2, e_n+1 which was required to find the slope
r = 0;
t = 0;
for j = 0:1002
        l = l + (3* (-1).^j *((1/((6*j) + 1))+(1/((6*j) + 5))));
end
for j = 0:1001
        r = r + (3* (-1).^j *((1/((6*j) + 1))+(1/((6*j) + 5))));
end
for j = 0:1000
        t = t + (3* (-1).^j *((1/((6*j) + 1))+(1/((6*j) + 5))));
end

en_2 = abs(l - pi);
en_1 = abs(r-pi);
en = abs(t-pi);
p = ((log(en_2)-log(en_1))/(log(en_1)-log(en))); %expression for slope 




    
    


   
