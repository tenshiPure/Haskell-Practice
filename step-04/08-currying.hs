-- カリー化
-- 関数を引数1つずつに分割してネストさせること

add x y = x + y
add' x = \y -> x + y
add'' = \x -> \y -> x + y

main = do
	print $ add   2 3
	print $ add'  2 3
	print $ add'' 2 3
