-- Rect, Point を3次元に対応させる

data Rect = Rect Int Int Int Int | Rect3D Int Int Int Int Int Int deriving Show
data Point = Point Int Int | Point3D Int Int Int deriving Show

between origin dist target = if origin <= target && target <= origin + dist then True else False
contains (Rect x y w h) (Point a b) = (between x w a) && (between y h b)
contains (Rect3D x y z w h d) (Point3D a b c) = (between x w a) && (between y h b) && (between z d c)

main = do
	print $ contains (Rect 2 2 3 3) (Point 1 1)
	print $ contains (Rect 2 2 3 3) (Point 2 2)
	print $ contains (Rect 2 2 3 3) (Point 3 3)
	print $ contains (Rect 2 2 3 3) (Point 4 4)
	print $ contains (Rect 2 2 3 3) (Point 5 5)
	print $ contains (Rect3D 2 2 2 3 3 3) (Point3D 1 1 1)
	print $ contains (Rect3D 2 2 2 3 3 3) (Point3D 2 2 2)
	print $ contains (Rect3D 2 2 2 3 3 3) (Point3D 3 3 3)
	print $ contains (Rect3D 2 2 2 3 3 3) (Point3D 4 4 4)
	print $ contains (Rect3D 2 2 2 3 3 3) (Point3D 5 5 5)
