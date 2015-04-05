-- IO

import System.Random

-- 型注釈
dice :: IO Int
dice = getStdRandom $ randomR (1, 6)

main = do
	print =<< dice
