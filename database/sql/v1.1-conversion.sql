-- ----------------------------
-- ����ת��������oidc �簲�˻��⣬movie Ӱ�ӿ�
-- ----------------------------
-- ----------------------------
-- ���û��˺��ڵ��簲����1000��������簲�����Ÿ��û�����������¼
-- ----------------------------
REPLACE oidc.wuan_fruit (`user_id`,`value`) SELECT user_id,points*1000 FROM oidc.wuan_points;

-- ----------------------------
-- ���û��˺��ڵ�Ӱ�ӻ�����250��������簲�����Ÿ��û�
-- ----------------------------
UPDATE oidc.wuan_fruit set `value` = `value` + (SELECT points FROM movie.points WHERE movie.points.user_id = oidc.wuan_fruit.user_id)*250;

-- ----------------------------
-- ԭ�簲��ת��,�簲���䶯��¼
-- ----------------------------
INSERT INTO oidc.wuan_fruit_log (`scene`,`user_id`,`value`,`created_at`) SELECT 1,user_id,points*1000,current_timestamp() FROM oidc.wuan_points where points > 0;

-- ----------------------------
-- Ӱ�ӻ���ת��,�簲���䶯��¼
-- ----------------------------
INSERT INTO oidc.wuan_fruit_log (`scene`,`user_id`,`value`,`created_at`) SELECT 1,user_id,points*1000,current_timestamp() FROM movie.points where points > 0;