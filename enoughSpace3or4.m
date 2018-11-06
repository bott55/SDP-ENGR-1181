function [willShipFit] = enoughSpace3or4(positionVal, size)

%% enoughSpace 
%   takes position and ship size to see if it will exceed gameboard size

if (( positionVal- (size -1)) >= 1)
    
 willShipFit = true;
    
else
    willShipFit = false;
    
end
end

