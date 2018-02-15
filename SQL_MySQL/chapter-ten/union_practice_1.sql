# 创建 job_current 的 contact_id 列与 job_listings 的 salary 列的 UNION
SELECT contacts_id FROM job_current
	UNION
SELECT salary FROM job_listings;
