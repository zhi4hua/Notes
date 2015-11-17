# 代码来自于书籍<Head First SQL> 第十一章 eleven chapter
CREATE TABLE piggy_bank(
	id INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
	coin CHAR(1) NOT NULL CHECK (coin IN('Q', 'P', 'N')),
	coin_year CHAR(4)
);

# 向表中的列 coin 添加限制要求只能输入4个字母中的一个.
ALTER TABLE coin ADD coin NOT NULL CHECK(coin IN('P', 'N', 'D', 'Q'));
