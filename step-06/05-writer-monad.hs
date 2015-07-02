-- 追記専用のStateモナド

import Control.Monad.Writer

-- main = do
-- 	print $ runWriter $ do
-- 		tell "a"
-- 		tell "b"
-- 		tell "c"
-- 		return 5

fact 0 = do
	tell ["fact 0 = 1"]
	return 1

fact n | n > 0 = do
	let dbg = "fact " ++ show n ++ " = " ++ show n ++ " * fact " ++ show (n - 1)
	tell [dbg]

	n' <- fact (n - 1)
	let ret = n * n'
	tell [dbg ++ " = " ++ show n ++ " * " ++ show n' ++ " = " ++ show ret]
	return ret

main = do
	let (a, w) = runWriter $ fact 5
	putStr $ unlines w
	print a
