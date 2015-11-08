# 创建已经创建成功的 clown_info 的"克隆人", clown_info_2
# 创建原因为想通过其他方式,以练习编程能力.
CREATE TABLE clown_info_2 (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(50)
);

# 添加数据
INSERT INTO clown_info_2 (name) SELECT  name FROM clown_info_backups;
