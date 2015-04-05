-- 以下のJSコードの置き換え

--function counter() {
--    var c = 0;
--    return function() {
--        return ++c;
--    };
--}

--var f = counter();
--console.log(f());
--console.log(f());
--console.log(f());

import Data.IORef

counter = do
	c <- newIORef 0
	return $ do
		tmp <- readIORef c
		writeIORef c $ tmp + 1
		readIORef c

main = do
	f <- counter
	print =<< f
	print =<< f
	print =<< f
	print =<< f
