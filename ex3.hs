exponencial :: Int -> Int -> Int
exponencial _ 0 = 1
exponencial x y = x * exponencial x (y - 1)

main :: IO()
main = do
    print(exponencial 4 3)
