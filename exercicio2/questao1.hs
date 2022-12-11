import Data.List
tipoTriangulo :: [Float] -> IO ()
tipoTriangulo lados = do
    if (a >= b + c) then putStr "NÃO FORMA TRIANGULO\n"
    else if (a^2 >  (b^2 + c^2)) then putStr "TRIANGULO OBTUSANGULO\n"
    else if (a^2 == (b^2 + c^2)) then putStr "TRIANGULO RETANGULO\n"
    else if (a^2 <  (b^2 + c^2)) then putStr "TRIANGULO ACUTANHULO\n"
    else putStr"\n"
    if (a == b && b == c && a == c) then putStr "TRIANGULO EQUILATERO\n"
    else if (a == b || b == c) then putStr "TRIANGULO ISOSCELES\n"
    else putStr"\n"
    where
        a = lados !! 0
        b = lados !! 1
        c = lados !! 2

-- função principal
triangulo = do
      putStrLn "Digite 3 valores do triangulo: "
      putStr "valor 1: "
      v1 <- readLn :: IO Float
      putStr "valor2: "
      v2 <- readLn :: IO Float
      putStr "valor3: "
      v3 <- readLn :: IO Float
      let eita = reverse(sort([v1,v2,v3]))
      tipoTriangulo eita