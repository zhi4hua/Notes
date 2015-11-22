# 创建用户
CREATE USER elsie IDENTIFIED BY 'cl3v3rp4s5w0rd';

# 授予权限
GRANT SELECT ON clown_info TO elsie;
GRANT SELECT ON activities TO elsie;
GRANT SELECT ON location TO elsie;
GRANT SELECT ON info_activities TO elsie;
GRANT SELECT ON info_location TO elsie;
