import Control.Monad
import Control.Monad.State

sum' xs = (`execState` 0) $ do
	forM_ xs $ \i ->
		modify (+ i)

main = do
	let a = return 1 :: State s Int
	print $  runState a ()  -- (値, 状態)
	print $ evalState a ()  --  値     
	print $ execState a ()  --      状態 

	print $ sum' [1..100]
