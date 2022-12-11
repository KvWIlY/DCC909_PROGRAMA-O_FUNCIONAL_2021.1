salarioMaisBonus = do
    putStr("Qual o salario do Funcionario: ")
    a <- readLn :: IO Float
    putStr("Quantos pontos foram obtidos: ")
    b <- readLn :: IO Int 
    let c | b <= 10 = 100.0
          | b <= 20 = 200.0
          | b <= 30 = 300.0
          | b <= 40 = 400.0
          | otherwise = 500.0
    putStr("Total a receber com bonus: R$" ++ show (a + c) ++ "\n")