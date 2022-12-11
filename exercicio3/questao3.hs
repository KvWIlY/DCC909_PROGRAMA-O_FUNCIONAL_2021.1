import Data.List

nroOcorrencias :: [Int] -> [(Int, Int)]
nroOcorrencias xs = nub (zip xs (map f xs)) 
    where
        cont :: Int -> [Int] -> Int
        cont i [] = 0
        cont n (x:xs) | n == x = 1 + cont n xs
                      | otherwise = cont n xs
        f x = cont x xs