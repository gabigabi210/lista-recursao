somar :: Int -> Int
somar 0 = 0
somar n = n + somar (n - 1) 

main :: IO()
main = do
    print(somar 6)
