sumamatrices :: (Num a) => [[a]] -> [[a]] -> [[a]]
sumamatrices [[]] [[]] = [[]]
sumamatrices [] [] = []
sumamatrices (m1x:m1xs) (m2x:m2xs) =  [sumafila m1x m2x] ++ sumamatrices m1xs m2xs


sumafila :: (Num a) => [a] -> [a] -> [a]
sumafila [] [] = []
sumafila (f1x:f1xs) (f2x:f2xs) = [f1x + f2x] ++ sumafila f1xs f2xs