-- フィボナッチ

-- パターンマッチ
fib 0 = 0
fib 1 = 1
fib n | n > 1 = fib (n - 2) + fib (n - 1)

-- ガード
fib' n
	| n == 0 = 0
	| n == 1 = 1
	| n > 1  = fib (n - 2) + fib (n - 1)

main = do
	print $ fib 5
	print $ fib' 5
