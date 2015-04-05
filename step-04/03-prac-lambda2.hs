-- 以下のコードの書き換え

add :: Int -> Int -> Int
add x y = x + y

-- 型注釈を考えるとわかりやすい
add' = \x -> \y -> x + y

main = do
    print $ add 2 3
    print $ add' 2 3
