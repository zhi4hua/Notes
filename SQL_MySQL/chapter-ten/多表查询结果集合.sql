# 集合多个单独的查询结果
SELECT title FROM job_current
UNION
SELECT title FROM job_desired
UNION
SELECT title FROM job_listings
	ORDER BY title;

-- 补充:如果将关键字 UNION 换 UNION ALL 可以看到重复项.
