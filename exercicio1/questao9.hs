even_odd :: Int -> IO ()
even_odd n = do
    if n < 5 then do
        numero <- readLn :: IO Int
        if (numero/=0) then 
            if even n then putStr "EVEN " else putStr " ODD "
        else return () 
        if numero > 0
            then putStr "POSITIVE \n"
        else if numero < 0 
            then putStr "NEGATIVE \n"
        else putStr "NULL \n"
        even_odd (n+1)
    else return ()
parOuimpar = do even_odd 0 