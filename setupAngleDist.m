function [setup_angle_array, r_array] = setupAngleDist(alpha, lambda, R, r_h)

r_array = linspace(r_h, R);
setup_angle_array = alpha - atand((2*R) ./ (3*lambda*r_array));