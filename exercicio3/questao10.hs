rodar :: Int -> [Int] -> [Int]
rodar n xs = if n == 0 then xs else rodar (n-1) rotacao
    where
        rotacao = tail xs ++ [head xs]