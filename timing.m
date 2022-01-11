%% Display System Response
figure('units','normalized','outerposition',[0 0 1 1])      % Auto Full Screen

subplot(3,1,1);
hold on
plot(time, states(:,5));
y_axis = ylim;
line([time(peak_index) time(peak_index)],...
    [y_axis(1) y_axis(2)],...
    'color', 'g', 'linestyle', '--');
fplot((@(x) -BO_comp), [0 time(peak_index)], 'g--')
fplot((@(x) 0), [0 p.time_stop], 'k:')
xlabel 'Time (sec)';
ylabel 'Distance from Starting Point (m)'
title 'Foot Position (AKA: Compression)'
str = {strcat('Foot Dynamics when K = ', num2str(vec4))};
legend (str)

subplot(3,1,2);
hold on
plot(time, states(:,4));
y_axis = ylim;
line([time(peak_index) time(peak_index)],...
    [y_axis(1) y_axis(2)],...
    'color', 'g', 'linestyle', '--');
fplot((@(x) 0), [0 p.time_stop], 'k:')
xlabel 'Time (sec)';
ylabel 'Foot Velocity (m/sec)'
title 'Foot Velocity'

subplot(3,1,3);
hold on
plot(time, states(:,6));
y_axis = ylim;
line([time(peak_index) time(peak_index)],...
    [y_axis(1) y_axis(2)],...
    'color', 'g', 'linestyle', '--');
fplot((@(x) 0), [0 p.time_stop], 'k:')
xlabel 'Time (sec)';
ylabel 'Foot Acceleration (m/sec^2)'
title 'Foot Acceleration'
