-- 乱数

import System.Random

randAlpha = getStdRandom $ randomR ('A', 'Z')

main = do
	-- アクションから値を取り出す
	r <- randAlpha
	print r
	-- 変数を経由せずにアクションから関数に渡す
	print =<< randAlpha
	-- 上記の逆（bind）
	randAlpha >>= print

	-- letで束縛するのはアクションそのもの
	let r = randAlpha
	r' <- r
	print r'

	-- これはアクションが束縛された変数
	test
	test
	test

-- アクション定義
test = do
	randAlpha >>= print
