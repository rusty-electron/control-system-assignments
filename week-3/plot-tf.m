clear all;
t=0:.01:100;
wn=input ('Enter natural frequency wn:');
zeta=input('Enter damping ratio zeta:');
num=[wn^2];
den=[1 2*zeta*wn wn^2];
sys=tf(num,den);
y=step(sys,t);
plot(t,y);