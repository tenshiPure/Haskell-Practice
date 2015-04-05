-- 以下のコードからラムダ式を排除する

f1 g = g 1
f2 g = g 2 3

main = do
	print $ f1 $ \x -> x - 3
	print $ f1 $ \x -> 3 - x
	print $ f2 $ \x y -> x + y

	print $ f1 (+ (-3))
	print $ f1 (3 -)
	print $ f2 (+)
