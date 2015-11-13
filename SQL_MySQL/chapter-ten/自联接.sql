# 通过"别名"进行自我联接
SELECT c1.name, c2.name AS boss
	FROM clown_info c1
	INNER JOIN clown_info c2
	ON c1.boss_id = c2.id;
