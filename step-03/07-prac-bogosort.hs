-- ボゴソート

import System.Random

shuffle [] = return []
shuffle xs = do
	n <- getStdRandom $ randomR (0, length xs - 1) :: IO Int
	xs' <- shuffle $ take n xs ++ drop (n + 1) xs
	return $ (xs !! n) : xs'

isSorted xs = xs == [1..9]

bogosort xs | isSorted xs = return xs
bogosort xs = do
	xs' <- shuffle xs
	if isSorted xs'
		then return xs'
		else bogosort xs'

main = do
	xs <- shuffle [1..9]
	print xs
	print =<< bogosort xs
