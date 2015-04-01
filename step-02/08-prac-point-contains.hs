-- レコードを用いる

data Rect = Rect {x :: Int, y :: Int, w :: Int, h :: Int} deriving Show
data Point = Point {px :: Int, py :: Int}

between origin dist target = if origin <= target && target <= origin + dist then True else False
contains (Rect x y w h) (Point a b) = (between x w a) && (between y h b)

main = do
	print $ contains (Rect {x = 2, y = 2, w = 3, h = 3}) (Point {px = 1, py = 1})
	print $ contains (Rect {x = 2, y = 2, w = 3, h = 3}) (Point {px = 2, py = 2})
	print $ contains (Rect {x = 2, y = 2, w = 3, h = 3}) (Point {px = 3, py = 3})
	print $ contains (Rect {x = 2, y = 2, w = 3, h = 3}) (Point {px = 4, py = 4})
	print $ contains (Rect {x = 2, y = 2, w = 3, h = 3}) (Point {px = 5, py = 5})
