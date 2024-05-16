enlace :: (Eq a) => [[a]] -> [[a]] -> [[a]]
enlace [] l2 = []
enlace (x1:x2) l2 = filter (/=[]) (map (\y->if (last x1 == head y) then [head x1] ++ [last y] else []) l2) ++ enlace x2 l2



enlace1 :: (Eq a) => [[a]] -> [[a]] -> [[a]]
enlace1 lista1 lista2 = [(head x) : [last y|y<-lista2,last x == head y]|x<-lista1] 