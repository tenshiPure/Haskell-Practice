-- リスト内包表記

fact 0 = 1
fact n | n > 0 = n * fact (n - 1)

main = do
	print [1, 2, 3, 4, 5]
	print [fact 1, fact 2, fact 3, fact 4, fact 5]
	print [fact x | x <- [1..5]]

	-- | を for, <- を in に置き換えれば同じかな(python)
	print [fact x | x <- [1..5]]

	-- 条件
	print [x | x <- [1..9], x < 5]

	print [(x, y) | x <- [1..3], y <- "abc"]
