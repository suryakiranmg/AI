A = ones(156,2);
count = 1;
while (count <= 52)        
    A(count,1) = 0; A(count,2) = 0;  %//Fill o's to imply R-R  
    A((count+52),1) = 0;    %//Fill o's to imply R-B  
    count = count +1;
end
Count = 0; BlueCards = 0; Freq = 0;
while (count < 100000)
i = randi([1,156],[1,1]);   %// rand integer between 1 & 156
j = randi([1,2],[1,1]);     %// rand integer between 1 & 2
if (A(i,j) == 1)
    if (j == 1)            %// Check the adjacent coloum element
        j = 2;
    else j=1;
    end
    if (A(i,j) == 1)
        BlueCards = BlueCards+1;    %// Blue Card counter
    end
    Freq = Freq +1;        %// Event of B-B/B-R card counter
end
count = count + 1;
end
%// Relative frequency
RelFreq = BlueCards / Freq

    



