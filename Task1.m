function [power, betz_power,betz_eff] = Task1(rho,v_1, alpha, c_l,n,k_h, sigma,r_h, R, omega) 

x = r_h/R;
y = R;
v = v_1;
A = pi()*(R^2) - pi()*(r_h^2);

power = (c_l*k_h*n*rho*v*((9*omega^2*x^2*y^2+4*v^2)^(3/2)*(9*omega^2*((2*sigma-5)*x^2+5)*y^2+8*sigma*v^2)...
        -(9*omega^2*y^2+4*v^2)^(3/2)*(9*omega^2*(5*(sigma-1)*x^2-3*sigma+5)*y^2+8*sigma*v^2)))...
        /(10935*omega^3*(x-1)*(x+1)*y^2);
betz_power = (16/27)*(0.5*rho*v_1^3*A);

betz_eff = power/betz_power;