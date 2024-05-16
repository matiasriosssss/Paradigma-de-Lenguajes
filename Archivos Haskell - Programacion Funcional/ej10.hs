

union :: Eq a => [a] -> [a] -> [a]
union [] l2 = l2
union (cab:cola) l2
    |elem cab l2 == True = union cola l2
    |elem cab l2 == False = [cab] ++ union cola l2