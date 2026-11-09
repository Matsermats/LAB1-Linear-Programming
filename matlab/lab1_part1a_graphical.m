%% LAB1 - Part 1a: graphical method
% x1 = flights of aircraft A, x2 = flights of aircraft B
% max Z = 1000*x1 + 750*x2

clear; close all; clc;

x1 = 0:1:220;

figure; theme(gcf, 'light'); hold on; grid on;

% feasible region (extreme points A-B-C-D-E)
fill([60 120 160 100 30], [0 0 40 100 30], 'g', 'FaceAlpha', 0.3, 'EdgeColor', 'none');

% constraints
plot(x1, x1, 'k');            % C1: x1 = x2
plot(x1, x1 - 120, 'b');      % C2: x1 - x2 = 120
plot(x1, 180 + 0*x1, 'm');    % C3: x2 = 180
plot(x1, 60 - x1, 'r');       % C4: x1 + x2 = 60
plot(x1, 200 - x1, 'c');      % C5: x1 + x2 = 200

% isoprofit line through the optimum (Z = 190000)
plot(x1, (190000 - 1000*x1)/750, 'k--');

% extreme points
xp = [60 120 160 100 30];
yp = [0 0 40 100 30];
plot(xp, yp, 'ko', 'MarkerFaceColor', 'k');
text(xp + 4, yp + 6, {'A', 'B', 'C', 'D', 'E'});

% value of Z at the extreme points
Z = 1000*xp + 750*yp

xlim([0 220]); ylim([0 200]);
xlabel('x_1 (flights of A)'); ylabel('x_2 (flights of B)');
legend('Feasible region', 'C1', 'C2', 'C3', 'C4', 'C5', 'Z = 190000', 'Location', 'northeast');

exportgraphics(gcf, '../report/figures/fig_part1a_graphical.pdf');
