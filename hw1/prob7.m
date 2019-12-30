clear; clc;

t = 0 : pi/50 : 7*pi;   % Range of time
Omega = 0.5 * pi;       % Omega value

% Draw positive complex exponential
Re_pos = cos(Omega*t);
Im_pos = sin(Omega*t);
subplot(1,2,1);
plot3(t, Re_pos, Im_pos, 'b', 'LineWidth', 2);
ax = gca;
ax.YColor = 'm';
ax.ZColor = 'm';
ax.LineWidth = 2;
ax.GridColor = 'k';
ax.GridLineStyle = ':';
grid;
title('e^{+j\Omegat} (Positive CE)');
xlabel('Time, t', 'Color', 'black', 'rotation', 23);
zlabel('Amplitude in Imaginary axis, Im', 'Color', 'black');

% Draw negative complex exponential
Re_neg = cos(-Omega*t);
Im_neg = sin(-Omega*t);
subplot(1,2,2);
plot3(t, Re_neg, Im_neg, 'r', 'LineWidth', 2);
ax = gca;
ax.LineWidth = 2;
ax.YColor = 'm';
ax.ZColor = 'm';
ax.LineWidth = 2;
ax.GridColor = 'k';
ax.GridLineStyle = ':';
grid;
title('e^{-j\Omegat} (Negative CE)');
xlabel('Time, t', 'Color', 'black', 'rotation', 23);
ylabel('Amplitude in Real axis, Re', 'Color', 'black');
ylh = get(gca,'ylabel');
ylp = get(ylh,'Position');
set(ylh, 'Rotation', -35, 'Position', ylp, 'VerticalAlignment', 'middle', 'HorizontalAlignment', 'right');
