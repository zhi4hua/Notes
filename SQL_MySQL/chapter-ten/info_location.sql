# 创建表 info_location, 通过抽出其他表的数据
CREATE TABLE info_location
	AS SELECT cl.id, lo.`location_id`, de.when
		FROM location AS lo INNER JOIN (clown_info AS cl NATURAL JOIN description AS de)
			ON lo.location_id = cl.id;

# 添加外联接
ALTER TABLE info_location	
		ADD CONSTRAINT clown_info_id_fk
			FOREIGN KEY(id)
			REFERENCES clown_info(id),
		ADD CONSTRAINT location_locaion_id_fk
	    		FOREIGN KEY(location_id)
	    		REFERENCES loaction(location_id);
		
