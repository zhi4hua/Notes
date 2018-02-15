# 创建视图, 不过作者在抄写代码时还是不知道"视图"的功能.
CREATE VIEW web_designers AS 
	SELECT mc.first_name, mc.last_name,  mc.email # 没有电话号列 , mc.phone
	FROM my_contacts mc
	NATURAL JOIN job_desired jd;
	-- WHERE jd.title = 'web Desi
	
# 由于表 "job_desired" 中没有数据,所以创建失败.
