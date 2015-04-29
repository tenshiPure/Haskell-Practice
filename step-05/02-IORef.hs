-- IORef

import System.Random
import Data.IORef

main = do
--	a <- newIORef =<< (getStdRandom $ randomR (0, 9) :: IO Int)
--	a' <- readIORef a
--	writeIORef a (a' + 1)
--	print =<< readIORef a

	a <- newIORef =<< (getStdRandom $ randomR (0, 9) :: IO Int)
	modifyIORef a (+ 1)
	print =<< readIORef a

	-- 書き換えは上記どちらでも可能
	-- 下記はセクションを用いている
