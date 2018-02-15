# 返回被查询表的不共有的结果,结果当中只包含第1张表的.
SELECT title FROM job_current
	EXCEPT
SELECT title FROM job_desired;
