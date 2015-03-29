-- タプル

-- 丸括弧で囲む
addsub x y = (x + y, x - y)

-- 丸括弧で受ける
(a, s) = addsub 1 2

main = do
	print $ addsub 1 2
	print a
	print s

	let p2 = (1, 2)
	-- １つ目
	print $ fst p2
	-- ２つ目
	print $ snd p2

	let p3 = (1, 2, 3)
	-- ３つ目
	let (_, _, c) = p3
	print c
