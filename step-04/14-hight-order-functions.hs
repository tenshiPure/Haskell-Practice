-- 色々な高階関数

main = do
	-- リストの全要素に関数を適用した別のリストを得る
	print $ map (* 2) [1..5]

	-- リストから要素を取り出す際に条件をしてする
	print $ filter (< 5) [1..5]

	-- 2引数関数で引数の順序を逆にする
	let test1 = flip map [1..5]
	print $ test1 (* 2)

	-- 処理と初期値を取り、リストの左から集計する
	print $ foldl (+) 0 [1..100]

	-- 処理と初期値を取り、リストの右から集計する
	print $ foldr (-) 0 [1..5]