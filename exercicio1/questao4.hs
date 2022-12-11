--4
calculoSalario :: IO()
calculoSalario = do 
    putStr "Digite seu numero: "
    num <- readLn :: IO Float
    putStr "Digite o número de horas de trabalho: "
    horasTrabalho <- readLn :: IO Double
    putStr "Digite o valor que recebe por horas: "
    valorHoras <- readLn :: IO Double
    putStrLn ("NUMBER = " ++ show(num) ++ "\n" ++ "SALARY = $ " ++ show(horasTrabalho * valorHoras ))
