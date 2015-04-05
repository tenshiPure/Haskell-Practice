-- ラムダ式

inc x = x + 1
inc' = \x -> x + 1

-- 型注釈の書式が共通
dec :: Int -> Int
dec = \x -> x - 1

main = do
	print $ inc 5
	print $ inc' 5

	print $ dec 5
