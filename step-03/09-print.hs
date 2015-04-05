-- print

-- printはアクションを返す関数である

main = do
	-- 取り出すときに副作用として出力される
	a <- print "aaa"
	-- 戻り値ではない
	print a
