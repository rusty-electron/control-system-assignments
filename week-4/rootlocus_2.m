% define the numerator and denominator of the expression
num = poly([-3]);
den = poly([0 -5 -6 -1+j -1-j]);

% express the expression as transfer function
sys = tf(num,den);

% compute and plot root locus in matlab figure window
rlocus(sys);

% returns the root locus gain and the closed-loop poles
[k, poles] = rlocfind(sys)


