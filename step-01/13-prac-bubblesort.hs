-- バブルソート

bswap [x] = [x]
bswap (x:y:zs)
	| x < y     = y : bswap (x:zs)
	| otherwise = x : bswap (y:zs)

bsort [] = []
bsort xs = y : bsort ys
	where
		a  = bswap xs
		y  = last a
		ys = init a

main = do
	print $ bsort [4, 2, 5, 1, 3]
