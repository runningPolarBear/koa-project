create database myself;

use myself;

create table if not exists `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL COMMENT '名称',
  `password` varchar(20) COMMENT '密码',
  `phone` int(11) NOT NULL DEFAULT '0' COMMENT '电话',
  `created_time` DATETIME DEFAULT '1970-01-01 00:00:00' COMMENT '创建时间',
  `modified_time` DATETIME DEFAULT '1970-01-01 00:00:00' COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `created_time` (`created_time`) USING BTREE,
  KEY `modified_time` (`modified_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='用户表';
