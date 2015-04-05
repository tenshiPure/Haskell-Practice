-- 以下のコードのdoubleを排除する

f xs g = [g x | x <- xs]
double x = 2 * x

main = do
	print $ f [1..5] double
	print $ f [1..5] $ (*) 2
