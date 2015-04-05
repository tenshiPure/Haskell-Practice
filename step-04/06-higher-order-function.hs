-- 高階関数

f g = g 2 3

add x y = x + y
mul = \x y -> x * y

add' x = \y -> x + y

main = do
	print $ f add
	print $ f mul

	print $ f $ \x -> \y -> x * y

	let add2 = add' 2
	print $ add2 3
