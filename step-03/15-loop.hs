-- ループ

import Data.IORef

-- IORefを使う
--main = do
--	i <- newIORef 0
--	let loop = do
--		i' <- readIORef i
--		if i' < 5
--			then do
--				print i'
--				writeIORef i $ i' + 1
--				loop
--			else
--				return ()
--	loop

-- カウンター引数を使う
main = do
    let loop i | i < 5 = do
            print i
            loop $ i + 1
        loop _ = return ()
    loop 0
