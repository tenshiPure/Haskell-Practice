-- import Data.IORef

-- main = do
-- 	a <- newIORef 1
-- 	writeIORef a 2  -- 破壊的代入が出来る
-- 	print =<< readIORef a


import Control.Monad
import Data.IORef

sum' xs = do
	v <- newIORef 0
	forM_ xs $ \i ->
		modifyIORef v (+ i)
	readIORef v

main = do
	print =<< sum' [1..100]

	-- 破壊的代入を関数の中に閉じ込めれば、参照透過性が保てるのではないか
