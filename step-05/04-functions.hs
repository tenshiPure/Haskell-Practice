-- アクションに対して使う色々な関数

import Control.Monad
import System.Random

dice :: IO Int
dice = getStdRandom $ randomR (1, 6)

main = do
	-- 指定回数だけ繰り返す
	print $   replicate  5 1
	-- 指定回数だけアクションから値を取り出す
	print =<< replicateM 5 (return 1)
	print =<< replicateM 5 dice

	-- 接尾辞の_は値を捨てる事を意味している
	-- doブロックに対する指定回数ループの様なもの？
	replicateM_ 3 $ do
		print =<< dice

	-- foreachの様なもの　戻り値はリスト
	a <- forM [1..5] $ \i -> do
		print i
		return i
	print a

	-- 戻り値を捨てる
	forM_ [1..5] $ \i -> do
		print i

	-- ifはelseを省略できないが、ifだけに相当するのがwhen
	r <- dice
	print r
	when (r > 7) main

	-- elseだけに相当するのがunless
	r <- dice
	print r
	unless (r < 7) main

	-- アクションから値を取り出して捨てて、次のアクションに移る
	-- アクションを連続するってことかなぁ
	print "action 1" >> print "action 2"

	-- アクションを返す関数を合成する
	f = putStr >=> print
