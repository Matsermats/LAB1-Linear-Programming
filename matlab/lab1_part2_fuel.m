%% LAB1 - Part 2: minimum fuel consumption
% one flight of B uses 1 unit of fuel, one flight of A uses 2 units
% min F = 2*x1 + x2  (same constraints as Part 1)

clear; close all; clc;

%% Graphical method
x1 = 0:1:220;

figure; theme(gcf, 'light'); hold on; grid on;

fill([60 120 160 100 30], [0 0 40 100 30], 'g', 'FaceAlpha', 0.3, 'EdgeColor', 'none');

plot(x1, x1, 'k');            % C1
plot(x1, x1 - 120, 'b');      % C2
plot(x1, 180 + 0*x1, 'm');    % C3
plot(x1, 60 - x1, 'r');       % C4
plot(x1, 200 - x1, 'c');      % C5

% isocost line through the optimum (F = 90)
plot(x1, 90 - 2*x1, 'k--');

xp = [60 120 160 100 30];
yp = [0 0 40 100 30];
plot(xp, yp, 'ko', 'MarkerFaceColor', 'k');
text(xp + 4, yp + 6, {'A', 'B', 'C', 'D', 'E'});

% value of F at the extreme points
F = 2*xp + yp

xlim([0 220]); ylim([0 200]);
xlabel('x_1 (flights of A)'); ylabel('x_2 (flights of B)');
legend('Feasible region', 'C1', 'C2', 'C3', 'C4', 'C5', 'F = 90', 'Location', 'northeast');

exportgraphics(gcf, '../report/figures/fig_part2_fuel.pdf');

%% Simplex method with linprog
f = [2 1];
A = [-1  1; 1 -1; 0 1; -1 -1; 1 1];
b = [0; 120; 180; -60; 200];
lb = [0; 0];

options = optimoptions('linprog', 'Algorithm', 'dual-simplex');
[x, fval] = linprog(f, A, b, [], [], lb, [], options)
