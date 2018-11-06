clear
clc

gameBoard = zeros(10);
%% Placing ships

% Looping until 10 ships have been palced 
     
    %default value
    orientation = (1);
            
    for i1 = 1:10        
    
        % Getting ship coordinates from user
     shipCoordinates = getShipCoordinates();
     % Getting ship size
     shipSize = getShipSize(i1);
     
     % Determining  availible ship orientations
    if i1 > 4 
     orientation = seeIfShipCanBePlaced(shipCoordinates,shipSize,gameBoard);
     % User input for chosenn orientation
     orientation = getOrientation(orientation);  
     
    end
     % Populating gameBoard with ships
     gameBoard = updateGameBoard(shipSize, shipCoordinates, orientation, gameBoard);
    
     % Printing gameBoard to console for player
     disp(gameBoard);
     % Printing to console count fo unplaced ships
    fprintf('Ships remaining to place: %i \n',(10-i1));


    end


