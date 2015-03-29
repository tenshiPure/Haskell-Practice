-- if

main = do
	-- １行で
	if 1 == 1 then print "Equals" else print "Not Equals"
	if 2 == 1 then print "Equals" else print "Not Equals"

	-- インデント行で
	if 1 == 1
		then print "Equals"
		else print "Not Equals"

	-- 値を返すから関数っぽく使える
	print $ if 1 == 1 then "Equals" else "Not Equals"

	-- if部分を関数に
	print $ f 0
	print $ f 1
	
	-- whereでもインデント出来る
	print $ g 1

	-- 定義
	where
		f a = if a == 1 then "Equals" else "Not Equals"
		g a = if a == 1
			then "Equals"
			else "Not Equals"
