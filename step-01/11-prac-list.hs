-- リスト関数の再実装

length' []     = 0
length' (_:xs) = 1 + length' xs

take' _ [] = []
take' n _ | n < 1 = []
take' n (x:xs) = x : take' (n - 1) xs

drop' _ [] = []
drop' n xs | n < 1 = xs
drop' n (x:xs) = drop' (n - 1) xs

reverse' [] = []
reverse' (x:xs) = reverse' xs ++ [x]

sum' [] = 0
sum' (x:xs) = x + sum' xs


product' [] = 1
product' (x:xs) = x * product' xs

main = do
	print $ (length [1..5]) == (length' [1..5])
	print $ (take 3 [1..5]) == (take' 3 [1..5])
	print $ (drop 3 [1..5]) == (drop' 3 [1..5])
	print $ (reverse [1..5]) == (reverse' [1..5])
	print $ (sum [1..5]) == (sum' [1..5])
	print $ (product [1..5]) == (product' [1..5])
