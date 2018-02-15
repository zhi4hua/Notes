# 请在已经错误执行以下命令后, 撤消, 使之回到 SELECT 权限.

# GRANT SELECT, INSERT, DELETE ON zip_code TO elsie;
REVOKE DELETE, INSERT ON zip_code FROM elsie;

# GRANT ALL ON clown_info TO elsie;
REVOKE DELETE, INSERT, UPDATE ON clown_info FROM elsie;

# GRANT SELECT, INSERT ON activities TO elsie;
REVOKE INSERT ON activities FROM elsie;

# GRANT DELETE, SELECT ON info_location TO elsie WITH GRANT OPTION;
REVOKE GRANT OPTION DELETE ON info_location FROM elsie CASCADE;

# GRANT INSERT(boy), DELETE ON boys TO elsie;
REVOKE INSERT, DELETE ON boys FROM elsie;
GRANT SELECT ON boys TO elsie;
