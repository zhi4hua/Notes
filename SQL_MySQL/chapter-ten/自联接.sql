# 通过"别名"进行自我联接
SELECT c1.name, c2.name AS boss
	FROM clown_info c1
	INNER JOIN clown_info c2
	ON c1.boss_id = c2.id;
-- 惊讶的发现以上代码真是能名显示出意料之外的结果,就是显示的图真的如书上一样,自已对自己.
