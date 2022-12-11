numero :: [Float] -> Int -> IO ()
numero xs i = do
    if i < 6 
        then do
            putStr "Digite um numero: "
            n <- readLn :: IO Float
            let l | n > 0 = n:xs
                  | otherwise = xs  
            numero l (i+1)                  
        else putStrLn $ show(media)
    where
        size = fromIntegral(length xs)
        media = sum xs / size

-- função principal
main = do numero [] 0