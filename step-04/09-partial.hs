-- 部分適用
-- 一部の引数を固定化して新しい関数を作り出すこと

add x y = x + y

main = do
	let add2 = add 2
	print $ add2 3
