function [gameBoard] = updateGameBoard(ship, shipCoordinates, orientation, gameBoard)

%% updateGameBoard

% Takes in a ship of any size, coordinates for that ship and current status of game board
% then orients ship to fit on that spot and adds ship to game board

x = shipCoordinates(1);
y = shipCoordinates(end);
    

if orientation == 1
    
    for i = 1:ship
        
        gameBoard(x,y) = 1;
        
        x = x+1;
    end
    
end












end

