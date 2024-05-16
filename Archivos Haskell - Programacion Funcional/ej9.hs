binario :: (Integral a)=> a->[a]
binario a
    |a < 2 = [a]
    |mod a 2 == 0 = binario (div a 2) ++ [0]
    |mod a 2 == 1 = binario (div a 2) ++ [1]
