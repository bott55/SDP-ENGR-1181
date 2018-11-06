clear
clc

gameBoard = zeros(10);
%% Placing ships

% Looping until 10 ships have been palced 
     
    orientation = [0 0 0 0];
            
    for i1 = 1:10        

     shipCoordinates = getShipCoordinates();
     shipSize = getShipSize(i1); 
     orientation = seeIfShipCanBePlaced(shipCoordinates,shipSize,gameBoard);
     
     orientations = 1;
     % Prompt user for orientation
     
     gameBoard = updateGameBoard(shipSize, shipCoordinates, orientations, gameBoard);
    
     disp(gameBoard);
    fprintf('Ships remaining to place: %i \n',(10-i1));


    end


