clear all
close all

omega = 4;
R = 5;
r_h = 0.1*R;
v_1 = 6.5;
lambda = omega * R / v_1;
alpha = 8;

setupAngleDist(alpha, lambda, R, r_h)