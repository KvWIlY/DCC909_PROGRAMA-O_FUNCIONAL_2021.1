import Data.List
comparador::String -> String -> Bool
comparador a b |length b /= length a = False
               |otherwise = let y =  zipWith (==) a b 
                                opa = [x | x <- y, (not x)]
                            in  null opa

compara ::Int ->Int -> String
compara n1 n2 | length (show n1) >= length (show n2) = do if comparador (show n1) (show n2) then "Encaixa" 
                                                           else let n1tail = read(drop 1 (show n1))::Int
                                                                in compara n1tail n2
              | otherwise = "Nao encaixa"