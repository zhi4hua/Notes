# 创建表 girls
CREATE TABLE girls {
	gir_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY DEFAULT 0,
	girl VARCHAR(50),
	toy_id INT
};

INSERT INTO girls 
	VALUES(	1, "Jane", 3);
				(2, "Sally", 4),
				(3, "Cindy", 1);
