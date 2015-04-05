-- zが出るまでランダム出力する

import System.Random

random' = getStdRandom $ randomR ('a', 'z')
call = do
	r <- random'
	print r
	if r == 'z' then print "end" else call

main = do
	call

-- わざわざcallアクション作らなくても、main呼んで再帰すれば良かった
