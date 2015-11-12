# 创建表 clown_boss
CREATE TABLE clown_boss (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  boss_id INT,
);

# 添加数据
INSERT INTO clown_boss(boss_id)
  VALUES(3),
        (5),
        (10),
        (3),
        (10),
        (3),
        (3),
        (5),
        (5),
        (10);

# 添加外联系关系,联接表 clown_info
ALTER TABLE clown_boss
	ADD CONSTRAINT clown_info_id_fk
		FOREIGN KEY (boss_id)
		REFERENCES clown_info (id);
