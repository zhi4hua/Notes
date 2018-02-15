# 创建表 activities ,通过抽出表 clown_info_backups 中数据列 activity
CREATE TABLE activities AS 
  (SELECT activities FROM clown_info_backups);
  
# 添加主键
ALTER TABLE activities ADD COLUMN activity_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY FIRST;

# 改列名
ALTER TABLE activities CHANGE activities activity VARCHAR(20);
