# 创建表 girls
CREATE TABLE girls (
	gir_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY ,
	girl VARCHAR(50),
	toy_id INT
);

INSERT INTO girls 
	VALUES(	1, "Jane", 3),
		(2, "Sally", 4),
		(3, "Cindy", 1);
		
# 关键表
ALTER TABLE girls ADD CONSTRAINT toys_toy_id_fk 
	FOREIGN KEY(toy_id)
	REFERENCES toys(toy_id)
