function [userShipLocation] = getShipCoordinates(~)




%% User choosing ship location

%getShipCoordinates Prompts user to input x,y coordinates

% Prompts user for a cartesian coordinate on a 10 x 10 matrix then places a
% ship

% Takes in a  user coordinate. Does error checking on user input and then
% uses place ship function place the ship. Process repeats until the user
% has no more ships to place.

%@return void



% Initializing variable that will hold user input for ship location
userShipLocation = zeros(1,2);
x = 0;
y = 0;

% while numberOfShips ~= 0

while (userShipLocation == 0)
    
    % Looping until a valid x value is input and then assigning it
    while x == 0
        userInput =  input('Please choose an x point (1 - 10) to place a ship \n');
        
        if (userInput > 0) && (userInput <= 10)
            x =  userInput;
        end
    end
    
    % Looping until a valid y value is input and then assigning it
    while y == 0
        userInput =  input('Please choose an y point (1 - 10) to place a ship \n');
        
        if (userInput > 0) && (userInput <= 10)
            y =  userInput;
        end
    end
    
    % User input being turned into coordinates
    userShipLocation = [x y];
    
    
    
end



end

