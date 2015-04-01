-- 列挙型

data Color = Red | Green

-- Show機能の追加
data Printable = Black | White deriving Show

-- Enum機能を追加すると、列挙型 <--> 数値型の相互変換が出来る
data Convertible = Cyan | Magenta | Yellow deriving (Show, Enum)

main = do
	-- printできない
--	print Red

	print White

	print $ fromEnum Magenta
	print (toEnum 0 :: Convertible)
