-- ガード

-- パターンマッチは条件式が書けない
fact n
	| n == 0    = 1
	| otherwise = n * fact (n - 1)

-- マッチとガード
fact' 0 = 1
fact' n | n > 0 = n * fact' (n - 1)

main = do
	print $ fact 5
	print $ fact' 5
