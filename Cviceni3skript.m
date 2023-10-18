
A = randn(1000, 2000);


M = round(A);
M2 =M;
    
  for i = 1:size(M, 2)
    for col = 1:size(M, 2)-i
        for row = 1:size(M, 1)
            if (M(row, col+1) > M(row, col))
                temp = M(:, col);
                M(:, col) = M(:, col+1);
                M(:, col+1) = temp;
                break;
            elseif (M(row, col+1) < M(row, col))
                break;
            end
        end
    end
end

mean(M == sortrows(M2.','descend').', 'all')







