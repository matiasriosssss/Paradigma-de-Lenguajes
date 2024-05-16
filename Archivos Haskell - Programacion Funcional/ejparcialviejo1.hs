insertarMedio :: (Integral a) => a -> [a] -> [a]
insertarMedio x [] = [x]
insertarMedio x (xl2:xsl2)
    |x <= xl2 = [x] ++ [xl2] ++ xsl2
    |x > xl2 = [xl2] ++ insertarMedio x xsl2

insertar :: (Integral a) => [a] -> [a] -> [a]
insertar [] l2 = l2
insertar (x:xs) l2
    |elem x l2 = insertar xs l2
    |x <= head (l2) = insertar xs ([x]++l2)
    |x >= last (l2) = insertar xs (l2++[x])
    |otherwise = insertar xs (insertarMedio x l2)
