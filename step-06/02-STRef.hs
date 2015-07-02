import Control.Monad
import Control.Monad.ST
import Data.STRef

sum' xs = runST $ do
	v <- newSTRef 0
	forM_ xs $ \i ->
		modifySTRef v (+ i)
	readSTRef v

main = do
	print $ sum' [1..100]

	-- IORefと違い、runSTでIOを外す事が出来る
