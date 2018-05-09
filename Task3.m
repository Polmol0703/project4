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

power2 = power(power <1500.5 & power >1499.5)
for i = 1:length(power2)
    [row, col] = find(power == power2(i));
    row_array(i) = row;
    col_array(i) = col;
    betz_eff2(i) = betz_eff(row,col);
end

index = find(betz_eff2 == max(betz_eff2));
[row,col] = find(power == power2(index));
powerfinal = power2(index)
R2_array = 1 + row_array.*0.05;
sigma2_array = 0 + col_array .* 0.001;
Rfinal = 1 + row * 0.05;
sigmafinal = 0 + col * 0.001;
betzefffinal = betz_eff(row,col);

% error = abs(power2 - 1500);
% index = find(error == min(error));
% [row,col] = find(power == power2(index));
% Rfinal = 1 + row * 0.05;
% sigmafinal = 0 + col * 0.001;
% betzefffinal = betz_eff(row,col);

R = Rfinal;
r_h = 0.1*Rfinal;
lambda = omega * R / v;

[setup_angle_array, r_array] = setupAngleDist(alpha, lambda, R, r_h);

plot(r_array, setup_angle_array)
xlabel('Position along the blade (meters)')
ylabel('Setup angle (degrees)')


