-- 関数

f x = x + 1
a = f 1

add x y = x + y

main = do
	-- 結果
	print a

	-- 括弧
	print (f 1)

	-- $
	print $ f 1

	-- 普通
	print $ add 1 2
	-- 関数の演算子化
	print $ 1 `add` 2

	-- 普通
	print $ 1 + 2
	-- 演算子の関数化
	print $ (+) 1 2
