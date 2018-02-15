# 尝试修改表的引擎

# 1.创建临时表
CREATE TABLE tmp (
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY
)

# 2.修改表"引擎"
# ALTER TABLE tmp TYPE = InnoDB
# 以上语句执行出错, 要将关键字 'TYPE' 改为 'ENGINE'
# ALTER TABLE tmp ENGINE = InnoDB;
