function [Mag,Pha] = Fase (s,Re,Im)
 
Mag = sqrt((Re.^2)+(Im.^2));
 
for n = 1:s(2)
  if Re(n) < 0;
    Pha(n) = atan(Im(n)./Re(n));
    if Im(n) > 0
      Pha(n) = Pha(n)+ pi;
    else
     if Im(n) == 0
       Pha(n) = pi;
     else
       Pha(n) = Pha(n)-pi;
     end
    end
  else 
    if Re(n) == 0
      if Im(n) > 0
        Pha(n) = pi/2;
      else
        if Im(n) == 0
          Pha(n) = 0;
        else
        Pha(n) = -pi/2;
        end
      end
    else
      Pha(n) = atan(Im(n)./Re(n)); 
    end
  end
end

endfunction
