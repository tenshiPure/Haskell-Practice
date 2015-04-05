-- reverse, maximum, minimumをfoldlで再実装する

reverse' xs = foldl (flip (:)) [] xs
maximum' (x:xs) = foldl max x xs
minimum' (x:xs) = foldl min x xs

main = do
	print $ reverse' [-5..5]
	print $ maximum' [-5..5]
	print $ minimum' [-5..5]
