-- 以下の関数を無名関数で置き換える

add x y = x + y

main = do
	print $ add 2 3
	print $ (\x -> \y -> x + y) 2 3
