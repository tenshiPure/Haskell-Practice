-- 読み取り専用のStateモナド

import Control.Monad.Reader

main = do
	print $ (`runReader` 1) $ do
		a <- ask
		return $ a + 1
