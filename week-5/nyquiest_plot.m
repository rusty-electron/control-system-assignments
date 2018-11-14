% define the numerator and denominator of the expression
num = poly([-1 -3-7i -3+7i]);
den = poly([-1 -3 -5 -3-7i -3+7i]);

% express the expression as transfer function
sys =tf(num,den);

% returns the real and imaginary parts of the frequency response
[re, im]=nyquist(sys, w);

% compute and plot the nyquiest plot
nyquist(sys)
