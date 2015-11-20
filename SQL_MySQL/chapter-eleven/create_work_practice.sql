# 创建"事务"

# 1.
START TRANSACTION;
	UPDATE piggy_bank SET coin = 'Q' WHERE coin ='P'
	AND coin_year < 1970;
COMMIT;
# 2.
START TRANSACTION;
	UPDATE piggy_bank SET coin = 'N' WHERE coin = 'Q';
ROLLBACK;
