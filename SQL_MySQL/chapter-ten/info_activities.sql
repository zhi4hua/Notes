# 创建外联表 info_activities,使之能够连接二张表 clown_info, activities
CREATE TABLE info_activities 
	AS SELECT id, activity_id FROM clown_info,  activities
		WHERE id = activity_id;
		
# 添加外联关系.
ALTER TABLE info_activities 
	ADD CONSTRAINT clown_info_id_fk
	FOREIGN KEY (id)
	REFERENCES clown_info (id),
	ADD CONSTRAINT activities
	FOREIGN KEY (activity_id)
	REFERENCES activities (activity_id);
