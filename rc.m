c = 10e-6;
r1 = 1e3;
tau1 = c*r1;
t = 0:0.002:0.05; 
v1 = 10*(1-exp(-t/tau1));
r2 = 10e3;
tau2 = c*r2;
v2 = 10*(1-exp(-t/tau2));
r3 = 100;
tau3 = c*r3;
v3 = 10 * (1-exp(-t/tau3));
plot (t,v1,'+',t,v2,'o',t,v3,'*');
axis([0 0.06 0 12])
title('Charging of a capacitor with three time constants')
xlabel('Time,s')
ylabel('Voltage acroos the capacitor')
text(0.03,5.0,'* for R = 0.1kohm')
text(0.03,6.0,'+ for R = 10 Kohm')
text(0.03,7.0,'o for R = 1kohm')
