n=0;
sum1=0;
sum2=0;
x=input('Enter first value:');
while x >= 0
    n=n+1;
    sum1=sum1+x;
    sum2=sum2+x^2;
    x=input('enter next value(enter -ve value to terminate):');
end
clc;
if n<2
    disp('at least 2 values must be entered');
else
    mean_x=sum1/n;
    std_dev=sqrt((n*sum2-sum1^2)/(n*(n-1)));
    fprintf('the mean of data set is : %f\n',mean_x);
    fprintf('the standard deviation is : %f\n',std_dev);
    fprintf('the number of data points is : %f\n',n);
end