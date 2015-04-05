-- 関数合成

f x = x + 1
g x = x * 2
h f = f 1

f' x = x * 2
g' x y = x + y

main = do
	-- どちらも評価順は g -> f
	print $ f (g 1)
	print $ (f . g) 1

	-- 一連の処理を1処理として渡すイメージ?
	print $ h $ f . g
	print $ h $ \x -> f $ g x

	print $ f' $ g' 1 2
	print $ ((f' .) . g') 1 2
