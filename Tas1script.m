rho = 1.18; %kg/m3
v_1 = 6.5; %m/s
alpha = 8; %deg
c_l = 1.27; 
n = 3; % numb of blades
k_h = 2.975; %metres
sigma = 0.3;
r_h = 3.5; %metres
R = 35; %metres
w = 4; %rad/s

[power, betz_power,betz_eff] = Task1(rho,v_1, alpha, c_l,n,k_h, sigma,r_h, R, w) 