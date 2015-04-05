-- 以下のfとaddを無名関数に置き換える
f g = g 1 2
add x y = x + y

main = do
	print $ f add

	-- fを無名化
	print $ (\g -> g 1 2) add
	-- addを無名化
	print $ f $ \x -> \y -> x + y

	print $ (\g -> g 1 2) $ \x -> \y -> x + y
