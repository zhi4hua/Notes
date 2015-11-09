# 创建表 description ,数据来自另一张表 clown_info_backups 的 appearance 列.
CREATE TABLE description AS 
	(SELECT appearance FROM clown_info_backups);
	
# 添加其他列
ALTER TABLE description 
	ADD id INT NOT NULL AUTO_INCREMENT PRIMARY KEY FIRST,
		ADD CONSTRAINT clown_info_id_fk
		foreign KEY (id)
		REFERENCES clown_info (id),
	ADD COLUMN gender CHAR(1),
	ADD COLUMN description VARCHAR(50),
	# 添加引号,否则MySQL不允许
	ADD COLUMN `when` VARCHAR(50)
