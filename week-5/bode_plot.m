% define the numerator and denominator of the expression
num= [0 0 0 21.42857];
den = poly([0 -3 -7.14285]);

% express the expression as transfer function
sys=tf(num, den);

% specify the frequency range
w = logspace(-1,2);

% return the magnitude and phase of frequency response at the frequencies w. 
[mag, phase] = bode(sys,w);

% compute and plot the bode plot
margin(sys)
