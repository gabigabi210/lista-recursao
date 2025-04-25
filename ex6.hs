merge :: Ord a => [a] -> [a] -> [a]
merge [] ys = ys
merge xs [] = xs
merge (h1 : t1) (h2 : t2) | h1 < h2 = h1 : merge t1 (h2:t2) 
                          | h1 > h2 = h2 : merge (h1:t1) t2 
                          | otherwise = h1 : merge t1 t2
