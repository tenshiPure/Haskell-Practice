-- 直和型

-- サブクラスの様なイメージ
data Test = TestInt Int | TestStr String deriving Show

foo (TestInt 1) = "TestInt"
foo (TestStr "1") = "TestStr"
foo _ = "?"

main = do
	print $ foo $ TestInt 1
	print $ foo $ TestStr "1"
