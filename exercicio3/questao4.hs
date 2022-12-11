unica_ocorrencia ::Int -> [Int] -> Bool 
unica_ocorrencia a [] = False
unica_ocorrencia a (x:xs) | x == a = if (unica_ocorrencia a xs) then False else True
                          | otherwise = unica_ocorrencia a xs