# 返回每个人的电子邮件地址的查询，要求 1.不在表 job_current 中，2.至少有一项兴趣。
SELECT mc.email FROM my_contacts AS mc
  WHERE NOT EXISTS
  	(SELECT * FROM job_current AS jc 
  		WHERE jc.contacts_id = mc.contacts_id)
  	AND EXISTS
  		(SELECT * FROM contacts_interest AS i 
  			WHERE i.contacts_id = mc.contacts_id)
