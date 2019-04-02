-- ----------------------------
-- Table structure for wuan_fruit
-- ----------------------------
CREATE TABLE `wuan_fruit`  (
  `user_id` int(10) UNSIGNED NOT NULL COMMENT '�û�id',
  `value` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '�簲��',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '�簲��' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wuan_sign
-- ----------------------------
CREATE TABLE `wuan_sign`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(10) UNSIGNED NOT NULL COMMENT '�û�id',
  `value` int(10) UNSIGNED NOT NULL COMMENT '����ǩ�����͵��簲������',
  `created_at` timestamp(0) NOT NULL ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '����ʱ��',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = 'ǩ����¼��' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wuan_fruit_log
-- ----------------------------
CREATE TABLE `wuan_fruit_log`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `scene` tinyint(2) UNSIGNED NOT NULL DEFAULT 0 COMMENT '������0δ֪��1������2ǩ��',
  `user_id` int(10) UNSIGNED NOT NULL COMMENT '�û�id',
  `value` int(10) UNSIGNED NOT NULL COMMENT '�簲������',
  `created_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '�簲����־��' ROW_FORMAT = Dynamic;
