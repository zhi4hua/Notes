# 猜猜联接结果的数据类型,然后利用刚刚设计的 UNION 写出 CREATE TABLE AS 语句
CREATE TABLE union_table AS 
# 创建 job_current 的 contact_id 列与 job_listings 的 salary 列的 UNION
SELECT contact_id FROM job_current
	UNION
SELECT salary FROM job_listings;
