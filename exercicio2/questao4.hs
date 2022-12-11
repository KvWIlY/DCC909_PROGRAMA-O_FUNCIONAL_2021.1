fatores n = [i | i<-[1..n], n `mod` i == 0]
-- função principal
primo :: Int -> IO ()
primo n = if (n < 0 || n > 100)  
    then error "Atribua um valor entre 0 e 100"
    else if (fatores n) == [1,n] then print("True") else print("False")
-- obs: se for verificar um numero negativo use () no mesmo.