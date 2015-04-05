-- 以下のコードをカリー化したラムダ式で書き換える

combine a b c = a:b:[c]
combine' = \a -> \b -> \c -> a:b:[c]

main = do
    let a = combine 1
        b = a 2
        c = b 3
    print c
    print $ combine 'a' 'b' 'c'
    print $ combine' 'a' 'b' 'c'
