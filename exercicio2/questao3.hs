opa :: Int -> Int -> IO()
opa a b = if (a > 0)
    then do
        let e = (b+1)
        let f = (b+2)
        let g = (b+3)
        print( e , f , g , "PUM")
        opa (a - 1) (b + 4)
    else do 
        return ()
-- função principal
eita n = opa n 0 