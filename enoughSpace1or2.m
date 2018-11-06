function [willShipFit] = enoughSpace1or2(positionVal, size)

%% enoughSpace 
%   takes position and ship size to see if it will exceed gameboard size


if ((positionVal - 1) + size)  <= 10
    willShipFit = true;
    
else
    willShipFit = false;
    
end


end

