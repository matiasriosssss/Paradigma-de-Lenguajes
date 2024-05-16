elimrep :: (Integral a) => [a] -> [a]
elimrep [] = [] 
elimrep (x:xs) = if (elem x xs) then elimrep xs else [x] ++ elimrep xs


elimreps :: (Integral a) => [a] -> [a]
elimreps [] = []
elimreps (x:xs)  
    |elem x xs == False = [x] ++ elimreps xs
    |elem x xs == True = elimreps xs

