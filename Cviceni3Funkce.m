function Y = VecBubbleSort(X)
% Zde vlozte naprogramovanou funkci bublinkoveho razeni vektoru
% X - nesetridena vstupni matice
% Y - algoritmem setridena vystupni matice
    for i = 1:size(X,2)
        for j = 1:size(X,2)-i
            for k=1:size(X,1)
                if X(k,j) > X(k,j+1)
                    break
                elseif X(k,j) < X(k,j+1)
                    temp=X(:,j);
                    X(:,j)=X(:,j+1);
                    X(:,j+1)=temp;
                    break
                end
            end
        end
    end
Y=X

end
