DROP TABLE IF EXISTS `business_record`;
CREATE TABLE `business_record` (
  `id` varchar(50) NOT NULL COMMENT '主键',
  `node_name` varchar(100) DEFAULT NULL COMMENT '业务节点名',
  `opt_name` varchar(100) DEFAULT NULL COMMENT '操作人姓名',
  `opt_id` varchar(50) DEFAULT NULL COMMENT '操作人id',
  `business_key` varchar(50) DEFAULT NULL COMMENT '业务主键id',
  `result` varchar(10) DEFAULT NULL COMMENT '结论（通过、回退）',
  `note` varchar(400) DEFAULT NULL COMMENT '操作意见',
  `statusno` int(10) unsigned zerofill DEFAULT NULL COMMENT '有效状态（0为有效，1位无效）',
  `sys_insert_time` datetime DEFAULT NULL COMMENT '数据新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;