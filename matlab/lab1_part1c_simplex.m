%% LAB1 - Part 1c: simplex method with linprog
% max Z = 1000*x1 + 750*x2  ->  min -Z = -1000*x1 - 750*x2

clear; clc;

f = [-1000 -750];

A = [-1  1;     % C1: -x1 + x2 <= 0
      1 -1;     % C2:  x1 - x2 <= 120
      0  1;     % C3:       x2 <= 180
     -1 -1;     % C4: -x1 - x2 <= -60
      1  1];    % C5:  x1 + x2 <= 200
b = [0; 120; 180; -60; 200];

lb = [0; 0];

options = optimoptions('linprog', 'Algorithm', 'dual-simplex');
[x, fval] = linprog(f, A, b, [], [], lb, [], options)

Z = -fval
