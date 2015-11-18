# 代码来自于书籍<Head First SQL> 第十一章 eleven chapter
CREATE TABLE piggy_bank(
	id INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
	coin CHAR(1) NOT NULL CHECK (coin IN('Q', 'P', 'N', 'D')),
	coin_year CHAR(4)
);

# 向表中的列 coin 添加限制要求只能输入4个字母中的一个.
ALTER TABLE piggy_bank ADD CONSTRAINT CHECK(coin IN('P', 'N', 'D', 'Q'));

# 添加数据
INSERT INTO piggy_bank 
	VALUES(1, 'Q', 1950),
	(2, 'P', 1972),
	(3, 'N', 2005),
	(4, 'Q', 1999),
	(5, 'Q', 1981),
	(6, 'D', 1940),
	(7, 'Q', 1980),
	(8, 'P', 2001),
	(9, 'D', 1926),
	(10, 'P', 1999);

# 添加数据
INSERT INTO piggy_bank(coin, coin_year) VALUES('', 'Q', 1950),
	('', 'N', 2005),
	('', 'Q', 1999),
	('', 'Q', 1981),
	('', 'D', 1940),
	('', 'Q', 1980),
	('', 'P', 2001),
	('', 'D', 1926),
	('', 'P', 1999);
