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

# 抽出列 "appearance" 当中的值分解后添加其他列当中(排除列id)

# 抽出列 "appearance" 当的"性别" 添加到 "gender" 列当中.
UPDATE description 
	SET gender = SUBSTRING_INDEX(appearance, ',', 1);
# 删除已经"抽出"的数据
UPDATE description 
	SET appearance = SUBSTR(appearance, LENGTH(gender) + 1);
# 抽出列 "appearance" 当中的 "样貌" 添加到 "descripition" 
UPDATE description
        SET description = SUBSTRING_INDEX(appearance, ',', 1);
# 删除已经"抽出"的数据
UPDATE description
        SET appearance = SUBSTR(appearance, LENGTH(description) + 1);
# 抽出列 "什么时候" 添加到列 "when"
UPDATE description
        SET appearance = appearance; -- 逻辑错误, 应写为 SET 'when' = appearance
# 删除列 "appearance"
ALTER TABLE description DROP appearance;

# 逻辑有错, 在执行抽出列 "when" 时误将 "自己" = "自己",结果导致没有源数据.
# 补救措施,从表 clown_info_backups 中找回数据组,最后重新"抽出"列 'when'
UPDATE description AS de, clown_info_backups AS cib 
	SET de.`when` = cib.`appearance`
# 删除列 'when' 当中多余数据
UPDATE description
	SET `when` = TRIM(SUBSTRING_INDEX(`when`, ',', -1));
