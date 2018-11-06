function [canBePlaced] = seeIfShipCanBePlaced(shipCoordinates,size,gameBoard)



%% seeIfShipCanBePlaced

%  seeIfShipCanBePlaced checks if the current ship being placed can be
%  placed given the current coordinates



canBePlaced = [ 0 0 0 0];

% for valid orientations, clockwise around shipCoordinates

%Checking if points selected are on board

% point to right
orientation1 =  enoughSpace1or2(shipCoordinates(end), size);
%point to down
orientation2 =  enoughSpace1or2(shipCoordinates(1), size);
%point to left
orientation3 =  enoughSpace3or4(shipCoordinates(end), size);
%point to up
orientation4 =  enoughSpace3or4(shipCoordinates(1), size);


% Checking if points on board are availible

% Checking is spots are open to the right of shipCoordinates

dynamicPoint =  shipCoordinates(end);
staticPoint = shipCoordinates(1);

if orientation1 == true
    for i = 1:size        
        validOrientation =  gameBoard(staticPoint, dynamicPoint);       
        dynamicPoint = dynamicPoint+1;
        if validOrientation == 1
            orientation1 = false;
            i = size;
        end
    end
end




% Checking is spots are open to the bottom of shipCoordinates
dynamicPoint =  shipCoordinates(1);
staticPoint = shipCoordinates(end);

if orientation2 == true
    i=0;
    for i = 1:size
        validOrientation =  gameBoard(dynamicPoint,staticPoint);
        dynamicPoint = dynamicPoint+1;
        if validOrientation == 1
            orientation2 = false;
            i = size;
        end
    end
end


% Checking is spots are open to the left of shipCoordinates
dynamicPoint =  shipCoordinates(1);
staticPoint = shipCoordinates(1);

if orientation3 == true
    i=0;
    for i = 1:size
        validOrientation =  gameBoard(staticPoint,dynamicPoint);
        dynamicPoint = dynamicPoint-1;
        if validOrientation == 1
            orientation3 = false;
            i = size;
        end
    end
end


% Checking is spots are open to the top of shipCoordinates
dynamicPoint =  shipCoordinates(1);
staticPoint = shipCoordinates(end);

if orientation4 == true
    i=0;
    for i = 1:size
        validOrientation =  gameBoard(dynamicPoint,staticPoint);
        dynamicPoint = dynamicPoint-1;
        if validOrientation == 1
            orientation4 = false;
            i = size;
        end
    end
end

canBePlaced = [orientation1 orientation2 orientation3 orientation4];


end


