gera_sequencia :: Int -> [Int] 
gera_sequencia n = alt negativo positivo []
    where
        alt :: [Int] -> [Int] -> [Int] -> [Int]
        alt [] [] zs = reverse zs 
        alt (x:xs) (y:ys) zs = alt xs ys (x:y:zs)
        positivo = [x | x <- [1..n]]
        negativo = map negate positivo 