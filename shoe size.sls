% Plot a black square around it:
plot(colOfMax, rowOfMax, 'ks', 'MarkerSize', 8, 'LineWidth', 2);
[rows, columns] = find(pressureImage > 0);
topRow = min(rows);
bottomRow = max(rows);
leftColumn = min(columns);
rightColumn = max(columns);
% Make box coordinates.
xBox = [leftColumn , rightColumn , rightColumn , leftColumn , leftColumn];
yBox = [topRow , topRow , bottomRow , bottomRow , topRow ]
% Draw the box with green lines.
plot(xBox, yBox, 'g-', 'LineWidth', 2);
