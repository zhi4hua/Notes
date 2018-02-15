# 删除语句和 "视图" 的使用.
# 猜测结果, "命令"无法执行.
DELETE FROM pb_quarters WHERE coin = 'N' OR coin = 'P' OR coin = 'D';

# 实际执行结果:mysql> DELECT FROM pb_quarters WHERE coin = 'N' OR coin = 'P' OR coin = 'D';
#	ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that
#	corresponds to your MySQL server version for the right syntax to use near 'DELEC
# T FROM pb_quarters WHERE coin = 'N' OR coin = 'P' OR coin = 'D'' at line 1

# 真实答案, 又错了, 结果应该是"没有影响", 之所以会出现上述, 因为拼写错了命令 "DELETE", 写成了 "DELECT"
