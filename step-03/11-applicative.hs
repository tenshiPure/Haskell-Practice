-- Applicativeスタイル

-- 前出のbindで、アクションから値が出ない様にしたいなら、入れてくれしまえば良い

import Control.Applicative

inc x   = x + 1
add x y = x + y

main = do
	-- アクションから値を取り出し関数の引数にし、関数の戻り値をアクションにする
	print =<< inc <$> return 1
	-- 関数の引数が複数の場合は、<*>で繋ぐ
	print =<< add <$> return 1 <*> return 2
