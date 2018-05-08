function [] = setupAngleDist(alpha, lambda, R, r_h)

r = linspace(r_h, R)
xi = alpha - atand((2*R) ./ (3*lambda*r))