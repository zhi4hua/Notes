# 创建表 location,通过从表 clown_info_bakcups 从中抽出列 last_name;
CREATE TABLE location 
	AS (SELECT last_seen FROM clown_info_backups);
	
# 修改列名和添加主键列
ALTER TABLE location 
	CHANGE COLUMN last_seen location VARCHAR(20),
	ADD COLUMN location_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY;
