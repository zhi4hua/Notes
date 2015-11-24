# 写出为当前的"根用户"加上密码的命令
SET PASSWORD FOR 'root'@'localhost' = PASSWORD('就是不告诉你');

# 写出为每名员工创建用户账号的三条命令.
CREATE USER Frank IDENTIFIED BY '';
CREATE USER Jim IDENTIFIED BY '';
CREATE USER Joe IDENTIFIED BY '';

# 为三名员工设计 GRANT 语句,给他们合适的权限.
GRANT SELECT, DELETE ON job_listings TO FRANK;
GRANT INSERT, SELECT ON stagg_list.* TO Jim ;
GRANT SELECT ON 好多表 TO Joe;
