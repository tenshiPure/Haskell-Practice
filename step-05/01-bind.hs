-- bind

-- doの各行はbindで結ばれている

--main = do
--	print "hello"
--	print "world"

-- doを外してbindしてみる
--main = 
--	print "hello" >>= \_ -> 
--		print "world"

main = do
	-- _ は暗黙に行われる取り出しを表している
	_ <- print "aaa"
	print "bbb"

	-- ラムダ式の引数は、アクションから取り出された値を束縛する変数に相当する
