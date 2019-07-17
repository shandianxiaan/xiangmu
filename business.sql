/*
MySQL Data Transfer
Source Host: localhost
Source Database: business
Target Host: localhost
Target Database: business
Date: 2019/1/2 8:11:02
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for customer
-- ----------------------------
CREATE TABLE `customer` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `customerName` varchar(255) DEFAULT NULL COMMENT '客户名称',
  `customerAddress` varchar(255) DEFAULT NULL COMMENT '客户地址',
  `customerTele` varchar(255) DEFAULT NULL COMMENT '客户电话',
  `cname` varchar(255) DEFAULT NULL COMMENT '联系人姓名',
  `cphone` varchar(255) DEFAULT NULL COMMENT '联系人手机号',
  `identity` varchar(255) DEFAULT NULL COMMENT '身份证号',
  `cmail` varchar(255) DEFAULT NULL COMMENT '邮箱',
  `cbank` varchar(255) DEFAULT NULL COMMENT '开户银行',
  `caccount` varchar(255) DEFAULT NULL COMMENT '银行账号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for goods
-- ----------------------------
CREATE TABLE `goods` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `goodsName` varchar(255) DEFAULT NULL COMMENT '商品名称',
  `batch` varchar(255) DEFAULT NULL COMMENT '批号',
  `license` varchar(255) DEFAULT NULL COMMENT '批准文号',
  `productAddress` varchar(255) DEFAULT NULL COMMENT '生产地址',
  `number` int(11) DEFAULT NULL COMMENT '库存数',
  `goodSize` varchar(255) DEFAULT NULL COMMENT '规格',
  `packaging` varchar(255) DEFAULT NULL COMMENT '包装',
  `price` int(11) DEFAULT NULL COMMENT '价格',
  `warnshort` int(11) DEFAULT NULL COMMENT '预警库存低',
  `sname` varchar(255) DEFAULT NULL COMMENT '供应商',
  `tname` varchar(255) DEFAULT NULL COMMENT '类别',
  `warnhight` int(11) DEFAULT NULL COMMENT '预警库存高',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for goodstype
-- ----------------------------
CREATE TABLE `goodstype` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `typeName` varchar(255) DEFAULT NULL COMMENT '类型名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for manager
-- ----------------------------
CREATE TABLE `manager` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `username` varchar(255) DEFAULT NULL COMMENT '用户名',
  `password` varchar(255) DEFAULT NULL COMMENT '密码',
  `role` varchar(255) DEFAULT NULL COMMENT '等级权限',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for preturn
-- ----------------------------
CREATE TABLE `preturn` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `utime` varchar(255) DEFAULT NULL COMMENT '退货时间',
  `reason` varchar(255) DEFAULT NULL COMMENT '退货理由',
  `pid` int(11) DEFAULT NULL COMMENT '采购单编号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for purchase
-- ----------------------------
CREATE TABLE `purchase` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `pnumber` int(11) DEFAULT NULL COMMENT '采购数量',
  `total` int(11) DEFAULT NULL COMMENT '金额',
  `message` varchar(255) DEFAULT NULL COMMENT '备注',
  `muser` varchar(255) DEFAULT NULL COMMENT '经手人',
  `rtime` varchar(255) DEFAULT NULL COMMENT '采购时间',
  `gid` int(11) DEFAULT NULL COMMENT '商品编号',
  `status` varchar(255) DEFAULT NULL COMMENT '订单状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for sales
-- ----------------------------
CREATE TABLE `sales` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `muser` varchar(255) DEFAULT NULL COMMENT '经手人',
  `cnumber` int(11) DEFAULT NULL COMMENT '销售数量',
  `sprice` int(11) DEFAULT NULL COMMENT '销售价格',
  `sTotal` int(11) DEFAULT NULL COMMENT '应收金额',
  `discout` int(11) DEFAULT NULL COMMENT '折扣后的实收价格',
  `rtime` varchar(255) DEFAULT NULL COMMENT '销售时间',
  `gid` int(11) DEFAULT NULL COMMENT '商品编号',
  `cid` int(11) DEFAULT NULL COMMENT '客户编号',
  `status` varchar(255) DEFAULT NULL COMMENT '订单状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for sreturn
-- ----------------------------
CREATE TABLE `sreturn` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `utime` varchar(255) DEFAULT NULL COMMENT '退货时间',
  `suser` varchar(255) DEFAULT NULL COMMENT '经手人',
  `reason` varchar(255) DEFAULT NULL COMMENT '理由',
  `sid` int(11) DEFAULT NULL COMMENT '销售单编号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for supply
-- ----------------------------
CREATE TABLE `supply` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `companyName` varchar(255) DEFAULT NULL COMMENT '企业名称',
  `supplyAddress` varchar(255) DEFAULT NULL COMMENT '地址',
  `supplyTele` varchar(255) DEFAULT NULL COMMENT '电话',
  `sname` varchar(255) DEFAULT NULL COMMENT '联系人姓名',
  `sphone` varchar(255) DEFAULT NULL COMMENT '联系人手机',
  `smail` varchar(255) DEFAULT NULL COMMENT '邮箱',
  `sbank` varchar(255) DEFAULT NULL COMMENT '开户银行',
  `saccount` varchar(255) DEFAULT NULL COMMENT '银行账号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records 
-- ----------------------------
INSERT INTO `customer` VALUES ('1', '卜蜂莲花', '北京', '545644', '李想', '15214635445', '102547755665', '78566@qq.com', '北京发展银行', '65456245621512');
INSERT INTO `customer` VALUES ('2', '沃尔玛', '上海', '545648', '吴小信', '15214639445', '102997755665', '78556@qq.com', '浦发银行', '654569005621512');
INSERT INTO `customer` VALUES ('3', '家乐福', '北京', '845648', '郑杰', '15299639445', '102997759965', '888556@qq.com', '北京农业银行', '6545692220000621512');
INSERT INTO `customer` VALUES ('4', '永旺', '上海', '788999', '赵小杰', '15290039445', '102998659965', '10101556@qq.com', '建设银行', '654569555621512');
INSERT INTO `customer` VALUES ('5', '盒马生鲜', '北京', '8516465', '赵小灵', '15678905467', '420923199709245', '56535686@qq.com', '北京农业银行', '59856433234588223');
INSERT INTO `goods` VALUES ('1', '薯片', '2018', '2000', '上海', '40', '12g', '袋装', '5', '50', '乐事（中国）有限公司', '食品', '500');
INSERT INTO `goods` VALUES ('2', '可乐', '2018', '2000', '武汉', '500', '500ml', '瓶装', '3', '50', '百事公司', '酒水饮料', '500');
INSERT INTO `goods` VALUES ('3', '秭归脐橙', '2018', '2000', '秭归', '322', '500g', '袋装', '10', '50', '秭归农商', '生鲜水果', '500');
INSERT INTO `goods` VALUES ('4', '黑人牙膏', '2018', '2000', '广州', '800', '120g', '支装', '15', '50', '广州宝洁有限公司', '日用百货', '800');
INSERT INTO `goodstype` VALUES ('1', '食品');
INSERT INTO `goodstype` VALUES ('2', '日用百货');
INSERT INTO `goodstype` VALUES ('3', '生鲜水果');
INSERT INTO `goodstype` VALUES ('4', '服饰');
INSERT INTO `goodstype` VALUES ('6', '酒水饮料');
INSERT INTO `goodstype` VALUES ('7', '电器');
INSERT INTO `goodstype` VALUES ('11', '儿童玩具');
INSERT INTO `manager` VALUES ('1', '1001', '123', '1');
INSERT INTO `manager` VALUES ('2', '1002', '123', '1');
INSERT INTO `manager` VALUES ('3', '1003', '123', '1');
INSERT INTO `manager` VALUES ('4', '2001', '123', '2');
INSERT INTO `manager` VALUES ('5', '1004', '123', '1');
INSERT INTO `manager` VALUES ('6', '1005', '123', '1');
INSERT INTO `preturn` VALUES ('5', '2018-12-19 19:34:47', '不好吃', '6');
INSERT INTO `preturn` VALUES ('6', '2018-12-20 11:51:03', '假的', '7');
INSERT INTO `preturn` VALUES ('7', '2018-12-24 12:03:23', '假的', '10');
INSERT INTO `preturn` VALUES ('8', '2018-12-24 12:18:33', '假的', '11');
INSERT INTO `purchase` VALUES ('1', '200', '1000', '质量要好', '1001', '2018-12-18', '1', '已完成');
INSERT INTO `purchase` VALUES ('2', '20', '100', '速度快点', '1001', '2018-12-18 13:08:43', '1', '已完成');
INSERT INTO `purchase` VALUES ('6', '200', '2000', '好吃', '1001', '2018-12-19 19:34:35', '3', '已退货');
INSERT INTO `purchase` VALUES ('7', '200', '3000', '好', '1001', '2018-12-20 11:50:42', '4', '已退货');
INSERT INTO `purchase` VALUES ('8', '200', '600', '好点的', '1001', '2018-12-22 14:56:02', '2', '已完成');
INSERT INTO `purchase` VALUES ('9', '300', '3000', '新鲜的', '1001', '2018-12-22 14:56:39', '3', '已完成');
INSERT INTO `purchase` VALUES ('10', '200', '600', '好喝', '1001', '2018-12-24 12:03:03', '5', '已退货');
INSERT INTO `purchase` VALUES ('11', '800', '12000', '好的', '1001', '2018-12-24 12:18:19', '4', '已退货');
INSERT INTO `sales` VALUES ('1', '1001', '20', '15', null, '280', '2018-12-18', '1', '1', '已完成');
INSERT INTO `sales` VALUES ('2', '1001', '50', '6', null, '300', '2018-12-20', '3', '2', '已完成');
INSERT INTO `sales` VALUES ('3', '1001', '20', '4', null, '80', '2018-12-20', '2', '4', '已退货');
INSERT INTO `sales` VALUES ('4', '1001', '30', '5', null, '150', '2019-02-23', '2', '2', '已完成');
INSERT INTO `sales` VALUES ('5', '1001', '50', '6', null, '300', '2018-12-11', '1', '2', '已完成');
INSERT INTO `sales` VALUES ('6', '1001', '70', '8', null, '560', '2018-11-12', '1', '2', '已完成');
INSERT INTO `sales` VALUES ('7', '1001', '50', '5', null, '250', '2018-11-02', '3', '2', '已完成');
INSERT INTO `sales` VALUES ('8', '1001', '80', '5', null, '400', '2018-11-06', '2', '2', '已完成');
INSERT INTO `sales` VALUES ('9', '1001', '400', '6', null, '2400', '2018-12-21', '1', '1', '已完成');
INSERT INTO `sales` VALUES ('10', '1001', '400', '6', null, '2400', '2018-12-21', '1', '1', '已完成');
INSERT INTO `sales` VALUES ('11', '1001', '400', '4', null, '1600', '2018-12-21', '1', '1', '已完成');
INSERT INTO `sales` VALUES ('12', '1001', '200', '18', null, '3600', '2018-12-24 12:04:23', '4', '3', '已退货');
INSERT INTO `sales` VALUES ('13', '1001', '200', '3', null, '600', '2018-12-24 12:19:15', '2', '3', '已退货');
INSERT INTO `sreturn` VALUES ('2', '2018-12-20 12:04:55', '1001', '假的', '3');
INSERT INTO `sreturn` VALUES ('3', '2018-12-24 12:04:49', '1001', '假的', '12');
INSERT INTO `sreturn` VALUES ('4', '2018-12-24 12:19:43', '1001', '库存冗余', '13');
INSERT INTO `supply` VALUES ('1', '乐事（中国）有限公司', '上海', '852030', '何启', '15727092161', '98566@qq.com', '建设银行', '6548645245645');
INSERT INTO `supply` VALUES ('2', '百事公司', '广州', '852031', '杨大虎', '15727092162', '98567@qq.com', '农业银行', '54856621482245');
INSERT INTO `supply` VALUES ('3', '秭归农商', '宜昌', '852032', '赵光', '15727092165', '98560@qq.com', '光大银行', '854624621452656');
INSERT INTO `supply` VALUES ('4', '广州宝洁有限公司', '广州', '852033', '胡玲', '15727092168', '98564@qq.com', '工商银行', '5722562255125');
INSERT INTO `supply` VALUES ('5', '乐高玩具有限公司', '上海', '897690', '刘大标', '15727092164', '98566@qq.com', '浦发银行', '54856621400245');
