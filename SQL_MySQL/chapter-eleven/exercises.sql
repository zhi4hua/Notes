# 习题

INSERT INTO pb_quarters VALUES('', 'Q', 1993);
# 插入成功, 但有点需要注意,就是第1列在插入时,有可能会问题, 比如作者的版本, 需要先将修改成插入另二列的形式.

INSERT INTO pb_quarters(coin, coin_year) VALUES ('D', 1942);
# 插入成功.

INSERT INTO pb_dimes(coin, coin_year) VALUES('Q', 2005);
# 插入失败, 原因为 "视图VIEW" pb_dimes 中有条件限制 COIN = 'D'
