# 创建表 clown_info ,通过抽出表 clown_info_backup 中的列 name.
CREATE TABLE clown_info AS SELECT name FROM clown_info_backup;
# 添加列 id
ALTER TABLE clown_info ADD COLUMN id INT NOT NULL AUTO_INCREMENT PRIMARY KEY FIRST;
