
pares :: Integral a => [a] -> Int
pares lista = length ([x|x <- lista, even x])