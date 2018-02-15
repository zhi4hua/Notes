# 创建用户
CREATE USER elsie IDENTIFIED BY 'cl3v3rp4s5w0rd';

# 授予权限
GRANT SELECT ON clown_info TO elsie;
GRANT SELECT ON activities TO elsie;
GRANT SELECT ON location TO elsie;
GRANT SELECT ON info_activities TO elsie;
GRANT SELECT ON info_location TO elsie;

# 7.授予用户 Doc SELECT 表 chores 内容的权限.
GRANT SELECT ON chores TO Doc;
# 8.授予Sleepy DELETE 表 Talking_animals 内容的权限,同时也允许 Sleepy 
#   把 DELETE 表 talking_animals 内容的权限GRANT 其他人.
GRANT DELETE ON talking_animals TO Sleepy WITH GRANT OPTION;
# 9. 把操作表 chores 的所有权限授予所有用户.
GRANT ALL ON chores TO (用户名);
# 10.立刻就可为 Doc 设定 SELECT 权限, 权限致胜范围是 woodland_cottage 数据库中的所有表.
GRANT SELECT ON woodland_cottage.* TO Doc;
