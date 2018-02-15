# 查询不在表 job_current 中的每位。

SELECT mc.first_name, mc.last_name FROM my_contacts AS mc
  WHERE NOT EXISTS
    (SELECT * FROM job_current AS jc
      WHERE jc.contacts_id = mc.contacts_id)
