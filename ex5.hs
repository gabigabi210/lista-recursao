--5
--a
and' :: [Bool] -> Bool
and' (i:resto) | i == False = False
               | resto == [] = True
               | otherwise = and' resto

--b
concat' :: [[a]] -> [a]
concat' [] =  []
concat' (cab:cau) = cab ++ concat' cau

--c
replicate' :: Int -> a -> [a]
replicate' 0 letra = letra : []
replicate' n letra = letra : replicate' (n-1) letra

--d
selecionar :: [a] -> Int -> a
selecionar (cab: cau) n | n == 0 = cab
                        | otherwise = selecionar cau (n-1)
    
--e
elem' :: Eq a => a -> [a] -> Bool
elem' _ [] = False
elem' c (h:t) | c == h = True
              | otherwise = elem' c t 
main :: IO()
main = do 
    print(elem' 3 [1, 3, 2])
