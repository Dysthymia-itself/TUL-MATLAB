function cipher = cipher_task(text, key)
    % cipher = cipher_task(text, key)
    % text - libovolne dlouhy retezec (pole char, radkovy vektor)
    % key - libovolny retezec (pole char) kratsi/stejne dlouhy jako text: length(text)>=length(key) 
    % cipher - vystupni retezec - sifra - radkovy vektor
delkaText = length(text);
    delkaKey = length(key);
    
    % pouziti modulo
    if mod(delkaText, delkaKey) ~= 0
        text = [text, blanks(delkaKey - mod(delkaText, delkaKey))];
    end
    
    keyNums = double(key);
    [~, sortedKey] = sort(keyNums);
    M = reshape(text, delkaKey, []);
    M = M(sortedKey,:);
    [~, sortedRow] = sort(sortedKey);
    M = M(sortedRow, :);
    
    cipher = char(M(:)');
end
