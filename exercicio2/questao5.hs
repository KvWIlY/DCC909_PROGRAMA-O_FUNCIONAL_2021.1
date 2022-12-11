precoTotal = do
      putStr "Peca 1\n"
      putStr "id:"
      id1  <- readLn :: IO Float 
      putStr "quantidade:"
      quantidade1 <- readLn :: IO Float
      putStr "preco:"
      preco1 <- readLn :: IO Float
      putStr "Peca 2\n"
      putStr "id:"
      id2  <- readLn :: IO Float
      putStr "quantidade:"
      quantidade2 <- readLn :: IO Float
      putStr "preco:"
      preco2 <- readLn :: IO Float
      let x = (quantidade1 * preco1) + (quantidade2 * preco2)
      putStr("VALOR A PAGAR: R$" ++ show(x) ++ "\n")