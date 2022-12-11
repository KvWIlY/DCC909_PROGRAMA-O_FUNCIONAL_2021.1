maiorAB :: Float -> Float -> Float
maiorAB a b =  (a + b + abs(a-b))/2
maior a b c = do {
	let d = maiorAB a b
	;let e = maiorAB d c
	;print(show (e) ++ " eh o maior\n")}