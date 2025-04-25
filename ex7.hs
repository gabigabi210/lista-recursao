merge :: Ord a => [a] -> [a] -> [a]
merge [] ys = ys
merge xs [] = xs
merge (h1 : t1) (h2 : t2) | h1 < h2 = h1 : merge t1 (h2:t2) 
                          | h1 > h2 = h2 : merge (h1:t1) t2 
                          | otherwise = h1 : merge t1 t2

metades :: [a] -> ([a], [a])
metades l = splitAt  (div (length l) 2) l


mergesort :: Ord a =>  [a] -> [a]
mergesort [] = []
mergesort [a] = [a]
mergesort lista = merge (mergesort esquerda) (mergesort direita)
    where 
        (esquerda, direita) = metades lista
main :: IO()
main = do
    print(mergesort [5, 4, 3, 2, 1])
