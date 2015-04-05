-- bind

--「アクション」と「アクションを返す関数」を結ぶもの

inc x = return $ x + 1

main = do
	-- returnはアクション、inc関数はアクションを返す、printもアクションを返す関数（前出）
	return 2 >>= inc >>= print
	print =<< inc =<< return 2

-- bind先を「アクションを返す関数」に制限しているのは、アクションから値が出ない様にするため
