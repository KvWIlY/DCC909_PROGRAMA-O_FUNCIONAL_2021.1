--5
pagamentoDasPecas :: IO ()
pagamentoDasPecas = do 
        putStrLn "Digite o código da peça 1: "
        codigoPeca <- getLine
        putStrLn "Digite o número da peça 1: "
        numeroPeca <- readLn
        putStrLn "Digite o valor unitário de cada peça 1: "
        valorUniPeca <- readLn :: IO Double
        putStrLn "Digite o código da peça 2: "
        codigoPecaDois <- getLine
        putStrLn "Digite o número da peça 2: "
        numeroPecaDois <- readLn
        putStrLn "Digite o valor unitário de cada peça 2: "
        valorUniPecaDois <- readLn :: IO Double
        putStrLn ("VALOR A PAGAR: R$ " ++ show((numeroPeca * valorUniPeca)+(numeroPecaDois * valorUniPecaDois)))
