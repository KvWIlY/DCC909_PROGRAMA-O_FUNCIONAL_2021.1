maior [x] = x
maior (x:y:z) | x > y = maior (x:z)
              | otherwise = maior (y:z)