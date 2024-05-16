modul :: (Integral a) => a -> a -> a
modul a b 
 | a == 0 = 0
 | a < b = a
 |otherwise = modul (a - b) b

fibonacci :: Int -> Int
fibonacci 0 = 0
fibonacci 1 = 1
fibonacci n = fibonacci(n-1) + fibonacci (n-2) 
            