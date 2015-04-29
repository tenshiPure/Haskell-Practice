-- modifyIORefに相当する配列の関数を実装する

import Data.Array.IO
import Control.Applicative

modifyArray array i f = do
	array' <- readArray array i
	writeArray array 1 $ f array'

-- 別解
-- <$> はアクションの値を関数の引数にしてアクションに繋ぐ
modifyArray' array i f = writeArray array i =<< f <$> readArray array i
	

main = do
	array <- newArray (0, 2) 0 :: IO (IOUArray Int Int)
	print =<< getElems array
	modifyArray array 1 (+ 5)
	print =<< getElems array
