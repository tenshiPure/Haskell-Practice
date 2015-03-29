-- リスト

-- 定義
list = [1, 2, 3, 4, 5]

main = do
	-- 出力
	print list

	-- !! で取り出す
	print $ list !! 0
	print $ list !! 3

	-- 連番
	print [1..5]

	-- 連結
	print $ [1, 2, 3] ++ [4, 5]

	-- 先頭挿入
	print $ 1 : [2, 3, 4, 5]
	print $ 1 : 2 : [3, 4, 5]

	-- 文字列
	print $ "abcde"
	print $ ['a', 'b', 'c', 'd', 'e']
	print $ ['a'..'e']
	print $ 'a' : "bcde"
	print $ 'a' : 'b' : "cde"
	print $ "ab" ++ "cde"
	print $ "abcde" !! 3

	-- 引数で先頭とそれ以外に分ける
	let first (x:xs) = x
	print $ first [1..5]

	-- 連ねて無視明示
	let second (_:x:_) = x
	print $ second [1..5]

	-- 要素数
	print $ length [1, 2, 3]

	-- 先頭のn個を取得
	print $ take 3 [1..5]

	-- 先頭のn個を捨てる
	print $ drop 3 [1..5]
	
	-- 逆順
	print $ reverse [1..5]

	-- 和
	print $ sum [1..5]

	-- 積
	print $ product [1..5]
