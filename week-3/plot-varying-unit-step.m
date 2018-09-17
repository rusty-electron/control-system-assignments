clear;
pack;
clc;
j=1;
wn=1;

while(j<6)
    zeta(j)=input('Enter  value of damping ratio:');
    num=[wn*wn];
    t=0:0.1:26;
    den=[1 2*zeta(j)*wn wn*wn];
    [y,x,t]=step(num,den,t);
    
    %calculation of rise time(10% to 90% criterion)
    i=1;
    while y(i)<.1
        i=i+1;
    end
    
    ten=t(i);
    while y(i)<0.9
        i=i+1;
    end
    
    ninety=t(i);
    Tr(j)=ninety-ten;
    
    %calculation of delay time
    i=1;
    while y(i)<0.5
        i=i+1;
    end
    Td(j)=t(i);
    
    %calculation of maximum overshoot and corresponding time (peak time)
    for i=2:1:260
        if y(i)<=y(i-1)
            break;
        end
    end
    Mp(j)=y(i)-y(260);
    Tp(j)=t(i);
    
    %calculation of settling time using 5% criterion
    ts = 0.05;
    i=2;
    for i=260:-1:2
        if (abs(y(i)-y(260)))>=0.05
            break;
        end
    end
    Ts(j)=t(i);
    
    %Plotting of graphs
    step(num,den,t);
    axis([0 30 0 1.6]);
    title('Unit step response of 2nd order system with varying zeta and constant wn');
    pop1 = sprintf('%6.3g',zeta(j));
    text(t(40),y(40),pop1);
    hold on;
    j=j+1;
end

%Display of results
j=1;
while(j<6)
    pop=sprintf('%1.3g %6.3g %6.3g %6.3g %6.3g %6.3g',zeta(j),Td(j),Tr(j),Ts(j),Mp(j),Tp(j));
    text(10,.8,'Zeta      Td      Tr      Ts      Mp      Tp');
    text(10,.8-(.1*j),pop);
    j=j+1;
end