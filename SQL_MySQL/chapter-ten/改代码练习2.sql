# 将通过"子查询"已经达到功能的 SQL 代码,改写成非子查询.
SELECT mc.first_name, mc.last_name FROM my_contacts AS mc
	NATURAL JOIN job_current AS jc
	ORDER BY jc.salary
	-- WHERE jc.salary > AVG(salary)
	
# 结论-无法做到.
