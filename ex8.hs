--8
--a
soma :: [Int] -> Int
soma [] = 0
soma (h:t) = h + soma t 

--b
tam :: [a] -> Int
tam [] = 0
tam (h:t) = 1 + tam t

--c
ultimo :: [a] -> a
ultimo (h:t) | (tam t) == 0 = h
             | otherwise = ultimo t

main :: IO()
main = do
    print(ultimo [5, 4, 3, 2, 1, 6])
