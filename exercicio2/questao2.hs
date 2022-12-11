-- para coordenadas de numero negativo use () no mesmo.
coordenadas :: Int -> Int -> String
coordenadas x y | ((x) >  0 && (y) > 0) = "primeiro quadrante"
                | ((x) >  0 && (y) < 0) = "quarto quadrante"
                | ((x) <  0 && (y) < 0) = "terceiro quadrante"
                | ((x) <  0 && (y) > 0) = "segundo quadrante"
                | ((x) == 0 || (y) == 0) = "Nao tem nada escrito aqui."