nub :: (Eq a) => [a] -> [a]
nub [] = []
nub (x:xs) | x `elem` xs = nub xs
           | otherwise = x:nub xs

remover_repetidos :: [Int] -> [Int]
remover_repetidos xs = nub xs