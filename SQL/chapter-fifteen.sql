# 从一个名为 CustNew 的表中读出数据并插入 Customers 表.

# 1. 创建表 CustNew
# 1.1 复制表结构
CREATE TABLE CustNew AS SELECT * FROM Customers;
# 1.2 ID号增加5
UPDATE CustNew SET cust_id = cust_id + 5  ;
