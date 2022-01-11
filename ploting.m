%% Create graphs
rng default 
A=randi (1,1)
h1 = figure(1);
x_in_mm = x/1000;
plot(x_in_mm, Radiati30.25.75onProfile);
%plot(RadiationProfile);
ylabel('CR intensity (arb)')
xlabel('Central CR Axis Perpendicular to Tube Rotation (mm)')
title( [RawFileName(1:end-4), ' radiation beam width measurements'] )
hold on
% Width labels applied to figure
for i = 1:length(PeakLocations)
    if mod(i,2)
        yLoc = (HalfMaxDose)/2;
    else
        yLoc = (HalfMaxDose)/1.5;
    end
