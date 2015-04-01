-- 光の三原色を2つ取り混合する

data Color = Blue | Red | Green | Cyan | Magenta | Yellow | White deriving (Show, Enum)

mix Blue Red   = Magenta
mix Blue Green = Cyan
mix Red  Green = Yellow

-- 上記パターンに引っかからなかった場合
mix c1 c2 = mix c2 c1

main = do
	print $ mix Blue Red
	print $ mix Blue Green
	print $ mix Green Blue
