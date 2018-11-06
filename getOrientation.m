function [chosenOrientation] = getOrientation(orientation)
%% getOrientation prompts user to select an orientation from availible choices

x = length(orientation);


fprintf('There are %.i options for orientation \n', x);
disp(orientation);
chosenOrientation = input('Input the index of a "1" to select that orientation. \n');




end

