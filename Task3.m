clear all

rho = 1.18;
v = 6.5;
alpha = 8;
C_l = 1.27;
n = 3;
omega = 4;
counter1 = 1;

for R = 20:0.5:100 %looping over values of R
    K_h = 0.085*R;
    r_h = 0.1*R;
    counter2 = 1;
    for sigma = 0:0.01:1 %looping over values of sigma
        [power(counter1,counter2), betz_power(counter1,counter2), betz_eff(counter1,counter2)] = Task1(rho ,v, alpha, C_l, n, K_h, sigma,r_h, R, omega);
        counter2 = counter2 + 1;
    end
    counter1 = counter1 + 1;
end

