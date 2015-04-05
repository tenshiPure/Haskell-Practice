-- 以下のJSコードの置き換え

--var s = 0;
--for (var i = 1; i <= 100; ++i) {
--    s += i;
--}
--console.log(s);

--main = do
--    let loop i sum | i < 10 = do
--            print sum
--            loop (i + 1) (sum + i + 1)
--        loop _ _ = return ()
--    loop 0 0

-- 回答例
main = do
    let loop i sum | i < 10 = do
            loop (i + 1) (sum + i + 1)
		-- 最後にsumを返せば良い
        loop _ sum = sum
    print $ loop 0 0
