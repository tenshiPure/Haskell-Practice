-- 以下のコードの <- を排除する

import Control.Applicative

fib 0 = return 0
fib 1 = return 1
fib n | n > 1 = do
    a <- fib (n - 2)
    b <- fib (n - 1)
    return $ a + b

fib' 0 = return 0
fib' 1 = return 1
fib' n | n > 1 = do
	-- (+)の引数は fib' から取り出した値と fib' から取り出した値　（んで、アクションを返す）
    (+) <$> fib' (n - 2) <*> fib' (n - 1)

main = do
    print =<< fib 6
    print =<< fib' 6
