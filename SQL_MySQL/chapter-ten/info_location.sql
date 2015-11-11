# 创建表 info_location, 通过抽出其他表的数据
CREATE TABLE info_location
	AS SELECT cl.id, lo.`location_id`, de.when
		FROM location AS lo INNER JOIN (clown_info AS cl NATURAL JOIN description AS de)
			ON lo.location_id = cl.id;
