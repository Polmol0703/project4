clear all

rho = 1.18;
v = 6.5;
alpha = 8;
C_l = 1.27;
n = 3;
omega = 4;
counter1 = 1;

for R = 1:0.05:50 %looping over values of R
    K_h = 0.085*R;
    r_h = 0.1*R;
    counter2 = 1;
    for sigma = 0:0.001:1 %looping over values of sigma
        [power(counter1,counter2), betz_power(counter1,counter2), betz_eff(counter1,counter2)] = Task1(rho ,v, alpha, C_l, n, K_h, sigma,r_h, R, omega);
        counter2 = counter2 + 1;
    end
    counter1 = counter1 + 1;
end

power2 = power(power <1500.1 & power >1499.9)

error = abs(power2 - 1500);
index = find(error == min(error))
[row,col] = find(power == power2(index))
Rfinal = 1 + row * 0.05
sigmaFinal = 0 + col * 0.001