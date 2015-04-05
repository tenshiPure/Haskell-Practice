-- 以下のコードの書き換え

fact 0         = 1
fact n | n > 0 = n * fact (n - 1)

fact' = \n -> case n of
	0 -> 1
	_ | n > 0 -> n * fact' (n - 1)

main = do
	print $ fact 5
	print $ fact' 5
