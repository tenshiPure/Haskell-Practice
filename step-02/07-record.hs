-- レコード構文は直積型や直和型のフィールドに名前を付けることが出来る

data Foo = Foo { bar :: Int, baz :: String } deriving Show

main = do
	-- 名前指定あり
	print $ Foo {bar = 1, baz = "a"}
	-- 逆も出来るっぽい
	print $ Foo {baz = "b", bar = 2}
	-- 名前が無いようにも使える
	print $ Foo 3 "c"

	let f = Foo {bar = 1, baz = "a"}
	print f
	-- フィールド名がgetterになる
	print $ bar f

	-- パターンマッチ
	let (Foo i s) = f
	print s

	-- 名前付きパターンマッチ
	let (Foo { bar = c }) = f
	print c

	-- フィールドを変更したコピー
	let g = f { baz = "g" }
	print g
