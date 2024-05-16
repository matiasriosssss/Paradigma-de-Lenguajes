sumacompleja :: (Num a) => [[a]] -> [a]
sumacompleja [] = []
sumacompleja (x:xs) = [n1 + n2 | (n1, n2) <- zip x (head xs)]
