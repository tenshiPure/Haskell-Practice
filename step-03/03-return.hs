-- return

main = do
	-- returnは値をもってしてアクションを作る
	a <- return 1
	print a
	-- 01-random.hsのrandAlphaアクションの様に使える
	print =<< return 2
	return 3 >>= print

	add 1 2 >>= print
	add' 1 2 >>= print

-- アクションを返す関数を作ることが出来る
add x y = return $ x + y

-- return + do
add' x y = do
	print x
	print y
	return $ x + y
