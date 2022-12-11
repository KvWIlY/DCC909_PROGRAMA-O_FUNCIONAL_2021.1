--3
notas :: IO ()
notas = do {
        putStr "Digite nota 1: "
        ;nota1 <- readLn :: IO Double
        ;putStr "Digite nota 2: "
        ;nota2 <- readLn :: IO Double
        ;putStr "Digite nota 3: "
        ;nota3 <- readLn :: IO Double
        ;let media = (nota1*2 + nota2*3 + nota3*5)/(2+3+5) 
        ;putStrLn ("MEDIA = " ++ show(media))}

