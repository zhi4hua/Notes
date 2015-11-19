# 更新命令和 "视图" 的合力使用.
UPDATE pb_quarters SET coin = 'Q' WHERE coin = 'P';

# 命令执行成功,但没有实际数据的影响,因为操作是对"临时"的表.
