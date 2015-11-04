# 列出每个邮政编码涵盖地区中当前薪资最高的人。

# SELECT mc.frist_name, mc.last_name, jc.salary, mc.zip_code
#  FROM my_contacts AS mc NATURAL JOIN job_current AS jc

# 第个地区有谁？
#SELECT mc.first_name, mc.last_name, zc.city, jc.salary
  #FROM my_contacts AS mc NATURAL JOIN zip_code AS zc NATURAL JOIN job_current AS jc
  #ORDER BY zc.city
  #GROUP BY zc.city;
  
# 正确答案

SELECT frist_name, last_name FROM my_contacts
  WHERE zip_code in (SELECT zip_code FROM zip_code NATURAL JOIN job_current AS jc
    WHERE jc.salary = (SELECT MAX(jc.salary) FROM job_current))
