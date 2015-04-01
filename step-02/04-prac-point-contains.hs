-- 四角形型を定義し、点が含まれるかを返す

data Rect = Rect Int Int Int Int deriving Show
data Point = Point Int Int deriving Show

between origin dist target = if origin <= target && target <= origin + dist then True else False
contains (Rect x y w h) (Point a b) = (between x w a) && (between y h b)

main = do
	print $ contains (Rect 2 2 3 3) (Point 1 1)
	print $ contains (Rect 2 2 3 3) (Point 2 2)
	print $ contains (Rect 2 2 3 3) (Point 3 3)
	print $ contains (Rect 2 2 3 3) (Point 4 4)
	print $ contains (Rect 2 2 3 3) (Point 5 5)
