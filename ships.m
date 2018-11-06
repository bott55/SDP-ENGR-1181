

%% Ships

% This contains computer and user ships

% Pass in a matrix to populate it with ships

% Size value of ships on board. A carrier, B battleship, C destroyer, D
% submarine

A = [ 1 0 0 0];
B = [ 1 1 0 0];
C = [ 1 1 1 0];
D = [ 1 1 1 1];


% Count of ships 
shipTemplate = [1 0 0 0; 1 1 0 0; 1 1 1 0; 1 1 1 1 ];

shipTemplate

computer = shipTemplate;
player = shipTemplate;


