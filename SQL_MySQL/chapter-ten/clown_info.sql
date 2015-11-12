# 创建表 clown_info ,通过抽出表 clown_info_backup 中的列 name.
CREATE TABLE clown_info AS SELECT name FROM clown_info_backup;
# 添加列 id
ALTER TABLE clown_info ADD COLUMN id INT NOT NULL AUTO_INCREMENT PRIMARY KEY FIRST;

# 添加一新列 boss_id 放在最后
ALTER TABLE clown_info ADD COLUMN boss_id INT;

# 复制表 clown_boss 的列 boss_id 到表 clown
--  INSERT INTO clown_boss AS cb (boss_id) SELECT boss_id FROM clown_boss WHERE ID <= (SELECT MAX(id) FROM cb);
# 以上语句有问题,使用了错误的"追加"数据,但实际需要的是"更新"
UPDATE  clown_boss AS cb INNER JOIN clown_info AS ci
  ON ci.id = cb.id
  SET ci.boss_id = cb.boss_id;
  
# 另一种方式,达到以上效果
/*
  UPDATE  clown_boss AS cb INNER JOIN clown_info AS ci
  SET ci.boss_id = cb.boss_id
  WHERE ci.id = cb.id;
  */
