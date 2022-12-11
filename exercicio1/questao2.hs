-- 2
prod = do {putStr "Digite um número inteiro: "
        ;n1 <- readLn
        ;putStr "Digite um número inteiro: "
        ;n2 <- readLn
        ;putStr "PROD = " 
        ;putStrLn (show(n1 * n2))}