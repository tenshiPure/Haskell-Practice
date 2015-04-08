-- 問題

foo x y = f (g x y)

-- まず y 排除を目指す
-- g x を一旦g' に読み替える
foo x y = f (g' y)
 where g' = g x

-- f (g x) の形を関数合成にする
foo x y = f . g' y
 where g' = g x

-- y 排除
foo x = f . g'
 where g' = g x

-- whereを戻す
foo x = f . g . x

-- 最後に x を排除
foo = f . g


-- 別の考え方

-- (f .)を f' とする
foo x = f' (g x)
 where f' = (f .)

-- f (g x)の形を関数合成にする
foo x = f' . g x

-- x 排除
foo = f' . g

foo = (f .) . g
