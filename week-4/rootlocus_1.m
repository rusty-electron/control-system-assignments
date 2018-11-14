% define the numerator and denominator of the expression
num = poly([-7]);
den = poly([0 -5 -15 -20]);

% express the expression as transfer function
sys =tf(num,den);

% define natural frequency and damping ratio
w = 6;
z = 0.6;

% compute and plot root locus in matlab figure window
rlocus(sys);

% calculate value of gain, pole location and % overshoot 
sgrid(z,w)
