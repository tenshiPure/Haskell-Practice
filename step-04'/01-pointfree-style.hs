-- ポイントフリースタイル

-- xがポイントと言うらしい　値のこと
-- こいつを排除するのがポイントフリースタイルと言うらしい
--hoge x = f (g x)

add2 n = n + 2
add3 n = n + 3

-- 基本
a x = add2 (add3 x)
b x = (add2 . add3) x
c = add2 . add3

-- f . g と (.) f g は同じ
-- (f .) g, (. g) f も同じ　中置演算子の部分適用、だったっけ

-- foo x y = f x y　これは両右端から y を排除できる
-- foo x = f x　もう一度両右端から x を排除
-- foo = f

main = do
	print $ a 1
	print $ b 1
	print $ c 1
