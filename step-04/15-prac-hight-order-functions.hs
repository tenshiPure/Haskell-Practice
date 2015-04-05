-- map, filter, flip, foldl, foldrを再帰で再実装する

map' _ [] = []
map' f (x:xs) = f x : (map' f xs)

filter' _ [] = []
filter' f (x:xs) = if f x then x : (filter' f xs) else (filter' f xs)

flip' f xs g = f g xs

foldl' _ acc [] = acc
foldl' f acc (x:xs) = foldl' f (f acc x) xs

foldr' _ acc [] = acc
--foldr' f acc xs = foldr' f (f acc $ last xs) (init xs)
foldr' f acc (x:xs) = f x $ foldr' f acc xs

main = do
	print $ map' (* 2) [1..5]
	print $ filter' (< 5) [1..9]
	print $ flip' map' [1..5] (* 2)
	print $ foldl' (+) 0 [1..100]
	print $ foldl' (-) 0 [1..5]
	print $ foldr' (-) 0 [1..5]
