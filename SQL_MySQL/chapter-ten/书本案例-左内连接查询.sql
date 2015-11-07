# 查询两表中"姓名"与"玩具"的对应

SELECT g.girl, t.toy
	FORM girls AS g
		LEFT OUTER JOIN
	toys AS t
	ON t.toy_id = g.toy_id;
