# 创建视图
CREATE VIEW pb_quarters AS
	SELECT * FROM piggy_bank
	WHERE coin = 'Q';
