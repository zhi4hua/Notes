# 查询"姓名"与"兴趣"

SELECT g.girl, t.toy
  FROM girls g
    INNER JOIN toys t
  ON g.toy_id = t.toy_id;
