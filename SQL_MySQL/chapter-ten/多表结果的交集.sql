# 显示被查询两张表结果的共有结果.
SELECT title FROM job_current
	INTERSECT
SELECT title FROM job_desired;
