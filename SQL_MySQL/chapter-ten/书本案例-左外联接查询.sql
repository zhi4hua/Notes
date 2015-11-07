# 查询两表中"姓名"与"玩具"的对应


SELECT g.girl, t.toy
  FROM girls g
    LEFT OUTER JOIN 
toys t
  ON g.toy_id = t.toy_id
