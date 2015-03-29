-- パターンマッチ

-- 引数ごとに挙動を変えられるってことかな
f 1 = "1"
f a = "?"

g 1 = 1 * 2
g a = a

-- 引数を使わないことを明示
h 1 = 10
h _ = 0

main = do
	print $ f 0
	print $ f 1

	print $ g 1
	print $ g 2

	print $ h 1
	print $ h 2
