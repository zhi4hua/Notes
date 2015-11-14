# 将"自然查询"改写为"子查询"
SELECT c1.name, c2.name AS boss
	FROM clown_info c1, clown_info c2
	WHERE c1.boss_id = c2.id
	
# 书上答案
--SELECT c1.name, (SELECT name FROM clown_info WHERE c1.boss_id = id) AS boss
--	FROM clown_info c1;
-- 经过测试都能用,2段代码.
