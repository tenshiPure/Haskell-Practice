-- replicateM, replicateM_, forM, forM_, when, unlessを再実装する

import Control.Monad
import Control.Applicative
import System.Random

dice = getStdRandom $ randomR (1, 6) :: IO Int

replicateM' 0 _ = return []
replicateM' n action | n > 0 = (:) <$> action <*> replicateM' (n - 1) action

replicateM_' 0 _ = return []
replicateM_' n action | n > 0 = action >> replicateM_' (n - 1) action

forM' [] _ = return []
forM' (x:xs) action = (:) <$> action x <*> forM' xs action

forM_' [] _ = return []
forM_' (x:xs) action = action x >> forM_' xs action

when' bool action = if bool then action else return ()
unless' bool action = if bool then return () else action

main = do
	print =<< replicateM' 5 dice

	putStrLn "---"

	replicateM_ 3 $ do
		print =<< dice

	putStrLn "---"

	a <- forM' [1..3] $ \i -> do
		print i
		return i
	print a

	putStrLn "---"

	forM_' [1..3] $ \i -> do
		print i

	putStrLn "---"

	r <- dice
	print r
	when' (r /= 3) main

	putStrLn "---"

	r <- dice
	print r
	unless' (r /= 3) main
