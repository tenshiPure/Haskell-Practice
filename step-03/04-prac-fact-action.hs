-- fact関数をアクションを返す関数にする

fact 0 = 1
fact n | n > 0 = n * fact (n - 1)

fact' 0 = return 1
fact' n | n > 0 = do
	n' <- fact' (n - 1)
	return $ n * n'

main = do
	print $ fact 5
	print =<< fact' 5
