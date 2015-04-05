-- IORef

-- アクションにより値が変更できる変数の様なもの

import Data.IORef

main = do
	a <- newIORef 1
	b <- readIORef a
	writeIORef a 2
	print =<< readIORef a
	print b
