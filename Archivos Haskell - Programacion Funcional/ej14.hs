insertar::(Integral a) => [a] -> a -> [a]
insertar (x:xs) num
    |num <= x = [num] ++ [x] ++ xs
    |num > x = [x] ++ insertar xs num
