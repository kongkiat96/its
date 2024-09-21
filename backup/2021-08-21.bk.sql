# Dump of access_list 
# Dump DATE : 21-Aug-2021

DROP TABLE IF EXISTS access_list;
CREATE TABLE access_list (
  access_key char(32) NOT NULL,
  access_name varchar(256) NOT NULL,
  access_detail text NOT NULL,
  access_class int(11) NOT NULL,
  access_status tinyint(1) NOT NULL,
  PRIMARY KEY (access_key)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



INSERT INTO access_list VALUES("21adef826d326d4bae44eb0c9e19b8b1","แจ้งซ่อมฝ่ายสารสนเทศ","service",0,1);
INSERT INTO access_list VALUES("295744c466c17b46170f88b5c1b9104d","รายการสินทรัพย์ IT","asset_it",0,1);
INSERT INTO access_list VALUES("385daecfdae3b8adbd528effed4d0440","กราฟแสดงจำนวนงาน","report",0,1);
INSERT INTO access_list VALUES("f1344bc0fb9c5594fa0e3d3f37a56957","พนักงาน","employee",0,1);



# Dump of access_user 
# Dump DATE : 21-Aug-2021

DROP TABLE IF EXISTS access_user;
CREATE TABLE access_user (
  access_key char(32) NOT NULL,
  user_key char(32) NOT NULL,
  access_status tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



INSERT INTO access_user VALUES("f1344bc0fb9c5594fa0e3d3f37a56957","9c087e62260bb920a27f22951ccb8e6e",1);
INSERT INTO access_user VALUES("295744c466c17b46170f88b5c1b9104d","9c087e62260bb920a27f22951ccb8e6e",1);
INSERT INTO access_user VALUES("21adef826d326d4bae44eb0c9e19b8b1","9c087e62260bb920a27f22951ccb8e6e",1);
INSERT INTO access_user VALUES("f1344bc0fb9c5594fa0e3d3f37a56957","11c0009be8f4e977c6998edce04c9b2e",1);
INSERT INTO access_user VALUES("295744c466c17b46170f88b5c1b9104d","11c0009be8f4e977c6998edce04c9b2e",1);
INSERT INTO access_user VALUES("21adef826d326d4bae44eb0c9e19b8b1","11c0009be8f4e977c6998edce04c9b2e",1);
INSERT INTO access_user VALUES("21adef826d326d4bae44eb0c9e19b8b1","2ff6eeaf9f4535e14f92b4662b01cc36",1);
INSERT INTO access_user VALUES("295744c466c17b46170f88b5c1b9104d","16485085fc8bb978628a63f51cf7e085",1);
INSERT INTO access_user VALUES("21adef826d326d4bae44eb0c9e19b8b1","f21ada1d50ad6673ce1efb578513ead6",1);
INSERT INTO access_user VALUES("f1344bc0fb9c5594fa0e3d3f37a56957","83b8c4f986cccac06a2f458a106cc773",1);
INSERT INTO access_user VALUES("295744c466c17b46170f88b5c1b9104d","83b8c4f986cccac06a2f458a106cc773",1);
INSERT INTO access_user VALUES("21adef826d326d4bae44eb0c9e19b8b1","83b8c4f986cccac06a2f458a106cc773",1);
INSERT INTO access_user VALUES("f1344bc0fb9c5594fa0e3d3f37a56957","5997108712eef9df6ecab22f1f3728f9",1);
INSERT INTO access_user VALUES("295744c466c17b46170f88b5c1b9104d","5997108712eef9df6ecab22f1f3728f9",1);
INSERT INTO access_user VALUES("21adef826d326d4bae44eb0c9e19b8b1","5997108712eef9df6ecab22f1f3728f9",1);
INSERT INTO access_user VALUES("f1344bc0fb9c5594fa0e3d3f37a56957","23ae8fd2022f767f5c90728825132b90",1);
INSERT INTO access_user VALUES("295744c466c17b46170f88b5c1b9104d","23ae8fd2022f767f5c90728825132b90",1);
INSERT INTO access_user VALUES("21adef826d326d4bae44eb0c9e19b8b1","23ae8fd2022f767f5c90728825132b90",1);
INSERT INTO access_user VALUES("f1344bc0fb9c5594fa0e3d3f37a56957","29f6d8cc66413451f07364c479e417cf",1);
INSERT INTO access_user VALUES("21adef826d326d4bae44eb0c9e19b8b1","29f6d8cc66413451f07364c479e417cf",1);
INSERT INTO access_user VALUES("385daecfdae3b8adbd528effed4d0440","ce63f18f7cf0a712fd4a2f47bc9ae14c",1);
INSERT INTO access_user VALUES("f1344bc0fb9c5594fa0e3d3f37a56957","ce63f18f7cf0a712fd4a2f47bc9ae14c",1);
INSERT INTO access_user VALUES("295744c466c17b46170f88b5c1b9104d","ce63f18f7cf0a712fd4a2f47bc9ae14c",1);
INSERT INTO access_user VALUES("21adef826d326d4bae44eb0c9e19b8b1","ce63f18f7cf0a712fd4a2f47bc9ae14c",1);



# Dump of backup_logs 
# Dump DATE : 21-Aug-2021

DROP TABLE IF EXISTS backup_logs;
CREATE TABLE backup_logs (
  backup_key varchar(32) NOT NULL,
  backup_file varchar(256) NOT NULL,
  backup_date timestamp NOT NULL DEFAULT current_timestamp(),
  user_key char(32) NOT NULL,
  PRIMARY KEY (backup_key)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



INSERT INTO backup_logs VALUES("14c75cdc3536bfd2d71089bf73911248","2020-12-12.bk.sql","2020-12-12 13:31:08","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO backup_logs VALUES("a621de7ed727d1a85d745abf4237dd2f","2021-03-07.bk.sql","2021-03-07 23:01:49","ce63f18f7cf0a712fd4a2f47bc9ae14c");



# Dump of card_for_ex 
# Dump DATE : 21-Aug-2021

DROP TABLE IF EXISTS card_for_ex;
CREATE TABLE card_for_ex (
  id int(255) NOT NULL AUTO_INCREMENT,
  card_info_key varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  card_date_ex date DEFAULT NULL,
  status int(1) NOT NULL DEFAULT 1,
  date_time timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;






# Dump of card_info 
# Dump DATE : 21-Aug-2021

DROP TABLE IF EXISTS card_info;
CREATE TABLE card_info (
  card_key char(32) NOT NULL,
  card_code varchar(16) DEFAULT NULL,
  card_customer_name varchar(64) DEFAULT NULL,
  asset_code varchar(100) DEFAULT NULL,
  card_company varchar(100) DEFAULT NULL,
  card_possess varchar(255) DEFAULT NULL,
  card_customer_phone varchar(128) DEFAULT NULL,
  card_customer_email varchar(128) DEFAULT NULL,
  card_note text DEFAULT NULL COMMENT 'ชื่อเครื่อง',
  card_equipment varchar(100) DEFAULT NULL,
  card_brand varchar(50) DEFAULT NULL,
  card_model varchar(100) DEFAULT NULL,
  card_serial varchar(50) DEFAULT NULL,
  card_sum varchar(100) DEFAULT NULL COMMENT 'จำนวนอุปกรณ์',
  card_date_buy date NOT NULL COMMENT 'วันที่ซื้อ',
  card_ex varchar(20) DEFAULT NULL COMMENT 'ระยะเวลารับประกัน',
  card_date_ex date DEFAULT NULL,
  ck_license int(2) DEFAULT NULL,
  license_name varchar(200) DEFAULT NULL,
  license_key varchar(200) DEFAULT NULL,
  p_ck_license int(2) DEFAULT NULL COMMENT 'Program License',
  p_license_name varchar(200) DEFAULT NULL COMMENT 'Program Name',
  p_license_key varchar(200) DEFAULT NULL COMMENT 'Program Key',
  card_pic varchar(100) DEFAULT NULL,
  card_price varchar(100) DEFAULT NULL,
  card_done_aprox date NOT NULL,
  user_key varchar(32) DEFAULT NULL,
  user_update varchar(32) DEFAULT NULL,
  card_status varchar(32) DEFAULT NULL,
  card_insert date NOT NULL,
  card_delete int(2) NOT NULL DEFAULT 1 COMMENT '1 use 0 del',
  PRIMARY KEY (card_key)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;






# Dump of card_item 
# Dump DATE : 21-Aug-2021

DROP TABLE IF EXISTS card_item;
CREATE TABLE card_item (
  item_key char(32) NOT NULL,
  card_key varchar(32) DEFAULT NULL,
  item_number int(11) DEFAULT NULL,
  item_name varchar(128) DEFAULT NULL,
  item_note text DEFAULT NULL,
  item_price_aprox float DEFAULT NULL,
  item_insert timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (item_key)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;






# Dump of card_pic 
# Dump DATE : 21-Aug-2021

DROP TABLE IF EXISTS card_pic;
CREATE TABLE card_pic (
  pic_key varchar(50) NOT NULL,
  card_key varchar(100) NOT NULL,
  pic_name varchar(255) NOT NULL,
  pic_status int(1) DEFAULT 1,
  date_time timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (pic_key),
  KEY card_key (card_key)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;






# Dump of card_status 
# Dump DATE : 21-Aug-2021

DROP TABLE IF EXISTS card_status;
CREATE TABLE card_status (
  cstatus_key char(32) NOT NULL,
  card_key varchar(32) DEFAULT NULL,
  card_status varchar(32) DEFAULT NULL,
  card_status_note text DEFAULT NULL,
  user_key varchar(32) DEFAULT NULL,
  cstatus_insert timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (cstatus_key)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



INSERT INTO card_status VALUES("02bbdf23bf24d3a6837566dea72761f0","e9d6106884c1f658673e95af6cebf303","9ba0f256a5f620136568c6b47dcb24bd","สาขา CTW","ce63f18f7cf0a712fd4a2f47bc9ae14c","2021-01-26 15:30:37");
INSERT INTO card_status VALUES("1456a086c1f5759e868a6c312dd3829e","c31e580c9b858078aa95a796f2fcc72e","9ba0f256a5f620136568c6b47dcb24bd",NULL,"ce63f18f7cf0a712fd4a2f47bc9ae14c","2021-01-26 15:35:17");
INSERT INTO card_status VALUES("19f611949cf1ce7bab0edd83b4e42668","e9d6106884c1f658673e95af6cebf303","9ba0f256a5f620136568c6b47dcb24bd",NULL,"ce63f18f7cf0a712fd4a2f47bc9ae14c","2020-12-21 21:52:46");
INSERT INTO card_status VALUES("3a89feb205c15c71b344e8909bbed4bf","e9d6106884c1f658673e95af6cebf303","9ba0f256a5f620136568c6b47dcb24bd","CTW","ce63f18f7cf0a712fd4a2f47bc9ae14c","2021-01-26 15:31:14");
INSERT INTO card_status VALUES("6a5f482a89277ecc9c8c9d2d3ed80e6b","c47f8bb9a8980924b3161f0b6c100a83","9ba0f256a5f620136568c6b47dcb24bd","CTW เนื่องจากเครื่องรอซ่อม","ce63f18f7cf0a712fd4a2f47bc9ae14c","2021-02-13 23:05:20");
INSERT INTO card_status VALUES("81182e4ad871f121e73dffc24149af67","e4010c880289494369b7f5f43ba882ee","2e34609794290a770cb0349119d78d21","ส่งมอบให้สาขา","ce63f18f7cf0a712fd4a2f47bc9ae14c","2021-02-13 23:11:09");
INSERT INTO card_status VALUES("8871ab8a9da25521a8388e7537d6628c","e9d6106884c1f658673e95af6cebf303","2e34609794290a770cb0349119d78d21",NULL,"ce63f18f7cf0a712fd4a2f47bc9ae14c","2020-12-12 12:25:35");
INSERT INTO card_status VALUES("9a2f1662906153cdb0f56f3e8bb14b52","c31e580c9b858078aa95a796f2fcc72e","9ba0f256a5f620136568c6b47dcb24bd","CTW ขอยืมจอ","ce63f18f7cf0a712fd4a2f47bc9ae14c","2021-01-26 15:33:44");



# Dump of card_type 
# Dump DATE : 21-Aug-2021

DROP TABLE IF EXISTS card_type;
CREATE TABLE card_type (
  ctype_key char(32) NOT NULL,
  ctype_name varchar(128) NOT NULL,
  ctype_color varchar(16) NOT NULL,
  ctype_status tinyint(1) NOT NULL DEFAULT 1,
  ctype_use int(1) NOT NULL DEFAULT 3 COMMENT '1 = it, 2 asset, 3 All',
  ctype_insert timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (ctype_key)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



INSERT INTO card_type VALUES("02b5a3574052961b5336356a9a634d05","คืนเครื่องสำรองเรียบร้อย","#02790a",1,3,"2021-01-13 00:17:03");
INSERT INTO card_type VALUES("141f76f3b648cd1d8d21cceed6b3b418","กำลังดำเนินการตรวจสอบ","#48a4ea",1,3,"2021-03-03 22:18:49");
INSERT INTO card_type VALUES("2376b33c92767c1437421a99bbc7164f","ไม่สามารถแก้ไขได้","#efa3a3",1,3,"2021-05-06 11:16:54");
INSERT INTO card_type VALUES("27e87048f9283b6e13347df4388c98e9","กำลังส่งเครื่องสำรอง","#dc88e2",1,3,"2021-01-13 00:17:52");
INSERT INTO card_type VALUES("2e34609794290a770cb0349119d78d21","แก้ไขเสร็จเรียบร้อย","#26eb15",1,3,"2018-12-08 13:47:10");
INSERT INTO card_type VALUES("3b2bd9e319992d5b63bfbbd7301b6882","รอดำเนินการสั่งซื้ออุปกรณ์","#bc680f",1,3,"2020-02-18 11:45:58");
INSERT INTO card_type VALUES("47ea92cfc142a08b40abe2ddbf8837a8","กำลังซ่อม","#feb43f",1,3,"2018-12-08 13:48:29");
INSERT INTO card_type VALUES("57995055c28df9e82476a54f852bd214","ยกเลิกการแจ้ง","#ff0000",1,3,"2018-12-08 13:49:07");
INSERT INTO card_type VALUES("5b93205f13e238f5a1904e095016e81f","คืนแล้ว","#100ceb",1,3,"2019-05-23 15:36:24");
INSERT INTO card_type VALUES("5cafc78523f4f5e4812f9545b2ba5ae7","แจ้งดำเนินการอีกครั้ง","#ff000b",1,3,"2020-02-17 13:59:03");
INSERT INTO card_type VALUES("5dbc98dcc983a70728bd082d1a47546e","S","#000000",2,3,"2020-12-18 19:54:46");
INSERT INTO card_type VALUES("876e933c13f11540337913cd5eba269e","กำลังส่งไปที่สาขา","#51f0d0",1,3,"2021-05-06 11:16:39");
INSERT INTO card_type VALUES("968d42cbf280bc3c26103d31955bae59","ส่งเครื่องสำรองเรียบร้อย","#93ff61",1,3,"2021-02-21 22:16:53");
INSERT INTO card_type VALUES("9ba0f256a5f620136568c6b47dcb24bd","ขอยืมเครื่องสำรอง","#ed4e09",1,3,"2018-12-08 13:54:34");
INSERT INTO card_type VALUES("befb5e146e599a9876757fb18ce5fa2e","รับดำเนินการแก้ไข","#38c7d8",1,3,"2020-02-04 15:10:13");
INSERT INTO card_type VALUES("ce3bbcf0542b7ab3c191b9ca61a8ab84","กำลังส่งเครื่องซ่อม","#fcfe9f",1,3,"2021-05-06 11:56:27");
INSERT INTO card_type VALUES("f2c50a9a3e802c7be809f7f506b2b46a","รอเปลี่ยนอะไหล่","#ebae13",1,3,"2018-12-08 13:51:30");



# Dump of company 
# Dump DATE : 21-Aug-2021

DROP TABLE IF EXISTS company;
CREATE TABLE company (
  id int(11) NOT NULL AUTO_INCREMENT,
  company_name varchar(255) DEFAULT NULL COMMENT 'ชื่อบริษัท',
  cp_status int(2) NOT NULL DEFAULT 1 COMMENT '1 ปกติ 0 ลบ',
  show_it int(1) NOT NULL DEFAULT 1 COMMENT '1 แสดง 0 ไม่แสดง',
  show_asset int(1) NOT NULL DEFAULT 2 COMMENT '1 แสดง 0 ไม่แสดง',
  PRIMARY KEY (id)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;



INSERT INTO company VALUES(1,"บริษัท โนเบิลเรสเตอท์รองต์ จำกัด",1,1,2);
INSERT INTO company VALUES(2,"บริษัท ฟู้ดมาสเตอร์ จำกัด",1,1,2);



# Dump of department_name 
# Dump DATE : 21-Aug-2021

DROP TABLE IF EXISTS department_name;
CREATE TABLE department_name (
  id int(11) NOT NULL AUTO_INCREMENT,
  department_name varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ชื่อแผนก',
  department_status int(1) NOT NULL DEFAULT 1 COMMENT '1 use 0 del',
  PRIMARY KEY (id) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



INSERT INTO department_name VALUES(1,"Management",1);
INSERT INTO department_name VALUES(2,"Finance",1);
INSERT INTO department_name VALUES(3,"QA &amp;amp; QC",0);
INSERT INTO department_name VALUES(4,"Production",0);
INSERT INTO department_name VALUES(5,"Human Resource",1);
INSERT INTO department_name VALUES(6,"Business Development",2);
INSERT INTO department_name VALUES(7,"Human Resource Development &amp; Learning Development",2);
INSERT INTO department_name VALUES(8,"HR Admin",0);
INSERT INTO department_name VALUES(9,"Sales &amp; Marketing",2);
INSERT INTO department_name VALUES(10,"Creative &amp;amp; Design",0);
INSERT INTO department_name VALUES(11,"Graphic &amp;amp; Design",0);
INSERT INTO department_name VALUES(12,"Service Management",0);
INSERT INTO department_name VALUES(13,"Financial &amp;amp; Accounting",0);
INSERT INTO department_name VALUES(14,"Brand Development",0);
INSERT INTO department_name VALUES(15,"Purchaseing",0);
INSERT INTO department_name VALUES(16,"Production &amp;amp; Maintenance",0);
INSERT INTO department_name VALUES(17,"Planning &amp;amp; Logistics",0);
INSERT INTO department_name VALUES(18,"Purchasing",1);
INSERT INTO department_name VALUES(19,"Sales",0);
INSERT INTO department_name VALUES(20,"Warehouse &amp; Logistics",1);
INSERT INTO department_name VALUES(21,"Business Consultant",0);
INSERT INTO department_name VALUES(22,"Sales Support",0);
INSERT INTO department_name VALUES(23,"Interior Visual Designer",0);
INSERT INTO department_name VALUES(24,"Internal Audit",0);
INSERT INTO department_name VALUES(25,"Repair Watch",0);
INSERT INTO department_name VALUES(26,"Marketing",1);
INSERT INTO department_name VALUES(27,"Sales Alternative",0);
INSERT INTO department_name VALUES(28,"Marketing Communication",0);
INSERT INTO department_name VALUES(29,"Business Planning",0);
INSERT INTO department_name VALUES(30,"Direct Channel",0);
INSERT INTO department_name VALUES(31,"Sales Online",0);
INSERT INTO department_name VALUES(32,"Visual Merchandiser",0);
INSERT INTO department_name VALUES(33,"Photographer",0);
INSERT INTO department_name VALUES(34,"Operation",0);
INSERT INTO department_name VALUES(35,"Branding",0);
INSERT INTO department_name VALUES(36,"Customer Service",0);
INSERT INTO department_name VALUES(37,"Business &amp;amp; Merchandise Development",0);
INSERT INTO department_name VALUES(38,"Stock Controller",0);
INSERT INTO department_name VALUES(39,"Gemologist",0);
INSERT INTO department_name VALUES(40,"Lawyer",0);
INSERT INTO department_name VALUES(41,"Sales Gold &amp;amp; Jewelry",0);
INSERT INTO department_name VALUES(42,"Provision &amp;amp; Lawyer",0);
INSERT INTO department_name VALUES(43,"Operation Management",1);
INSERT INTO department_name VALUES(44,"ERP",0);
INSERT INTO department_name VALUES(45,"IT Support",1);
INSERT INTO department_name VALUES(46,"Software Development",0);
INSERT INTO department_name VALUES(48,"-",1);
INSERT INTO department_name VALUES(50,"Sales Luxury Brand",0);
INSERT INTO department_name VALUES(51,"Engineer",1);
INSERT INTO department_name VALUES(52,"Gemology",0);
INSERT INTO department_name VALUES(53,"Graphic",1);
INSERT INTO department_name VALUES(54," Kitchen Team (Operation)",0);
INSERT INTO department_name VALUES(55,"Accounting",1);
INSERT INTO department_name VALUES(56,"Iventory",1);
INSERT INTO department_name VALUES(57,"branch (สาขา)",2);
INSERT INTO department_name VALUES(58,"CTW",1);
INSERT INTO department_name VALUES(59," CDC",1);
INSERT INTO department_name VALUES(60," T21",1);
INSERT INTO department_name VALUES(61," CR9",1);
INSERT INTO department_name VALUES(62," PMN",1);
INSERT INTO department_name VALUES(63," CBN",1);
INSERT INTO department_name VALUES(64," CRP",1);
INSERT INTO department_name VALUES(65," ZPE",1);
INSERT INTO department_name VALUES(66,"MBP",1);
INSERT INTO department_name VALUES(67,"SCQ",1);
INSERT INTO department_name VALUES(68,"CPK",1);
INSERT INTO department_name VALUES(69,"MGB",1);
INSERT INTO department_name VALUES(70,"CR3",1);
INSERT INTO department_name VALUES(71,"ICS",1);
INSERT INTO department_name VALUES(72,"SCP",1);
INSERT INTO department_name VALUES(73,"TMK",1);
INSERT INTO department_name VALUES(74,"CCW",1);
INSERT INTO department_name VALUES(75,"NEB",1);
INSERT INTO department_name VALUES(76,"NGS",1);
INSERT INTO department_name VALUES(77,"WH",1);
INSERT INTO department_name VALUES(78,"SCT",1);
INSERT INTO department_name VALUES(79,"CWG",1);
INSERT INTO department_name VALUES(80,"CLP",1);
INSERT INTO department_name VALUES(81,"Admin",1);
INSERT INTO department_name VALUES(82,"Supervisor",1);
INSERT INTO department_name VALUES(83,"SRI",1);
INSERT INTO department_name VALUES(84,"Guljak KVL",1);
INSERT INTO department_name VALUES(85,"Guljak ESR",1);
INSERT INTO department_name VALUES(86,"Guljak ICS",1);



# Dump of device_type 
# Dump DATE : 21-Aug-2021

DROP TABLE IF EXISTS device_type;
CREATE TABLE device_type (
  id int(11) NOT NULL AUTO_INCREMENT,
  device_type varchar(45) DEFAULT NULL COMMENT 'หมวดหมู่อุปกรณ์',
  device_status int(1) NOT NULL DEFAULT 1 COMMENT '1 use 0 del',
  PRIMARY KEY (id)
) ENGINE=MyISAM AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;



INSERT INTO device_type VALUES(1,"PC (คอมพิวเตอร์ตั้งโต๊ะ)",1);
INSERT INTO device_type VALUES(2,"Monitor (จอคอมพิวเตอร์)",1);
INSERT INTO device_type VALUES(3,"Notebook",1);
INSERT INTO device_type VALUES(4,"PC (All in one)",1);
INSERT INTO device_type VALUES(6,"Mobile",1);
INSERT INTO device_type VALUES(7,"Printer laser (เครื่องปริ้นเอกสารชนิดผง)",1);
INSERT INTO device_type VALUES(8,"Hub",1);
INSERT INTO device_type VALUES(9,"Power Amp",1);
INSERT INTO device_type VALUES(10,"Speaker (ลำโพง)",1);
INSERT INTO device_type VALUES(11,"HDMI Extender",1);
INSERT INTO device_type VALUES(12,"Brightsign",1);
INSERT INTO device_type VALUES(13,"Projector",1);
INSERT INTO device_type VALUES(14,"Scanner",1);
INSERT INTO device_type VALUES(15,"RACK",1);
INSERT INTO device_type VALUES(16,"UPS",1);
INSERT INTO device_type VALUES(17,"Camera CCTV",1);
INSERT INTO device_type VALUES(18,"Digital Video Recorder",1);
INSERT INTO device_type VALUES(19,"ETC",1);
INSERT INTO device_type VALUES(20,"External Harddisk",1);
INSERT INTO device_type VALUES(21,"Android Box",1);
INSERT INTO device_type VALUES(22,"iMac",1);
INSERT INTO device_type VALUES(23,"Accessories",1);
INSERT INTO device_type VALUES(24,"IPAD",1);
INSERT INTO device_type VALUES(25,"สแตนขาตั้ง IPAD",1);
INSERT INTO device_type VALUES(26,"สายชาร์จ IPAD",1);
INSERT INTO device_type VALUES(27,"หัวแปลง USB LAN For IPAD",1);
INSERT INTO device_type VALUES(28,"Tablet",1);
INSERT INTO device_type VALUES(29,"เครื่องปริ้นใบเสร็จ",1);
INSERT INTO device_type VALUES(30,"เครื่องปริ้นในครัว",1);
INSERT INTO device_type VALUES(31,"Printer Injek (เครื่องปริ้นเอกสารเติมน้ำหมึก)",1);
INSERT INTO device_type VALUES(32,"สายชาร์จโน๊ตบุ๊ค",1);
INSERT INTO device_type VALUES(33,"Battery Notebook",1);
INSERT INTO device_type VALUES(34,"สายชาร์จ Tablet",1);
INSERT INTO device_type VALUES(35,"Mikrotik",1);
INSERT INTO device_type VALUES(36,"UniFi UAP",1);
INSERT INTO device_type VALUES(37,"เครื่องสแกนนิ้ว",1);
INSERT INTO device_type VALUES(38,"เครื่องถ่ายเอกสาร",1);
INSERT INTO device_type VALUES(39,"โทรศัพท์ 02",1);
INSERT INTO device_type VALUES(40,"เคส",1);
INSERT INTO device_type VALUES(41,"อื่นๆ",1);



# Dump of employee 
# Dump DATE : 21-Aug-2021

DROP TABLE IF EXISTS employee;
CREATE TABLE employee (
  card_key char(32) NOT NULL,
  title_name int(2) DEFAULT NULL,
  name varchar(150) DEFAULT NULL,
  lastname varchar(255) DEFAULT NULL,
  user_position varchar(100) DEFAULT NULL COMMENT 'ตำแหน่ง',
  user_department varchar(100) DEFAULT NULL COMMENT 'แผนก',
  department_id int(11) NOT NULL COMMENT 'บริษัทอิงจาก company',
  em_status int(2) NOT NULL DEFAULT 1 COMMENT '1 ปกติ 0 ลบ',
  date_create datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (card_key)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



INSERT INTO employee VALUES("ce63f18f7cf0a712fd4a2f47bc9ae14c",1,"ผู้ดูแล","ระบบ","IT","45",1,1,"2020-12-11 11:52:57");
INSERT INTO employee VALUES("9c087e62260bb920a27f22951ccb8e6e",1,"เจ้า","หน้าที่","IT","3",1,0,"2021-01-26 14:28:56");
INSERT INTO employee VALUES("1ca81a2da074ea0a2c54dc6dcc180cdf",2,"ผู้ใช้","งาน","User","2",1,0,"2021-01-26 14:28:52");
INSERT INTO employee VALUES("16485085fc8bb978628a63f51cf7e085",4,"CTW","MOMO","Branch (สาขา)","58",1,0,"2021-02-14 23:49:41");
INSERT INTO employee VALUES("49a117674e8b6d76eaacc99d38536d28",4,"CDC","MOMO","Branch (สาขา)","57",1,0,"2021-08-19 13:52:25");
INSERT INTO employee VALUES("2ff6eeaf9f4535e14f92b4662b01cc36",4,"CPK","MOMO","Branch (สาขา)","57",1,0,"2021-02-14 23:49:52");
INSERT INTO employee VALUES("11c0009be8f4e977c6998edce04c9b2e",2,"เจนจิรา","แก้วสมบูรณ์","IT Support","45",1,1,"2021-01-13 00:37:47");
INSERT INTO employee VALUES("f21ada1d50ad6673ce1efb578513ead6",1,"ปัฐพี","ทองอร่าม","IT Support","45",1,1,"2021-01-13 13:31:36");
INSERT INTO employee VALUES("bbaf8a58eaf567ac5c5e52a04e3ca279",11,"Human","Resource","ฝ่าย","5",1,0,"2021-02-15 13:55:53");
INSERT INTO employee VALUES("cf4178eda791cfcbd3f20efe1a1ec35a",4,"CTW","Mo-Mo","Branch","58",1,1,"2021-02-14 23:52:48");
INSERT INTO employee VALUES("b17177683249bb2cda3472e14d984e60",4,"T21","Mo-Mo","Branch","60",1,1,"2021-02-14 23:59:16");
INSERT INTO employee VALUES("6340f02bed9ccc2a8a79007a3d67a9ad",4,"CR9","Mo-Mo","Branch","61",1,1,"2021-08-19 13:52:35");
INSERT INTO employee VALUES("696d924c3decaabd113b928b63cb8e9e",4,"PMN","Mo-Mo","Branch","62",1,1,"2021-08-19 13:52:38");
INSERT INTO employee VALUES("9aa946d6abfcb4cfc9ee258593eff00f",4,"CBN","Mo-Mo","Branch","63",1,1,"2021-08-19 13:52:41");
INSERT INTO employee VALUES("9cc29e8c2b924de0fd3ef55737a159c0",4,"CRP","Mo-Mo","Branch","64",1,1,"2021-08-19 13:53:07");
INSERT INTO employee VALUES("8af593251cd53494bf4f6cd658351815",4,"ZPE","Mo-Mo","Branch","65",1,1,"2021-08-19 13:53:09");
INSERT INTO employee VALUES("e782c0270070c7ff34dc7984a3643741",4,"MBP","Mo-Mo","Branch","66",1,1,"2021-08-19 13:53:11");
INSERT INTO employee VALUES("9fe4987d685fcbff9b1a3011cdd12b35",4,"SCQ","Mo-Mo","Branch","67",1,1,"2021-08-19 13:53:16");
INSERT INTO employee VALUES("cec9ac90af27b74546e22910bdc5bfff",4,"CPK","Mo-Mo","Branch","68",1,1,"2021-08-19 13:53:18");
INSERT INTO employee VALUES("859cd041e3fe84e5e65b5c178452841f",4,"MGB","Mo-Mo","Branch","69",1,1,"2021-08-19 13:53:20");
INSERT INTO employee VALUES("b29017088b3135c435f9c7912ec2cdb2",4,"CR3","Mo-Mo","Branch","70",1,1,"2021-08-19 13:53:22");
INSERT INTO employee VALUES("79ba10e5305e95e757761317a07fca37",4,"ICS","Mo-Mo","Branch","71",1,1,"2021-08-19 13:52:32");
INSERT INTO employee VALUES("7611717e7dfb53c91a776dcd505f9802",4,"SCP","Mo-Mo","Branch","72",1,1,"2021-02-15 00:07:53");
INSERT INTO employee VALUES("451453af732f6b70835c9dcec5db3b93",4,"TMK","Mo-Mo","Branch","73",1,1,"2021-08-19 13:53:25");
INSERT INTO employee VALUES("3db564ba6fc573bad2628be5b7de4855",4,"NEB","Nabezo","Branch","75",1,1,"2021-08-19 13:53:28");
INSERT INTO employee VALUES("6809f49f86586a97cb888adc3119668b",4,"NGS","Nabezo","Branch","76",1,1,"2021-02-15 00:10:39");
INSERT INTO employee VALUES("bfa7daa6736959ef0ec9b2ee01c1d656",4,"SCT","Mo-Mo","Branch","78",1,1,"2021-02-15 00:14:20");
INSERT INTO employee VALUES("52f2a5ca589fe4b36097dd5c55c4ac9c",4,"CWG","Mo-Mo","Branch","79",1,1,"2021-02-17 17:27:02");
INSERT INTO employee VALUES("06ac11af0ac13b221a953bfb54ecaa92",4,"CCW","Mo-Mo","Branch","74",1,1,"2021-02-15 00:19:02");
INSERT INTO employee VALUES("46c567b86f983d75f5eabd2492597c62",4,"test","Mo-Mo","Branch","45",1,0,"2021-03-26 11:24:02");
INSERT INTO employee VALUES("b496e28463b931118820246a08cf9826",4,"CDC","Mo-Mo","Branch","59",1,1,"2021-02-15 10:52:38");
INSERT INTO employee VALUES("3ae8086fb05d3435d3dcd9cd1565a454",12,"Account","Noble","Branch","55",1,1,"2021-02-15 13:55:14");
INSERT INTO employee VALUES("d3cea0a13419c7b7d226a432af757ca4",12,"HR","Noble","Branch","5",1,1,"2021-02-15 13:57:43");
INSERT INTO employee VALUES("ed6b1d41694cc31a1bc8a0f659d5faf7",4,"Finance","Noble","Branch","2",1,1,"2021-02-15 14:28:45");
INSERT INTO employee VALUES("d5b14c346b88725387c282ac7b851ad8",12,"Purchase","Noble","Branch","18",1,1,"2021-02-15 14:36:10");
INSERT INTO employee VALUES("0049430d869cc1e24dfb88398666d959",12,"Marketing","Noble","Branch","26",1,1,"2021-02-15 14:37:39");
INSERT INTO employee VALUES("6ccdcc01b4cbc496cab3ed0c7fb20cac",12,"Admin","Noble","Branch","1",1,1,"2021-02-15 14:40:36");
INSERT INTO employee VALUES("3b28104db64a6f4666ddff80f3c79e2b",12,"Supervisor","Noble","Branch","82",1,0,"2021-03-05 14:05:19");
INSERT INTO employee VALUES("fc9c93f00e53b47b7bf01b72cd6180bd",2,"CLP","Mo-Mo","Branch","80",1,1,"2021-03-02 22:15:48");
INSERT INTO employee VALUES("8cd102f646c6ae2d8fc4e5bfdb75800f",4,"Supervisor","Noble","Branch","43",1,0,"2021-03-05 14:46:30");
INSERT INTO employee VALUES("83b8c4f986cccac06a2f458a106cc773",1,"รชานนท์","แก้วงาม","IT","45",1,1,"2021-03-02 23:02:30");
INSERT INTO employee VALUES("6134ff997b6f5c7e403dc701c7b2cec9",4,"Supervisor","Noble","Branch","43",1,1,"2021-03-05 14:47:22");
INSERT INTO employee VALUES("cfef909e353c8db298c5afccf010578a",12,"Warehouse","Noble","Branch","20",1,1,"2021-08-19 13:54:40");
INSERT INTO employee VALUES("5997108712eef9df6ecab22f1f3728f9",12,"เสาวรักษ์","เอี่ยมภู่","IT","45",1,1,"2021-03-10 17:16:23");
INSERT INTO employee VALUES("23ae8fd2022f767f5c90728825132b90",2,"ปทุมกาญจน์","สุวรรณา","IT","45",1,1,"2021-03-12 15:27:28");
INSERT INTO employee VALUES("a60af60cc188e40bca694274e06eaf08",12,"Operation","Noble","IT","43",1,1,"2021-03-24 15:58:04");
INSERT INTO employee VALUES("980b7ed37ca11aa01f35284afcad5dbb",4,"Marketing","nbrest","Branch","26",1,1,"2021-08-19 13:54:48");
INSERT INTO employee VALUES("2d7a80fc55f6ff49c227852ac35fc3f5",12,"Desing","noble","HO","53",1,1,"2021-08-19 13:54:17");
INSERT INTO employee VALUES("29f6d8cc66413451f07364c479e417cf",4,"SRI","Mo-Mo","Branch","83",1,1,"2021-08-13 11:15:12");



# Dump of list 
# Dump DATE : 21-Aug-2021

DROP TABLE IF EXISTS list;
CREATE TABLE list (
  id int(3) unsigned NOT NULL AUTO_INCREMENT,
  cases varchar(64) NOT NULL,
  menu varchar(64) NOT NULL,
  pages varchar(128) NOT NULL,
  case_status tinyint(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (id)
) ENGINE=MyISAM AUTO_INCREMENT=61 DEFAULT CHARSET=utf8;



INSERT INTO list VALUES(1,"setting","setting","settings/setting.php",1);
INSERT INTO list VALUES(2,"employee","employee","employee/index.php",1);
INSERT INTO list VALUES(60,"report","report","report/index.php",1);
INSERT INTO list VALUES(4,"card_all_status","asset_it","asset_it/card_all_status.php",1);
INSERT INTO list VALUES(5,"case_all_service","service","service/case_all_service.php",1);
INSERT INTO list VALUES(8,"setting_users","setting","settings/setting_users.php",1);
INSERT INTO list VALUES(9,"setting_backup","setting","settings/setting_backup.php",1);
INSERT INTO list VALUES(10,"setting_info","setting","settings/setting_info.php",1);
INSERT INTO list VALUES(11,"setting_system","setting","settings/setting_system.php",1);
INSERT INTO list VALUES(12,"setting_user_access","setting","settings/setting_user_access.php",1);
INSERT INTO list VALUES(13,"administrator_access_list","setting","administrator/administrator_access_list.php",1);
INSERT INTO list VALUES(14,"administrator_cases","setting","administrator/administrator_cases.php",1);
INSERT INTO list VALUES(15,"administrator_menus","setting","administrator/administrator_menus.php",1);
INSERT INTO list VALUES(16,"administrator_modules","setting","administrator/administrator_modules.php",1);
INSERT INTO list VALUES(17,"administrator_helper","seting","administrator/administrator_helper.php",1);
INSERT INTO list VALUES(18,"show_work","service","service/show_work.php",1);
INSERT INTO list VALUES(19,"case_all_company","service","service/case_all_company.php",1);
INSERT INTO list VALUES(20,"service","service","service/index.php",1);
INSERT INTO list VALUES(26,"setting_card_status","setting","settings/setting_card_status.php",1);
INSERT INTO list VALUES(29,"administrator_log","setting","administrator/administrator_log.php",1);
INSERT INTO list VALUES(30,"show_cancel","service","service/show_cancel.php",1);
INSERT INTO list VALUES(31,"show_cancel_user","service","service/show_cancel_user.php",1);
INSERT INTO list VALUES(41,"view_info","setting","settings/view_info.php",1);
INSERT INTO list VALUES(44,"setting_services","setting","settings/setting_services.php",1);
INSERT INTO list VALUES(45,"asset_it","asset_it","asset_it/index.php",1);
INSERT INTO list VALUES(46,"asset_it_create_detail","asset_it","asset_it/asset_it_create_detail.php",1);
INSERT INTO list VALUES(48,"setting_app","setting","settings/setting_app.php",1);
INSERT INTO list VALUES(49,"report_it","service","service/report.php",1);
INSERT INTO list VALUES(50,"case_all_department","service","service/case_all_department.php",1);
INSERT INTO list VALUES(59,"add_detail","asset_it","asset_it/wait_detail.php",1);



# Dump of logs 
# Dump DATE : 21-Aug-2021

DROP TABLE IF EXISTS logs;
CREATE TABLE logs (
  log_key varchar(16) NOT NULL,
  log_date timestamp NOT NULL DEFAULT current_timestamp(),
  log_ipaddress varchar(32) NOT NULL,
  log_text varchar(256) NOT NULL,
  log_user varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



INSERT INTO logs VALUES("07b299ecc8ef813a","2020-12-21 22:13:45","::1","superadmin ออกจากระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("8ddc9fdaba8ebef2","2020-12-21 22:26:06","101.51.130.126","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("3ac0b4ea44b39321","2020-12-21 22:26:34","101.51.130.126","superadmin ออกจากระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("407deeb7976ed9e3","2020-12-21 22:27:29","1.47.237.106","admin เข้าสู่ระบบ.","9c087e62260bb920a27f22951ccb8e6e");
INSERT INTO logs VALUES("8dc6da493faa3e67","2020-12-21 22:32:26","101.51.130.126","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("c6953d2e4d0c52bc","2020-12-22 01:57:19","115.87.201.229","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("faaa07047aa8b4b5","2020-12-22 02:05:51","115.87.201.229","superadmin ออกจากระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("06b2354254ef132f","2020-12-22 02:05:57","115.87.201.229","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("512fba48d45e39b6","2020-12-22 02:07:02","115.87.201.229","superadmin ออกจากระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("eff1ba926af42ae9","2020-12-23 01:21:14","115.87.199.137","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("eb40e284526dc0aa","2020-12-23 01:24:23","115.87.199.137","superadmin ออกจากระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("7ce05508bd3db115","2020-12-23 01:24:27","115.87.199.137","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("2cd4ac042b76ea75","2020-12-23 08:02:59","1.20.139.120","admin เข้าสู่ระบบ.","9c087e62260bb920a27f22951ccb8e6e");
INSERT INTO logs VALUES("86e512f528150932","2020-12-23 14:28:33","115.87.199.137","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("f3cdfa0937711325","2020-12-23 14:30:09","115.87.199.137","superadmin ออกจากระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("df6f2be1f2950a6b","2020-12-24 00:41:29","115.87.125.225","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("d9ff19636cbd655e","2020-12-24 00:43:30","115.87.125.225","superadmin ออกจากระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("cd0550ed2b1195ae","2020-12-30 08:30:13","124.120.122.176","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("a3988cf2cc754f5f","2021-01-03 23:59:30","115.87.200.62","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("c7115bb22929bfc4","2021-01-12 19:45:50","1.46.139.49","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("b8a72c0ffa18638c","2021-01-12 20:05:56","1.46.139.49","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("d7c6559d4caf214d","2021-01-12 22:30:44","58.8.225.7","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("4b9eafa59bd9b42d","2021-01-12 22:40:36","58.8.225.7","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("23a95fd7de57ba7b","2021-01-12 23:02:50","58.8.225.7","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("d300d46fe9737e93","2021-01-13 00:49:51","58.8.225.7","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("2f78bbb60d27e1f0","2021-01-13 00:51:53","58.8.225.7","superadmin ออกจากระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("77623fae7287b522","2021-01-13 00:52:06","58.8.225.7","Janejira เข้าสู่ระบบ.","11c0009be8f4e977c6998edce04c9b2e");
INSERT INTO logs VALUES("e41780c891325d07","2021-01-13 00:52:30","58.8.225.7","Janejira ออกจากระบบ.","11c0009be8f4e977c6998edce04c9b2e");
INSERT INTO logs VALUES("6ecc6bc534e78717","2021-01-13 00:52:39","58.8.225.7","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("21483591134a7576","2021-01-13 00:54:51","58.8.225.7","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("93e9f07ded40a86f","2021-01-13 00:55:11","58.8.225.7","superadmin ออกจากระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("756d676f3de148b6","2021-01-13 00:55:25","58.8.225.7","Janejira เข้าสู่ระบบ.","11c0009be8f4e977c6998edce04c9b2e");
INSERT INTO logs VALUES("7934fc254ea1dfab","2021-01-13 01:06:09","58.8.225.7","Janejira เข้าสู่ระบบ.","11c0009be8f4e977c6998edce04c9b2e");
INSERT INTO logs VALUES("6f5f5a7e29905b8b","2021-01-13 01:13:06","58.8.225.7","Janejira ออกจากระบบ.","11c0009be8f4e977c6998edce04c9b2e");
INSERT INTO logs VALUES("26dcf73077dd2870","2021-01-13 01:13:19","58.8.225.7","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("7341012f878378b5","2021-01-13 01:15:31","58.8.225.7","superadmin ออกจากระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("ca28cc9bf4b2ccf8","2021-01-13 01:15:43","58.8.225.7","admin เข้าสู่ระบบ.","9c087e62260bb920a27f22951ccb8e6e");
INSERT INTO logs VALUES("2d2de35e85f192d6","2021-01-13 01:33:49","58.8.225.7","Janejira เข้าสู่ระบบ.","11c0009be8f4e977c6998edce04c9b2e");
INSERT INTO logs VALUES("2495b175da715c3f","2021-01-13 09:50:17","1.20.185.71","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("647f17597b009c5f","2021-01-13 09:56:34","1.20.185.71","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("d285fde7b66af980","2021-01-13 13:12:42","1.20.185.71","Janejira เข้าสู่ระบบ.","11c0009be8f4e977c6998edce04c9b2e");
INSERT INTO logs VALUES("2cff64196327528e","2021-01-13 13:31:49","1.20.185.71","Janejira ออกจากระบบ.","11c0009be8f4e977c6998edce04c9b2e");
INSERT INTO logs VALUES("c83272aaf3185dd4","2021-01-13 13:31:54","1.20.185.71","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("c0fdeb8b5b95fa08","2021-01-13 13:59:48","1.20.185.71","superadmin ออกจากระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("ac8133abe598cfd8","2021-01-13 13:59:52","1.20.185.71","Janejira เข้าสู่ระบบ.","11c0009be8f4e977c6998edce04c9b2e");
INSERT INTO logs VALUES("a4f7b19b18cf2a2e","2021-01-13 14:17:54","1.20.185.71","Janejira ออกจากระบบ.","11c0009be8f4e977c6998edce04c9b2e");
INSERT INTO logs VALUES("2e7d550560faf3ae","2021-01-13 14:17:58","1.20.185.71","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("d354efffaaa16acb","2021-01-13 14:42:11","1.20.185.71","superadmin ออกจากระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("cf876e824e79c4d0","2021-01-13 14:42:14","1.20.185.71","Janejira เข้าสู่ระบบ.","11c0009be8f4e977c6998edce04c9b2e");
INSERT INTO logs VALUES("6d3e55f2d2a1cf2a","2021-01-13 15:01:27","1.20.185.71","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("72dd350f98643edf","2021-01-13 15:16:46","1.20.185.71","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("dffcf10731e1c569","2021-01-13 15:33:32","1.20.185.71","superadmin ออกจากระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("2e82805157b8d11f","2021-01-13 15:33:48","1.20.185.71","0001 เข้าสู่ระบบ.","16485085fc8bb978628a63f51cf7e085");
INSERT INTO logs VALUES("21fb635e1897e7e8","2021-01-13 15:34:23","1.20.185.71","0001 ออกจากระบบ.","16485085fc8bb978628a63f51cf7e085");
INSERT INTO logs VALUES("16090a4f4b2ee12d","2021-01-13 15:34:28","1.20.185.71","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("7cefd79ac77e54e1","2021-01-13 15:39:38","1.20.185.71","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("6f410b509276aa78","2021-01-13 15:45:16","1.20.185.71","superadmin ออกจากระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("83990d111c53b2be","2021-01-13 15:45:22","1.20.185.71","ctw เข้าสู่ระบบ.","16485085fc8bb978628a63f51cf7e085");
INSERT INTO logs VALUES("1e9b1a7013e36689","2021-01-13 15:45:44","1.20.185.71","ctw ออกจากระบบ.","16485085fc8bb978628a63f51cf7e085");
INSERT INTO logs VALUES("9a44ef177a31a08a","2021-01-13 15:45:55","1.20.185.71","Janejira เข้าสู่ระบบ.","11c0009be8f4e977c6998edce04c9b2e");
INSERT INTO logs VALUES("cb91cddd4eb6dfab","2021-01-13 15:47:42","1.20.185.71","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("ab0604d0fa41b5a8","2021-01-13 16:00:38","1.20.185.71","Janejira เข้าสู่ระบบ.","11c0009be8f4e977c6998edce04c9b2e");
INSERT INTO logs VALUES("1d8e49650ef8c536","2021-01-13 16:05:01","1.20.185.71","superadmin ออกจากระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("d6d5cbc00e8f2e62","2021-01-13 16:05:12","1.20.185.71","Janejira เข้าสู่ระบบ.","11c0009be8f4e977c6998edce04c9b2e");
INSERT INTO logs VALUES("069a1b65381bb15a","2021-01-13 16:18:41","1.20.185.71","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("bd7e09074cebdf56","2021-01-13 16:43:07","1.20.185.71","Janejira เข้าสู่ระบบ.","11c0009be8f4e977c6998edce04c9b2e");
INSERT INTO logs VALUES("dc638d6dc50fb330","2021-01-13 17:11:30","1.20.185.71","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("fa423c781a87b084","2021-01-13 17:13:49","1.20.185.71","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("4046356bd667af87","2021-01-14 09:00:25","101.51.130.193","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("6ad868bf729bf879","2021-01-14 09:00:43","101.51.130.193","superadmin ออกจากระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("c7d1d7b0d7ece455","2021-01-14 09:20:16","101.51.130.193","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("9ec24166c2e4ecbd","2021-01-15 19:50:13","58.8.224.81","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("4ae58555bea3ed4a","2021-01-15 19:50:59","58.8.224.81","superadmin ออกจากระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("9b283863e0e8cd3e","2021-01-15 19:51:12","58.8.224.81","Janejira เข้าสู่ระบบ.","11c0009be8f4e977c6998edce04c9b2e");
INSERT INTO logs VALUES("18a7626f88effe2c","2021-01-15 19:51:41","58.8.224.81","Janejira ออกจากระบบ.","11c0009be8f4e977c6998edce04c9b2e");
INSERT INTO logs VALUES("06a0bda4756c0bf6","2021-01-15 19:51:47","58.8.224.81","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("6d43f25f2e2a9826","2021-01-17 16:21:11","171.101.102.153","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("b432d69df99e5118","2021-01-18 10:54:48","1.20.162.28","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("ffad189a6ac024e2","2021-01-18 11:10:30","1.20.162.28","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("79a3af81308628dc","2021-01-20 09:49:29","101.51.130.171","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("5f45ff9eab8d5a68","2021-01-20 15:44:48","101.51.130.171","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("091be0cd003eb16d","2021-01-20 16:04:23","101.51.130.171","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("e356dbfebcd54547","2021-01-20 17:20:43","101.51.130.171","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("79585309397cfd59","2021-01-20 17:42:31","101.51.130.171"," ออกจากระบบ.","");
INSERT INTO logs VALUES("a1311c8b56b7fea1","2021-01-20 18:33:22","101.51.130.171","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("a0f1fad4047b31d0","2021-01-21 09:43:26","1.20.139.174","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("44fc1d03707bdf31","2021-01-21 09:58:07","1.20.139.174","admin เข้าสู่ระบบ.","9c087e62260bb920a27f22951ccb8e6e");
INSERT INTO logs VALUES("5b8ea99bf5167e59","2021-01-21 10:26:37","1.20.139.174","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("9c83f102bc058bdc","2021-01-21 10:41:08","1.20.139.174","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("73f1f9c651b11fef","2021-01-21 11:44:46","1.20.139.174","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("b7097d0d85b5642e","2021-01-21 21:29:27","58.8.173.64","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("7a190bd44d1c0816","2021-01-21 21:29:34","58.8.173.64","superadmin ออกจากระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("eda3f69e36033666","2021-01-24 16:44:12","124.122.14.94","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("6d6d86e26c7e90b0","2021-01-24 17:25:51","124.122.14.94","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("63308352d1766cea","2021-01-25 09:57:54","1.20.186.119","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("502362fff1fd9d02","2021-01-25 11:48:45","1.20.186.119","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("e5adb929b11952da","2021-01-25 17:50:28","1.20.186.119","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("e40170ce442c6ecb","2021-01-25 18:10:58","1.20.186.119","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("489c1f541dc4dbea","2021-01-25 18:12:24","1.20.186.119","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("158ec6cc13b64489","2021-01-25 18:19:38","1.20.186.119","superadmin ออกจากระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("4288744ce6313ad5","2021-01-25 18:27:08","1.20.186.119","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("cda417a8f4b4e83c","2021-01-26 11:21:40","1.10.173.103","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("cd9df499005d4235","2021-01-26 11:23:47","1.10.173.103","ctw เข้าสู่ระบบ.","16485085fc8bb978628a63f51cf7e085");
INSERT INTO logs VALUES("b2fedcb2aff7ab3a","2021-01-26 12:52:31","1.10.173.103","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("6cf5cab6aa1f0a96","2021-01-26 13:05:34","1.10.173.103","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("3c061cbcaea2a21b","2021-01-26 13:46:10","1.10.173.103","ctw เข้าสู่ระบบ.","16485085fc8bb978628a63f51cf7e085");
INSERT INTO logs VALUES("213c84a155fe33d3","2021-01-26 14:03:07","1.10.173.103","ctw ออกจากระบบ.","16485085fc8bb978628a63f51cf7e085");
INSERT INTO logs VALUES("2de572921ff67761","2021-01-26 14:03:13","1.10.173.103","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("a3864daf3260da66","2021-01-26 14:45:40","1.10.173.103","superadmin ออกจากระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("521cabac39d42fbf","2021-01-26 14:45:44","1.10.173.103","ctw เข้าสู่ระบบ.","16485085fc8bb978628a63f51cf7e085");
INSERT INTO logs VALUES("41f27b6c1e427708","2021-01-26 14:46:40","1.10.173.103","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("3620e715eb136878","2021-01-26 14:52:19","1.10.173.103","ctw ออกจากระบบ.","16485085fc8bb978628a63f51cf7e085");
INSERT INTO logs VALUES("8947de7a038db0f3","2021-01-26 14:52:23","1.10.173.103","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("e9cd19dc9cc7b671","2021-01-26 15:02:39","1.10.173.103","superadmin ออกจากระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("9ce69099366801c5","2021-01-26 15:02:44","1.10.173.103","ctw เข้าสู่ระบบ.","16485085fc8bb978628a63f51cf7e085");
INSERT INTO logs VALUES("e6d83e485773ac5d","2021-01-26 15:03:39","1.10.173.103","ctw ออกจากระบบ.","16485085fc8bb978628a63f51cf7e085");
INSERT INTO logs VALUES("84d3c96bfefa644b","2021-01-26 15:03:42","1.10.173.103","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("ad019a85bbcd3753","2021-01-26 15:11:28","1.10.173.103","superadmin ออกจากระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("4fce4a6f6c41ba54","2021-01-26 15:11:51","1.10.173.103","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("2cdca1bc94558f66","2021-01-26 15:12:16","1.10.173.103","superadmin ออกจากระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("972643fb08a7d60d","2021-01-26 15:12:21","1.10.173.103","HR เข้าสู่ระบบ.","bbaf8a58eaf567ac5c5e52a04e3ca279");
INSERT INTO logs VALUES("7f6b49c306c76d20","2021-01-26 15:13:22","1.10.173.103","HR ออกจากระบบ.","bbaf8a58eaf567ac5c5e52a04e3ca279");
INSERT INTO logs VALUES("4beb7600432d8d05","2021-01-26 15:13:26","1.10.173.103","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("ac7f892217ef6ca4","2021-01-26 15:27:10","1.10.173.103","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("966d8f131f3c5f6a","2021-01-26 15:44:30","1.10.173.103","superadmin ออกจากระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("03795052f3819494","2021-01-26 15:44:34","1.10.173.103","ctw เข้าสู่ระบบ.","16485085fc8bb978628a63f51cf7e085");
INSERT INTO logs VALUES("936ea0d4b6813a5a","2021-01-26 15:45:57","1.10.173.103","ctw ออกจากระบบ.","16485085fc8bb978628a63f51cf7e085");
INSERT INTO logs VALUES("e76b9b4612db62bf","2021-01-27 12:32:41","101.51.126.14","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("5b54b5d2723a183e","2021-01-27 13:09:19","101.51.126.14","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("b91b68288935ecb2","2021-01-27 18:33:37","171.97.112.134","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("78520e5c2ea1eb20","2021-01-27 18:40:27","101.51.126.14","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("88244c03c23867b5","2021-01-28 09:37:26","101.108.0.167","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("738818597adc710a","2021-01-28 11:28:30","101.108.0.167","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("ed92713665645116","2021-01-28 11:58:13","101.108.0.167","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("7a9f8c8187e6bbcb","2021-01-28 13:29:42","101.108.0.167","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("5aaecebbfaed4173","2021-01-28 13:39:31","101.108.0.167","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("50a57187ccd4f084","2021-01-28 14:56:52","101.108.0.167","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("2517b57cd3dbed1d","2021-01-28 15:06:35","101.108.0.167","IT002 เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("67f364dcba8c8aa4","2021-01-28 15:07:37","101.108.0.167","superadmin ออกจากระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("a3cdb1df27e7880c","2021-01-28 15:07:43","101.108.0.167","ctw เข้าสู่ระบบ.","16485085fc8bb978628a63f51cf7e085");
INSERT INTO logs VALUES("3edbcb198d25b526","2021-01-28 18:09:39","171.96.221.249","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("65f6108ef440d6cf","2021-01-29 17:27:51","1.20.185.161","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("e27cd50d9fd6a207","2021-01-29 18:15:01","1.20.185.161","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("3152e36fe32ada03","2021-01-29 18:15:12","1.20.185.161","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("bef2991ad0b22bd1","2021-01-30 10:05:14","1.20.185.161","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("91799cc24f73c6ed","2021-01-30 10:54:21","1.20.185.161","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("14e5fd316a275bb5","2021-01-30 14:50:52","1.20.185.161","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("579857652f34eac5","2021-02-01 10:36:06","171.97.99.16","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("63d393939fe32373","2021-02-02 09:22:04","101.108.6.237","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("d8a071d3275d8c3c","2021-02-02 09:32:52","101.108.6.237","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("e783919fe45ee425","2021-02-02 09:58:28","101.108.6.237","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("70fc5d544ccb2aba","2021-02-02 13:01:13","58.8.157.156","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("e8ece4cc774042c2","2021-02-04 02:45:52","115.87.124.174","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("71d5cc86b164538c","2021-02-04 16:06:36","223.24.164.35","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("67242e115b394b2c","2021-02-04 17:10:50","1.20.201.32","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("9f10b0821fc87497","2021-02-13 22:06:43","58.8.225.3","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("74e6386d5d69570a","2021-02-13 22:21:28","58.8.225.3","superadmin ออกจากระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("7e93297bba14b7fa","2021-02-13 22:21:55","58.8.225.3","ctw เข้าสู่ระบบ.","16485085fc8bb978628a63f51cf7e085");
INSERT INTO logs VALUES("357841a5bd6c4643","2021-02-13 22:21:58","58.8.225.3","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("31badf75eac45e65","2021-02-13 22:50:21","58.8.225.3","ctw เข้าสู่ระบบ.","16485085fc8bb978628a63f51cf7e085");
INSERT INTO logs VALUES("d5e0da5273b5ba18","2021-02-14 19:31:49","124.122.90.202","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("584ccb4dca63ad1c","2021-02-14 23:47:50","119.76.1.96","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("89f4550e1e8e79e5","2021-02-15 00:19:26","119.76.1.96","superadmin ออกจากระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("08db369b01c3d513","2021-02-15 00:19:43","119.76.1.96","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("95cc5d371d389031","2021-02-15 00:20:27","119.76.1.96","superadmin ออกจากระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("1b295be4519ee90f","2021-02-15 00:20:34","119.76.1.96","TEST เข้าสู่ระบบ.","46c567b86f983d75f5eabd2492597c62");
INSERT INTO logs VALUES("43d9bca0edf35b88","2021-02-15 00:26:20","119.76.1.96","TEST ออกจากระบบ.","46c567b86f983d75f5eabd2492597c62");
INSERT INTO logs VALUES("2dd689bd99564a82","2021-02-15 00:26:58","119.76.1.96","TEST เข้าสู่ระบบ.","46c567b86f983d75f5eabd2492597c62");
INSERT INTO logs VALUES("80821c49fb233238","2021-02-15 00:29:30","119.76.1.96","TEST ออกจากระบบ.","46c567b86f983d75f5eabd2492597c62");
INSERT INTO logs VALUES("f90fbb25f257c2a1","2021-02-15 00:29:43","119.76.1.96","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("b25599539952ffd3","2021-02-15 09:56:25","124.122.90.202","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("6a123e8913e2b068","2021-02-15 09:59:49","124.122.90.202","superadmin ออกจากระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("b0821188e7b5db1f","2021-02-15 10:50:14","1.10.250.91","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("507ca880b2491ddd","2021-02-15 13:16:17","1.10.250.91","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("9a59a70fab774297","2021-02-15 16:55:37","1.10.250.91","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("ebb6e69db297d192","2021-02-15 22:14:57","124.120.31.25","CDC เข้าสู่ระบบ.","b496e28463b931118820246a08cf9826");
INSERT INTO logs VALUES("a89d3ef710c6b631","2021-02-15 22:15:04","124.120.31.25","CDC ออกจากระบบ.","b496e28463b931118820246a08cf9826");
INSERT INTO logs VALUES("eeda9846aefd390c","2021-02-15 22:17:50","124.120.31.25","CDC เข้าสู่ระบบ.","b496e28463b931118820246a08cf9826");
INSERT INTO logs VALUES("35c390ef4e01c841","2021-02-16 16:09:59","101.108.13.42","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("eb9511c646cc0d56","2021-02-16 16:11:37","101.108.13.42","CDC เข้าสู่ระบบ.","b496e28463b931118820246a08cf9826");
INSERT INTO logs VALUES("07425056629affc5","2021-02-16 16:11:48","101.108.13.42","CDC ออกจากระบบ.","b496e28463b931118820246a08cf9826");
INSERT INTO logs VALUES("0021b9ad7600e55e","2021-02-16 17:47:21","101.108.13.42","CDC เข้าสู่ระบบ.","b496e28463b931118820246a08cf9826");
INSERT INTO logs VALUES("38539bddccfe7d28","2021-02-16 17:47:27","101.108.13.42","CDC ออกจากระบบ.","b496e28463b931118820246a08cf9826");
INSERT INTO logs VALUES("d1bd5134623a60e8","2021-02-16 17:48:26","101.108.13.42","CDC เข้าสู่ระบบ.","b496e28463b931118820246a08cf9826");
INSERT INTO logs VALUES("8231a0e210f3190f","2021-02-16 17:48:34","101.108.13.42","CDC ออกจากระบบ.","b496e28463b931118820246a08cf9826");
INSERT INTO logs VALUES("f89380803afa7086","2021-02-16 17:48:45","101.108.13.42","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("c0f503ca3862d2aa","2021-02-16 17:49:48","101.108.13.42","supervisor เข้าสู่ระบบ.","3b28104db64a6f4666ddff80f3c79e2b");
INSERT INTO logs VALUES("df52a7768b201c09","2021-02-16 17:49:53","101.108.13.42","supervisor ออกจากระบบ.","3b28104db64a6f4666ddff80f3c79e2b");
INSERT INTO logs VALUES("c6a56e00c2cca0e3","2021-02-16 17:52:20","101.108.13.42","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("64731c71b0f6bef6","2021-02-16 17:53:09","101.108.13.42","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("9f5dbea920b5a2d3","2021-02-16 23:57:09","115.87.201.3","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("173a3677a937ad38","2021-02-16 23:57:14","115.87.201.3","superadmin ออกจากระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("5a6c53330095253b","2021-02-16 23:57:28","115.87.201.3","CDC เข้าสู่ระบบ.","b496e28463b931118820246a08cf9826");
INSERT INTO logs VALUES("e43d0636bcd40273","2021-02-16 23:57:38","115.87.201.3","CDC ออกจากระบบ.","b496e28463b931118820246a08cf9826");
INSERT INTO logs VALUES("17d81fa38593764e","2021-02-16 23:59:34","115.87.201.3","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("29b35a58e5085aab","2021-02-17 00:21:56","115.87.201.3","superadmin ออกจากระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("7ff91daf50f8d964","2021-02-17 10:29:31","101.108.8.85","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("7c66a507fd88475c","2021-02-17 10:29:42","101.108.8.85","superadmin ออกจากระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("1edce4bcd4de432a","2021-02-17 10:30:02","101.108.8.85","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("0fcb95c66816f8b3","2021-02-17 10:49:31","101.108.8.85","superadmin ออกจากระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("626e65aba8f7bd61","2021-02-17 10:49:37","101.108.8.85","TMK เข้าสู่ระบบ.","451453af732f6b70835c9dcec5db3b93");
INSERT INTO logs VALUES("a45eb23606bbf0f0","2021-02-17 17:23:36","101.108.8.85","TMK เข้าสู่ระบบ.","451453af732f6b70835c9dcec5db3b93");
INSERT INTO logs VALUES("671c1927373fa2f6","2021-02-17 17:23:47","101.108.8.85","TMK ออกจากระบบ.","451453af732f6b70835c9dcec5db3b93");
INSERT INTO logs VALUES("1b3f7d0b27bdde3c","2021-02-17 17:24:03","101.108.8.85","CDC เข้าสู่ระบบ.","b496e28463b931118820246a08cf9826");
INSERT INTO logs VALUES("e6960346eff627f3","2021-02-17 17:24:13","101.108.8.85","CDC ออกจากระบบ.","b496e28463b931118820246a08cf9826");
INSERT INTO logs VALUES("f73edc7728980985","2021-02-17 17:24:18","101.108.8.85","CBN เข้าสู่ระบบ.","9aa946d6abfcb4cfc9ee258593eff00f");
INSERT INTO logs VALUES("f7826c2399466503","2021-02-17 17:24:21","101.108.8.85","CBN ออกจากระบบ.","9aa946d6abfcb4cfc9ee258593eff00f");
INSERT INTO logs VALUES("61c646673145cffa","2021-02-17 17:24:29","101.108.8.85","CR3 เข้าสู่ระบบ.","b29017088b3135c435f9c7912ec2cdb2");
INSERT INTO logs VALUES("e2a5faa8e603f4cc","2021-02-17 17:24:32","101.108.8.85","CR3 ออกจากระบบ.","b29017088b3135c435f9c7912ec2cdb2");
INSERT INTO logs VALUES("c5804577e2f49453","2021-02-17 17:24:39","101.108.8.85","T21 เข้าสู่ระบบ.","b17177683249bb2cda3472e14d984e60");
INSERT INTO logs VALUES("f892ff36600de4e4","2021-02-17 17:24:42","101.108.8.85","T21 ออกจากระบบ.","b17177683249bb2cda3472e14d984e60");
INSERT INTO logs VALUES("50117d616f7e1391","2021-02-17 17:24:58","101.108.8.85","CTW  เข้าสู่ระบบ.","cf4178eda791cfcbd3f20efe1a1ec35a");
INSERT INTO logs VALUES("d46050dd6736a773","2021-02-17 17:25:04","101.108.8.85","CTW  ออกจากระบบ.","cf4178eda791cfcbd3f20efe1a1ec35a");
INSERT INTO logs VALUES("b62633e33ea7ead9","2021-02-17 17:25:10","101.108.8.85","CR9 เข้าสู่ระบบ.","6340f02bed9ccc2a8a79007a3d67a9ad");
INSERT INTO logs VALUES("158abc5851915b68","2021-02-17 17:25:13","101.108.8.85","CR9 ออกจากระบบ.","6340f02bed9ccc2a8a79007a3d67a9ad");
INSERT INTO logs VALUES("0bc130359deb1a48","2021-02-17 17:25:21","101.108.8.85","PMN เข้าสู่ระบบ.","696d924c3decaabd113b928b63cb8e9e");
INSERT INTO logs VALUES("1be86d2f3b8e1533","2021-02-17 17:25:27","101.108.8.85","PMN ออกจากระบบ.","696d924c3decaabd113b928b63cb8e9e");
INSERT INTO logs VALUES("481c613efead835b","2021-02-17 17:25:31","101.108.8.85","NEB เข้าสู่ระบบ.","3db564ba6fc573bad2628be5b7de4855");
INSERT INTO logs VALUES("a45092ba5d30cf1a","2021-02-17 17:25:34","101.108.8.85","NEB ออกจากระบบ.","3db564ba6fc573bad2628be5b7de4855");
INSERT INTO logs VALUES("8baf74c234daaa4e","2021-02-17 17:25:38","101.108.8.85","NGS เข้าสู่ระบบ.","6809f49f86586a97cb888adc3119668b");
INSERT INTO logs VALUES("c54e0807443a1acb","2021-02-17 17:25:41","101.108.8.85","NGS ออกจากระบบ.","6809f49f86586a97cb888adc3119668b");
INSERT INTO logs VALUES("d422bbd8c6e9db11","2021-02-17 17:26:18","101.108.8.85","SCT เข้าสู่ระบบ.","bfa7daa6736959ef0ec9b2ee01c1d656");
INSERT INTO logs VALUES("951af3cfb58f252f","2021-02-17 17:26:25","101.108.8.85","SCT ออกจากระบบ.","bfa7daa6736959ef0ec9b2ee01c1d656");
INSERT INTO logs VALUES("d16522941eb57979","2021-02-17 17:26:29","101.108.8.85","CCW เข้าสู่ระบบ.","06ac11af0ac13b221a953bfb54ecaa92");
INSERT INTO logs VALUES("494d41bb09927e97","2021-02-17 17:26:32","101.108.8.85","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("ad91254fbc601b84","2021-02-17 17:26:35","101.108.8.85","CCW ออกจากระบบ.","06ac11af0ac13b221a953bfb54ecaa92");
INSERT INTO logs VALUES("1dbd020269aa65a4","2021-02-17 17:26:40","101.108.8.85","ZPE เข้าสู่ระบบ.","8af593251cd53494bf4f6cd658351815");
INSERT INTO logs VALUES("99ed60609b3e80fc","2021-02-17 17:26:42","101.108.8.85","ZPE ออกจากระบบ.","8af593251cd53494bf4f6cd658351815");
INSERT INTO logs VALUES("c7140fd376908dd4","2021-02-17 17:26:49","101.108.8.85","CRP เข้าสู่ระบบ.","9cc29e8c2b924de0fd3ef55737a159c0");
INSERT INTO logs VALUES("1cdf166897c00060","2021-02-17 17:26:52","101.108.8.85","CRP ออกจากระบบ.","9cc29e8c2b924de0fd3ef55737a159c0");
INSERT INTO logs VALUES("1a9809f17840e8df","2021-02-17 17:26:59","101.108.8.85","MBP เข้าสู่ระบบ.","e782c0270070c7ff34dc7984a3643741");
INSERT INTO logs VALUES("6ba1d2bf78e8b9f8","2021-02-17 17:27:01","101.108.8.85","MBP ออกจากระบบ.","e782c0270070c7ff34dc7984a3643741");
INSERT INTO logs VALUES("f5ea908d59a65c77","2021-02-17 17:27:05","101.108.8.85","SCQ เข้าสู่ระบบ.","9fe4987d685fcbff9b1a3011cdd12b35");
INSERT INTO logs VALUES("1250ceec8f37dc6d","2021-02-17 17:27:07","101.108.8.85","SCQ ออกจากระบบ.","9fe4987d685fcbff9b1a3011cdd12b35");
INSERT INTO logs VALUES("994e02151576c1b3","2021-02-17 17:27:12","101.108.8.85","CPK เข้าสู่ระบบ.","cec9ac90af27b74546e22910bdc5bfff");
INSERT INTO logs VALUES("89d437db63c145c2","2021-02-17 17:27:19","101.108.8.85","CPK ออกจากระบบ.","cec9ac90af27b74546e22910bdc5bfff");
INSERT INTO logs VALUES("4b91bf9000cb5e00","2021-02-17 17:27:22","101.108.8.85","MGB เข้าสู่ระบบ.","859cd041e3fe84e5e65b5c178452841f");
INSERT INTO logs VALUES("8e103cff14582118","2021-02-17 17:27:25","101.108.8.85","MGB ออกจากระบบ.","859cd041e3fe84e5e65b5c178452841f");
INSERT INTO logs VALUES("e1b7f24afd7fbd9d","2021-02-17 17:27:29","101.108.8.85","CWG เข้าสู่ระบบ.","52f2a5ca589fe4b36097dd5c55c4ac9c");
INSERT INTO logs VALUES("b0ffb7d4daf7638c","2021-02-17 17:27:37","101.108.8.85","CWG ออกจากระบบ.","52f2a5ca589fe4b36097dd5c55c4ac9c");
INSERT INTO logs VALUES("f4d4c207dbafdec5","2021-02-17 17:27:41","101.108.8.85","ICS เข้าสู่ระบบ.","79ba10e5305e95e757761317a07fca37");
INSERT INTO logs VALUES("0541ec76873d9471","2021-02-17 17:27:47","101.108.8.85","ICS ออกจากระบบ.","79ba10e5305e95e757761317a07fca37");
INSERT INTO logs VALUES("fe49170229245735","2021-02-17 17:27:50","101.108.8.85","SCP เข้าสู่ระบบ.","7611717e7dfb53c91a776dcd505f9802");
INSERT INTO logs VALUES("f4ac725a15bfc6ae","2021-02-17 17:27:57","101.108.8.85","SCP ออกจากระบบ.","7611717e7dfb53c91a776dcd505f9802");
INSERT INTO logs VALUES("0c8c06569234d24f","2021-02-17 18:38:47","125.24.137.20","CTW  เข้าสู่ระบบ.","cf4178eda791cfcbd3f20efe1a1ec35a");
INSERT INTO logs VALUES("4cedcbab0486708b","2021-02-18 08:24:34","124.120.36.233","TMK เข้าสู่ระบบ.","451453af732f6b70835c9dcec5db3b93");
INSERT INTO logs VALUES("9ab27768089f41e5","2021-02-18 08:39:36","124.120.36.233","TMK เข้าสู่ระบบ.","451453af732f6b70835c9dcec5db3b93");
INSERT INTO logs VALUES("61fbd98f3852c4bd","2021-02-18 08:43:58","124.120.36.233","TMK เข้าสู่ระบบ.","451453af732f6b70835c9dcec5db3b93");
INSERT INTO logs VALUES("e473211b07c76e63","2021-02-18 08:44:34","124.120.36.233","TMK เข้าสู่ระบบ.","451453af732f6b70835c9dcec5db3b93");
INSERT INTO logs VALUES("808c9a122c16ad9a","2021-02-18 08:45:46","124.120.36.233","TMK เข้าสู่ระบบ.","451453af732f6b70835c9dcec5db3b93");
INSERT INTO logs VALUES("79e2a0cce8dd54ff","2021-02-18 10:47:15","182.232.158.195","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("ae6c66a9c55cfd12","2021-02-18 13:00:14","171.6.92.112","CR9 เข้าสู่ระบบ.","6340f02bed9ccc2a8a79007a3d67a9ad");
INSERT INTO logs VALUES("a63963eaa6ea58b6","2021-02-18 13:07:52","27.55.88.109","SCP เข้าสู่ระบบ.","7611717e7dfb53c91a776dcd505f9802");
INSERT INTO logs VALUES("515412dada9c375f","2021-02-18 13:14:56","1.47.196.164","janejira เข้าสู่ระบบ.","11c0009be8f4e977c6998edce04c9b2e");
INSERT INTO logs VALUES("14e8f0bbf3c41e0f","2021-02-18 13:16:36","27.55.88.109","SCP เข้าสู่ระบบ.","7611717e7dfb53c91a776dcd505f9802");
INSERT INTO logs VALUES("d23afadf316576fe","2021-02-18 13:20:04","1.46.11.75","CDC เข้าสู่ระบบ.","b496e28463b931118820246a08cf9826");
INSERT INTO logs VALUES("ec4b581118cc7a8c","2021-02-18 13:30:15","27.55.77.239","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("6f5a08446e9e1d4e","2021-02-18 14:13:24","58.8.85.114","janejira เข้าสู่ระบบ.","11c0009be8f4e977c6998edce04c9b2e");
INSERT INTO logs VALUES("7ab0d41972db485e","2021-02-18 14:14:55","49.229.138.76","janejira เข้าสู่ระบบ.","11c0009be8f4e977c6998edce04c9b2e");
INSERT INTO logs VALUES("48c9193f0bdefeb6","2021-02-18 14:24:23","27.55.88.109","SCP เข้าสู่ระบบ.","7611717e7dfb53c91a776dcd505f9802");
INSERT INTO logs VALUES("7c0e06f7ff3f163d","2021-02-18 14:31:39","1.46.73.138","SCP เข้าสู่ระบบ.","7611717e7dfb53c91a776dcd505f9802");
INSERT INTO logs VALUES("1c6ba8e7aa4adc33","2021-02-18 15:19:27","58.8.85.114","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("ca7ae938b5cb05bc","2021-02-18 15:37:20","202.176.111.247","SCP เข้าสู่ระบบ.","7611717e7dfb53c91a776dcd505f9802");
INSERT INTO logs VALUES("9eaa2edd9f7ca520","2021-02-18 15:45:26","27.55.88.109","SCP เข้าสู่ระบบ.","7611717e7dfb53c91a776dcd505f9802");
INSERT INTO logs VALUES("e361bdf2fc3a4011","2021-02-18 15:47:25","49.229.137.181","janejira ออกจากระบบ.","11c0009be8f4e977c6998edce04c9b2e");
INSERT INTO logs VALUES("24a4cf210645a993","2021-02-18 15:47:32","49.229.137.181","SCP เข้าสู่ระบบ.","7611717e7dfb53c91a776dcd505f9802");
INSERT INTO logs VALUES("054875b163e32259","2021-02-18 15:52:13","27.55.88.109","SCP เข้าสู่ระบบ.","7611717e7dfb53c91a776dcd505f9802");
INSERT INTO logs VALUES("a6dc209e3ecb84c8","2021-02-18 16:01:50","58.8.84.90","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("a7066cf13c6143d4","2021-02-18 16:02:50","1.46.162.134","admin เข้าสู่ระบบ.","6ccdcc01b4cbc496cab3ed0c7fb20cac");
INSERT INTO logs VALUES("66a41c6ece3faac8","2021-02-18 17:09:08","1.47.196.164","supervisor เข้าสู่ระบบ.","3b28104db64a6f4666ddff80f3c79e2b");
INSERT INTO logs VALUES("5f8aee241ef54a7e","2021-02-18 17:09:52","101.108.4.243","supervisor เข้าสู่ระบบ.","3b28104db64a6f4666ddff80f3c79e2b");
INSERT INTO logs VALUES("6e62c493bfd79160","2021-02-18 17:14:15","1.47.196.164","supervisor ออกจากระบบ.","3b28104db64a6f4666ddff80f3c79e2b");
INSERT INTO logs VALUES("27c4fd088f0b605d","2021-02-18 17:14:43","1.47.196.164","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("9b5137db6eeed4dc","2021-02-18 17:34:26","125.24.183.119","ZPE เข้าสู่ระบบ.","8af593251cd53494bf4f6cd658351815");
INSERT INTO logs VALUES("933aee3e5fd4c90e","2021-02-18 17:37:08","125.24.183.119","ZPE ออกจากระบบ.","8af593251cd53494bf4f6cd658351815");
INSERT INTO logs VALUES("dde9910f77316baa","2021-02-18 17:37:25","125.24.183.119","CCW เข้าสู่ระบบ.","06ac11af0ac13b221a953bfb54ecaa92");
INSERT INTO logs VALUES("dcd9c1e765e1c15e","2021-02-18 17:37:38","125.24.183.119","CCW ออกจากระบบ.","06ac11af0ac13b221a953bfb54ecaa92");
INSERT INTO logs VALUES("a28e83bee4cdf5c1","2021-02-18 17:37:50","125.24.183.119","CCW เข้าสู่ระบบ.","06ac11af0ac13b221a953bfb54ecaa92");
INSERT INTO logs VALUES("9144230b4b8f7f09","2021-02-18 17:37:55","125.24.183.119","CCW ออกจากระบบ.","06ac11af0ac13b221a953bfb54ecaa92");
INSERT INTO logs VALUES("daee7c027d8bdd76","2021-02-18 17:38:03","125.24.183.119","ZPE เข้าสู่ระบบ.","8af593251cd53494bf4f6cd658351815");
INSERT INTO logs VALUES("bb56d40f153b4c1a","2021-02-18 17:38:06","125.24.183.119","ZPE ออกจากระบบ.","8af593251cd53494bf4f6cd658351815");
INSERT INTO logs VALUES("0d3d13065a5eb71f","2021-02-18 18:19:20","159.192.249.238","MGB เข้าสู่ระบบ.","859cd041e3fe84e5e65b5c178452841f");
INSERT INTO logs VALUES("f5351880ab699b56","2021-02-18 18:23:22","101.108.4.243","supervisor เข้าสู่ระบบ.","3b28104db64a6f4666ddff80f3c79e2b");
INSERT INTO logs VALUES("e04d5e868da7615a","2021-02-18 18:42:27","1.47.196.164","janejira เข้าสู่ระบบ.","11c0009be8f4e977c6998edce04c9b2e");
INSERT INTO logs VALUES("89e403a5d3ef960a","2021-02-18 20:51:02","159.192.249.238","MGB เข้าสู่ระบบ.","859cd041e3fe84e5e65b5c178452841f");
INSERT INTO logs VALUES("4cdded07bd744096","2021-02-19 10:02:44","1.46.4.164","janejira เข้าสู่ระบบ.","11c0009be8f4e977c6998edce04c9b2e");
INSERT INTO logs VALUES("404439fd88e950d2","2021-02-19 12:27:39","58.8.180.175","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("8004d33b9aa624b9","2021-02-19 13:19:18","58.8.180.175","superadmin ออกจากระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("4a840dc8941cd6bf","2021-02-19 13:19:25","58.8.180.175","SCT เข้าสู่ระบบ.","bfa7daa6736959ef0ec9b2ee01c1d656");
INSERT INTO logs VALUES("c75d4592e54bc2ed","2021-02-19 13:26:59","58.8.180.175","SCT ออกจากระบบ.","bfa7daa6736959ef0ec9b2ee01c1d656");
INSERT INTO logs VALUES("5a480ef06ce8261a","2021-02-19 13:27:03","58.8.180.175","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("5b65e313e2bcfeec","2021-02-19 13:28:12","58.8.180.175","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("e265c0cdc0517257","2021-02-19 15:04:16","58.8.84.90","CBN เข้าสู่ระบบ.","9aa946d6abfcb4cfc9ee258593eff00f");
INSERT INTO logs VALUES("4179cec5ead920df","2021-02-19 15:09:01","58.8.180.175","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("a3661529e20736aa","2021-02-19 15:13:59","58.8.180.175","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("8956763c1d83d50e","2021-02-19 15:19:55","124.121.113.198","MBP เข้าสู่ระบบ.","e782c0270070c7ff34dc7984a3643741");
INSERT INTO logs VALUES("f603cee8609d54fa","2021-02-19 15:22:16","171.97.202.4","NEB เข้าสู่ระบบ.","3db564ba6fc573bad2628be5b7de4855");
INSERT INTO logs VALUES("42a0cd0de0a891d6","2021-02-19 15:25:01","171.97.202.4","NEB เข้าสู่ระบบ.","3db564ba6fc573bad2628be5b7de4855");
INSERT INTO logs VALUES("91a18fe4936ea5da","2021-02-19 15:28:05","171.97.202.4","CTW  เข้าสู่ระบบ.","cf4178eda791cfcbd3f20efe1a1ec35a");
INSERT INTO logs VALUES("6d59dc9d311270c4","2021-02-19 15:28:14","171.97.202.4","CTW  ออกจากระบบ.","cf4178eda791cfcbd3f20efe1a1ec35a");
INSERT INTO logs VALUES("ef2ba5aebf3ba196","2021-02-19 15:28:28","171.97.202.4","NGS เข้าสู่ระบบ.","6809f49f86586a97cb888adc3119668b");
INSERT INTO logs VALUES("7f59365bca46ee8a","2021-02-20 11:18:59","125.24.137.132","NEB เข้าสู่ระบบ.","3db564ba6fc573bad2628be5b7de4855");
INSERT INTO logs VALUES("007496ce30e76f3b","2021-02-20 11:24:20","58.8.173.38","janejira เข้าสู่ระบบ.","11c0009be8f4e977c6998edce04c9b2e");
INSERT INTO logs VALUES("36554363348f94d9","2021-02-20 11:34:10","58.8.173.38","janejira เข้าสู่ระบบ.","11c0009be8f4e977c6998edce04c9b2e");
INSERT INTO logs VALUES("8130184a0c8a23d7","2021-02-20 13:04:41","171.6.111.233","CRP เข้าสู่ระบบ.","9cc29e8c2b924de0fd3ef55737a159c0");
INSERT INTO logs VALUES("8dd87ce45c0b94a3","2021-02-20 13:04:45","49.230.201.37","CRP เข้าสู่ระบบ.","9cc29e8c2b924de0fd3ef55737a159c0");
INSERT INTO logs VALUES("0bc6574a5157fa21","2021-02-20 13:05:23","171.6.111.233","CRP เข้าสู่ระบบ.","9cc29e8c2b924de0fd3ef55737a159c0");
INSERT INTO logs VALUES("07a434bc5434deef","2021-02-20 15:37:40","58.8.173.38","janejira เข้าสู่ระบบ.","11c0009be8f4e977c6998edce04c9b2e");
INSERT INTO logs VALUES("47e232823514be1b","2021-02-20 15:39:49","58.8.173.38","janejira ออกจากระบบ.","11c0009be8f4e977c6998edce04c9b2e");
INSERT INTO logs VALUES("dd98e3a4802dc4cd","2021-02-20 15:39:57","58.8.173.38","NEB เข้าสู่ระบบ.","3db564ba6fc573bad2628be5b7de4855");
INSERT INTO logs VALUES("853a2da184df4f4b","2021-02-20 15:44:09","110.169.157.177","CRP เข้าสู่ระบบ.","9cc29e8c2b924de0fd3ef55737a159c0");
INSERT INTO logs VALUES("67ffb9b880aa8d29","2021-02-20 16:59:07","49.237.16.93","ZPE เข้าสู่ระบบ.","8af593251cd53494bf4f6cd658351815");
INSERT INTO logs VALUES("efdd457362a8842e","2021-02-20 17:19:53","1.47.128.113","SCQ เข้าสู่ระบบ.","9fe4987d685fcbff9b1a3011cdd12b35");
INSERT INTO logs VALUES("6be4cba023af1d40","2021-02-20 17:22:03","1.47.128.113","SCQ เข้าสู่ระบบ.","9fe4987d685fcbff9b1a3011cdd12b35");
INSERT INTO logs VALUES("ab3221e2f92fd81b","2021-02-20 17:27:44","1.47.128.113","SCQ เข้าสู่ระบบ.","9fe4987d685fcbff9b1a3011cdd12b35");
INSERT INTO logs VALUES("adfa3f7c8fb13a47","2021-02-20 18:03:21","58.8.173.38","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("7c24c22818a5a005","2021-02-20 20:17:39","184.22.84.120","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("ba405b50bf41dcf4","2021-02-20 20:20:15","184.22.84.120","pattapee ออกจากระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("ff90c489a6635646","2021-02-20 20:36:08","124.122.55.144","CR3 เข้าสู่ระบบ.","b29017088b3135c435f9c7912ec2cdb2");
INSERT INTO logs VALUES("09a9f31f480d7ed0","2021-02-21 13:06:55","171.6.109.209","CR9 เข้าสู่ระบบ.","6340f02bed9ccc2a8a79007a3d67a9ad");
INSERT INTO logs VALUES("0c85ec773f401952","2021-02-21 13:09:44","58.8.173.246","janejira เข้าสู่ระบบ.","11c0009be8f4e977c6998edce04c9b2e");
INSERT INTO logs VALUES("ed361b30db1a2c9f","2021-02-21 21:03:59","1.47.136.125","admin เข้าสู่ระบบ.","6ccdcc01b4cbc496cab3ed0c7fb20cac");
INSERT INTO logs VALUES("9c3d91ed7d3631bb","2021-02-21 21:46:28","119.76.1.40","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("38d29a0c14295738","2021-02-21 22:18:31","119.76.1.40","superadmin ออกจากระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("5a1a019ab5bc588b","2021-02-21 22:18:34","119.76.1.40","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("f7cf912959225d58","2021-02-21 23:12:41","171.97.99.199","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("b662350375945c80","2021-02-22 09:48:07","1.4.196.209","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("1ff2a1ddf8644b43","2021-02-22 09:50:03","1.47.194.250","finance เข้าสู่ระบบ.","ed6b1d41694cc31a1bc8a0f659d5faf7");
INSERT INTO logs VALUES("f2ad8110df4010ec","2021-02-22 09:50:48","184.22.209.103","finance เข้าสู่ระบบ.","ed6b1d41694cc31a1bc8a0f659d5faf7");
INSERT INTO logs VALUES("acc402b081838c46","2021-02-22 09:50:53","1.4.196.209","superadmin ออกจากระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("26239af1d54cc816","2021-02-22 09:51:50","184.22.209.103","finance ออกจากระบบ.","ed6b1d41694cc31a1bc8a0f659d5faf7");
INSERT INTO logs VALUES("806f3470e4b0e77d","2021-02-22 09:52:34","1.4.196.209","HR เข้าสู่ระบบ.","d3cea0a13419c7b7d226a432af757ca4");
INSERT INTO logs VALUES("c8f386b29105d71d","2021-02-22 09:56:25","180.183.102.191","finance เข้าสู่ระบบ.","ed6b1d41694cc31a1bc8a0f659d5faf7");
INSERT INTO logs VALUES("188d26ca32603389","2021-02-22 09:58:10","1.4.196.209","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("65e7d79bbf5321a1","2021-02-22 10:06:06","1.47.175.71","admin เข้าสู่ระบบ.","6ccdcc01b4cbc496cab3ed0c7fb20cac");
INSERT INTO logs VALUES("73d65486922df9e5","2021-02-22 10:20:32","180.183.113.163","purchase เข้าสู่ระบบ.","d5b14c346b88725387c282ac7b851ad8");
INSERT INTO logs VALUES("281f2a4b7d50cebc","2021-02-22 10:29:03","180.183.102.191","finance เข้าสู่ระบบ.","ed6b1d41694cc31a1bc8a0f659d5faf7");
INSERT INTO logs VALUES("b09ce342f0e21772","2021-02-22 10:30:40","1.4.196.209","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("f84a63a32e796255","2021-02-22 11:13:11","1.4.196.209","superadmin ออกจากระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("b35c8dbb1ac6dd4d","2021-02-22 11:13:27","1.4.196.209","janejira เข้าสู่ระบบ.","11c0009be8f4e977c6998edce04c9b2e");
INSERT INTO logs VALUES("8e732bad2bcf738f","2021-02-22 11:20:52","1.4.196.209","janejira ออกจากระบบ.","11c0009be8f4e977c6998edce04c9b2e");
INSERT INTO logs VALUES("12a7f2f3e8a96e5b","2021-02-22 11:31:14","1.4.196.209","ICS เข้าสู่ระบบ.","79ba10e5305e95e757761317a07fca37");
INSERT INTO logs VALUES("935c107f751c6033","2021-02-22 17:17:52","1.4.196.209","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("3b47b475388dd9ca","2021-02-22 17:18:52","1.4.196.209","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("390b35e470df68b9","2021-02-22 17:56:22","58.11.158.218","CR3 เข้าสู่ระบบ.","b29017088b3135c435f9c7912ec2cdb2");
INSERT INTO logs VALUES("148fb1ff7c6d4531","2021-02-22 23:48:04","115.87.236.11","janejira เข้าสู่ระบบ.","11c0009be8f4e977c6998edce04c9b2e");
INSERT INTO logs VALUES("c58b32b1faa7481f","2021-02-23 11:02:20","180.183.113.163","purchase เข้าสู่ระบบ.","d5b14c346b88725387c282ac7b851ad8");
INSERT INTO logs VALUES("3a3e3b6362eeb4a1","2021-02-23 11:45:39","1.46.130.63","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("e31356b796646dc0","2021-02-23 14:28:39","171.6.20.195","CDC เข้าสู่ระบบ.","b496e28463b931118820246a08cf9826");
INSERT INTO logs VALUES("9b74f0699b3117ea","2021-02-23 14:29:50","171.6.20.195","CDC เข้าสู่ระบบ.","b496e28463b931118820246a08cf9826");
INSERT INTO logs VALUES("43b2264336b06564","2021-02-23 14:31:02","171.6.20.195","CDC ออกจากระบบ.","b496e28463b931118820246a08cf9826");
INSERT INTO logs VALUES("8361d52a0c1da4fc","2021-02-23 16:27:30","125.24.139.21","NEB เข้าสู่ระบบ.","3db564ba6fc573bad2628be5b7de4855");
INSERT INTO logs VALUES("3fbe9b8b51770213","2021-02-23 16:33:45","1.46.130.63","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("200b24ecc02c4d30","2021-02-23 17:09:56","1.46.130.63","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("42ee0b09d64ee42b","2021-02-23 21:58:04","58.8.224.24","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("fe180544467dbeb3","2021-02-24 09:12:42","49.230.5.187","CPK เข้าสู่ระบบ.","cec9ac90af27b74546e22910bdc5bfff");
INSERT INTO logs VALUES("4ee625f614de79fd","2021-02-24 09:15:22","1.46.9.243","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("8e94b423d79db4db","2021-02-24 11:08:19","180.183.101.202","purchase เข้าสู่ระบบ.","d5b14c346b88725387c282ac7b851ad8");
INSERT INTO logs VALUES("c0ee10213768eca5","2021-02-24 17:03:50","1.46.9.243","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("3f5043d00b171ed5","2021-02-24 18:25:03","125.24.87.38","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("afea7b99e5bafae7","2021-02-25 09:39:58","101.108.7.108","HR เข้าสู่ระบบ.","d3cea0a13419c7b7d226a432af757ca4");
INSERT INTO logs VALUES("b8c936466f5a95bd","2021-02-25 09:51:05","101.108.7.108","HR ออกจากระบบ.","d3cea0a13419c7b7d226a432af757ca4");
INSERT INTO logs VALUES("c53ad60dda457275","2021-02-25 09:51:58","101.108.7.108","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("e69498ac1b47775e","2021-02-25 09:52:02","101.108.7.108","HR เข้าสู่ระบบ.","d3cea0a13419c7b7d226a432af757ca4");
INSERT INTO logs VALUES("e0fec3bff4fc4b38","2021-02-25 09:52:28","101.108.7.108","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("fa95b97a1b78c1ed","2021-02-25 10:15:59","101.108.7.108","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("abcb7bb391b193f0","2021-02-25 14:00:17","171.6.1.205","CR9 เข้าสู่ระบบ.","6340f02bed9ccc2a8a79007a3d67a9ad");
INSERT INTO logs VALUES("50e2101972b25547","2021-02-25 14:03:25","101.108.7.108","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("a2d78f02aba15186","2021-02-25 14:22:49","101.108.7.108","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("b45c4a8608ebe8aa","2021-02-25 21:27:48","101.108.151.210","TMK เข้าสู่ระบบ.","451453af732f6b70835c9dcec5db3b93");
INSERT INTO logs VALUES("b26fae15f50d82dc","2021-02-25 22:36:42","58.8.153.103","HR เข้าสู่ระบบ.","d3cea0a13419c7b7d226a432af757ca4");
INSERT INTO logs VALUES("306850de22fd285b","2021-02-26 16:46:24","125.24.136.190","NEB เข้าสู่ระบบ.","3db564ba6fc573bad2628be5b7de4855");
INSERT INTO logs VALUES("638f97a714d7f1c6","2021-02-26 18:50:32","110.168.53.213","janejira เข้าสู่ระบบ.","11c0009be8f4e977c6998edce04c9b2e");
INSERT INTO logs VALUES("c2f3aed966d1b479","2021-02-26 18:53:19","110.168.53.213","janejira เข้าสู่ระบบ.","11c0009be8f4e977c6998edce04c9b2e");
INSERT INTO logs VALUES("fa49937c9295e792","2021-02-26 19:04:52","110.168.53.213","janejira เข้าสู่ระบบ.","11c0009be8f4e977c6998edce04c9b2e");
INSERT INTO logs VALUES("a3f221773bc2932c","2021-02-27 12:09:37","125.24.138.120","NEB เข้าสู่ระบบ.","3db564ba6fc573bad2628be5b7de4855");
INSERT INTO logs VALUES("f2c1017da834ea73","2021-02-27 12:15:24","115.87.236.207","janejira เข้าสู่ระบบ.","11c0009be8f4e977c6998edce04c9b2e");
INSERT INTO logs VALUES("aabf6c7dda4b78f8","2021-02-27 12:16:16","184.22.122.114","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("dd2116c22bffc44f","2021-02-27 13:50:47","125.26.175.198","NEB เข้าสู่ระบบ.","3db564ba6fc573bad2628be5b7de4855");
INSERT INTO logs VALUES("af1c7f44d0447017","2021-02-27 13:57:09","125.26.175.198","NEB ออกจากระบบ.","3db564ba6fc573bad2628be5b7de4855");
INSERT INTO logs VALUES("611bd5ef8183edc2","2021-02-27 14:37:32","125.26.175.198","NEB เข้าสู่ระบบ.","3db564ba6fc573bad2628be5b7de4855");
INSERT INTO logs VALUES("1c091c72fc80509d","2021-02-27 14:40:39","125.26.175.198","NEB ออกจากระบบ.","3db564ba6fc573bad2628be5b7de4855");
INSERT INTO logs VALUES("871d4382d2049bac","2021-02-28 09:29:02","1.46.35.240","SCQ เข้าสู่ระบบ.","9fe4987d685fcbff9b1a3011cdd12b35");
INSERT INTO logs VALUES("9a38e8782cdd4db9","2021-02-28 10:23:08","113.53.209.96","SCQ เข้าสู่ระบบ.","9fe4987d685fcbff9b1a3011cdd12b35");
INSERT INTO logs VALUES("7afe23bca1e27640","2021-02-28 10:27:01","110.168.53.8","janejira เข้าสู่ระบบ.","11c0009be8f4e977c6998edce04c9b2e");
INSERT INTO logs VALUES("5be84328ca6dc91b","2021-02-28 18:00:05","1.46.139.234","SCQ เข้าสู่ระบบ.","9fe4987d685fcbff9b1a3011cdd12b35");
INSERT INTO logs VALUES("c162883b6a046271","2021-02-28 18:02:18","1.46.139.234","SCQ เข้าสู่ระบบ.","9fe4987d685fcbff9b1a3011cdd12b35");
INSERT INTO logs VALUES("382a3562c1cf5d43","2021-02-28 18:04:18","1.46.139.234","SCQ เข้าสู่ระบบ.","9fe4987d685fcbff9b1a3011cdd12b35");
INSERT INTO logs VALUES("4dc1e5b5c267c333","2021-02-28 18:04:35","1.46.139.234","SCQ เข้าสู่ระบบ.","9fe4987d685fcbff9b1a3011cdd12b35");
INSERT INTO logs VALUES("59f5663d54ea17a8","2021-02-28 18:05:06","1.46.139.234","SCQ เข้าสู่ระบบ.","9fe4987d685fcbff9b1a3011cdd12b35");
INSERT INTO logs VALUES("e4d77ce93ee46e12","2021-02-28 18:05:31","1.46.139.234","SCQ เข้าสู่ระบบ.","9fe4987d685fcbff9b1a3011cdd12b35");
INSERT INTO logs VALUES("229a986fe4868a14","2021-02-28 18:17:38","223.24.62.201","SCQ เข้าสู่ระบบ.","9fe4987d685fcbff9b1a3011cdd12b35");
INSERT INTO logs VALUES("5499ae3b59561feb","2021-03-01 07:42:28","125.24.55.55","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("4f2e0047af8996b8","2021-03-01 08:37:26","1.20.139.161","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("e188cbb7a320f9f6","2021-03-01 09:42:06","1.20.139.161","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("ed6ca8d958c4b95c","2021-03-01 09:47:14","1.46.207.17","SCQ เข้าสู่ระบบ.","9fe4987d685fcbff9b1a3011cdd12b35");
INSERT INTO logs VALUES("a40458dadde59273","2021-03-01 11:15:34","1.20.139.161","HR เข้าสู่ระบบ.","d3cea0a13419c7b7d226a432af757ca4");
INSERT INTO logs VALUES("6907e1674420e1cb","2021-03-01 11:21:07","115.87.216.163","CPK เข้าสู่ระบบ.","cec9ac90af27b74546e22910bdc5bfff");
INSERT INTO logs VALUES("becd90eed5c5a6c9","2021-03-01 11:27:11","125.24.138.20","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("2730f1cf4b151132","2021-03-01 11:41:20","125.24.138.20","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("a217e27976f63f87","2021-03-01 12:21:36","125.24.138.20","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("412c19bc6c9f1ba9","2021-03-01 14:02:55","125.24.138.20","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("a97ccba8815f10d3","2021-03-01 15:58:13","49.228.168.244","CWG เข้าสู่ระบบ.","52f2a5ca589fe4b36097dd5c55c4ac9c");
INSERT INTO logs VALUES("f6dfb2bc063da392","2021-03-01 18:58:35","223.24.184.112","NEB เข้าสู่ระบบ.","3db564ba6fc573bad2628be5b7de4855");
INSERT INTO logs VALUES("5d17c8b8e132b8c3","2021-03-01 18:59:11","223.24.184.112","NEB เข้าสู่ระบบ.","3db564ba6fc573bad2628be5b7de4855");
INSERT INTO logs VALUES("1f9b31229b1e6182","2021-03-01 19:49:33","171.97.200.41","CTW  เข้าสู่ระบบ.","cf4178eda791cfcbd3f20efe1a1ec35a");
INSERT INTO logs VALUES("23326e0469dbee9a","2021-03-01 19:56:11","125.24.53.70","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("9bc3de12221b7827","2021-03-01 20:07:05","125.24.53.70","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("745bddbd56898d0c","2021-03-01 23:08:18","115.87.198.103","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("09f3fa616b85cde7","2021-03-01 23:15:27","115.87.198.103","superadmin ออกจากระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("d16f9a565928532c","2021-03-02 08:30:22","1.20.162.81","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("2112a5994ef56edd","2021-03-02 09:01:10","1.20.162.81","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("5669051a0b694573","2021-03-02 09:09:37","49.237.16.165","CR3 เข้าสู่ระบบ.","b29017088b3135c435f9c7912ec2cdb2");
INSERT INTO logs VALUES("fdfa70157b39c55a","2021-03-02 09:14:43","49.237.16.165","CR3 เข้าสู่ระบบ.","b29017088b3135c435f9c7912ec2cdb2");
INSERT INTO logs VALUES("57cb421e4a51508c","2021-03-02 13:01:27","27.55.77.72","CBN เข้าสู่ระบบ.","9aa946d6abfcb4cfc9ee258593eff00f");
INSERT INTO logs VALUES("370376af1c049fa3","2021-03-02 13:02:37","27.55.77.72","TMK เข้าสู่ระบบ.","451453af732f6b70835c9dcec5db3b93");
INSERT INTO logs VALUES("dbbcc2bfb1896374","2021-03-02 13:53:43","125.24.136.5","NEB เข้าสู่ระบบ.","3db564ba6fc573bad2628be5b7de4855");
INSERT INTO logs VALUES("4c0ef26572515e7f","2021-03-02 13:59:45","1.20.162.81","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("15cb58c174678acf","2021-03-02 14:05:12","1.20.162.81","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("619fbe1f997375e2","2021-03-02 14:26:53","125.24.136.5","NEB เข้าสู่ระบบ.","3db564ba6fc573bad2628be5b7de4855");
INSERT INTO logs VALUES("fc65e871c2796b9f","2021-03-02 18:59:51","110.168.170.187","CR3 เข้าสู่ระบบ.","b29017088b3135c435f9c7912ec2cdb2");
INSERT INTO logs VALUES("4e1a050fa159b169","2021-03-02 20:23:02","110.168.170.187","CR3 เข้าสู่ระบบ.","b29017088b3135c435f9c7912ec2cdb2");
INSERT INTO logs VALUES("92aaff5a85dfea80","2021-03-02 20:29:17","125.24.138.43","NEB เข้าสู่ระบบ.","3db564ba6fc573bad2628be5b7de4855");
INSERT INTO logs VALUES("119a32421c13024b","2021-03-02 22:13:38","58.8.224.55","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("c83e4eef72a0e7ce","2021-03-02 22:14:20","58.8.224.55","superadmin ออกจากระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("dadc4c494710220f","2021-03-02 22:14:35","58.8.224.55","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("25108ab0f33a0247","2021-03-02 22:29:15","115.87.199.47","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("d51e4e6eed6d8b71","2021-03-02 23:09:26","58.8.224.55","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("b29a09d1916733a7","2021-03-03 07:37:25","125.24.53.70","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("f7af3fc393aa13b6","2021-03-03 08:31:15","101.51.126.243","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("003f8468bd2c88b7","2021-03-03 08:51:17","101.51.126.243","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("9a0c8b4a010ba906","2021-03-03 09:34:27","101.51.126.243","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("99d96e2d756c27d5","2021-03-03 09:42:20","101.51.126.243","superadmin ออกจากระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("bb49f948fc68ffba","2021-03-03 09:46:23","101.51.126.243","finance เข้าสู่ระบบ.","ed6b1d41694cc31a1bc8a0f659d5faf7");
INSERT INTO logs VALUES("b836553cf25e6dd1","2021-03-03 09:51:41","101.51.126.243","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("a4c8a861a9d675e9","2021-03-03 09:51:47","101.51.126.243","superadmin ออกจากระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("eee7248decceeb3d","2021-03-03 09:51:55","101.51.126.243","janejira เข้าสู่ระบบ.","11c0009be8f4e977c6998edce04c9b2e");
INSERT INTO logs VALUES("4789b10d4818648a","2021-03-03 10:17:06","101.51.126.243","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("798973bf97dfcbd8","2021-03-03 11:39:05","101.51.126.243","finance เข้าสู่ระบบ.","ed6b1d41694cc31a1bc8a0f659d5faf7");
INSERT INTO logs VALUES("29204042196b4260","2021-03-03 11:39:29","101.51.126.243","finance เข้าสู่ระบบ.","ed6b1d41694cc31a1bc8a0f659d5faf7");
INSERT INTO logs VALUES("c9197f78c263c576","2021-03-03 13:30:18","223.24.152.20","supervisor เข้าสู่ระบบ.","3b28104db64a6f4666ddff80f3c79e2b");
INSERT INTO logs VALUES("e0d58dc842eb5658","2021-03-03 13:30:43","101.51.126.243","supervisor เข้าสู่ระบบ.","3b28104db64a6f4666ddff80f3c79e2b");
INSERT INTO logs VALUES("9dddfb2f0de490ad","2021-03-03 13:35:29","101.51.126.243","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("7b41034a1d57551f","2021-03-03 13:44:10","125.24.138.43","NEB เข้าสู่ระบบ.","3db564ba6fc573bad2628be5b7de4855");
INSERT INTO logs VALUES("cb4b3229c17b5847","2021-03-03 14:44:27","101.51.126.243","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("a641a4c251c9fc37","2021-03-03 14:56:31","101.51.126.243","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("2ed3c0a23eb0e947","2021-03-03 14:57:42","182.232.153.9","sv เข้าสู่ระบบ.","3b28104db64a6f4666ddff80f3c79e2b");
INSERT INTO logs VALUES("35fca3de73552382","2021-03-03 14:59:29","182.232.153.9","sv เข้าสู่ระบบ.","3b28104db64a6f4666ddff80f3c79e2b");
INSERT INTO logs VALUES("0b53285de5d007df","2021-03-03 16:05:10","110.168.170.187","CR3 เข้าสู่ระบบ.","b29017088b3135c435f9c7912ec2cdb2");
INSERT INTO logs VALUES("4546e14bcae4071c","2021-03-03 16:29:45","101.51.126.243","finance เข้าสู่ระบบ.","ed6b1d41694cc31a1bc8a0f659d5faf7");
INSERT INTO logs VALUES("e1d6429ce258f297","2021-03-03 17:20:18","1.46.199.221","SCQ เข้าสู่ระบบ.","9fe4987d685fcbff9b1a3011cdd12b35");
INSERT INTO logs VALUES("a9c0241c6e7d15c2","2021-03-03 17:29:31","1.46.199.221","SCQ ออกจากระบบ.","9fe4987d685fcbff9b1a3011cdd12b35");
INSERT INTO logs VALUES("e4a928deeb527049","2021-03-03 18:10:28","1.47.161.247","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("7960827aff97a1e8","2021-03-03 18:49:14","125.24.139.210","NEB เข้าสู่ระบบ.","3db564ba6fc573bad2628be5b7de4855");
INSERT INTO logs VALUES("535d336a562840ff","2021-03-03 22:03:06","124.122.93.189","janejira เข้าสู่ระบบ.","11c0009be8f4e977c6998edce04c9b2e");
INSERT INTO logs VALUES("ba7342901cbb98a3","2021-03-03 22:05:01","124.122.93.189","janejira เข้าสู่ระบบ.","11c0009be8f4e977c6998edce04c9b2e");
INSERT INTO logs VALUES("4a3d99a60aa34b9c","2021-03-04 09:07:12","58.11.80.218","purchase เข้าสู่ระบบ.","d5b14c346b88725387c282ac7b851ad8");
INSERT INTO logs VALUES("091ffd96951f300c","2021-03-04 09:18:29","1.47.45.240","janejira เข้าสู่ระบบ.","11c0009be8f4e977c6998edce04c9b2e");
INSERT INTO logs VALUES("69ecef9dfd62e6e4","2021-03-04 09:57:08","101.108.246.223","admin เข้าสู่ระบบ.","6ccdcc01b4cbc496cab3ed0c7fb20cac");
INSERT INTO logs VALUES("06d715ddd0c8f249","2021-03-04 09:58:07","101.108.246.223","admin ออกจากระบบ.","6ccdcc01b4cbc496cab3ed0c7fb20cac");
INSERT INTO logs VALUES("1cb1855f1e7833d4","2021-03-04 10:07:34","101.108.246.223","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("f70b82a6a49ba8a7","2021-03-04 10:07:53","101.108.246.223","superadmin ออกจากระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("fc9ff6f76853bd2f","2021-03-04 10:07:57","101.108.246.223","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("27b05c08f5c956ad","2021-03-04 10:14:58","101.108.246.223","superadmin ออกจากระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("af6d668bb8d74c90","2021-03-04 10:15:13","101.108.246.223","finance เข้าสู่ระบบ.","ed6b1d41694cc31a1bc8a0f659d5faf7");
INSERT INTO logs VALUES("13aad90fd95ca12b","2021-03-04 10:15:26","101.108.246.223","finance เข้าสู่ระบบ.","ed6b1d41694cc31a1bc8a0f659d5faf7");
INSERT INTO logs VALUES("e290900a44ccb806","2021-03-04 10:16:07","101.108.246.223","finance ออกจากระบบ.","ed6b1d41694cc31a1bc8a0f659d5faf7");
INSERT INTO logs VALUES("283aae2c923ea255","2021-03-04 10:16:19","101.108.246.223","finance ออกจากระบบ.","ed6b1d41694cc31a1bc8a0f659d5faf7");
INSERT INTO logs VALUES("07c480c4647e73a7","2021-03-04 10:43:43","101.108.246.223","janejira เข้าสู่ระบบ.","11c0009be8f4e977c6998edce04c9b2e");
INSERT INTO logs VALUES("5af751b3a9d1ad62","2021-03-04 10:51:42","101.108.246.223","janejira เข้าสู่ระบบ.","11c0009be8f4e977c6998edce04c9b2e");
INSERT INTO logs VALUES("29a0b0e3e4647035","2021-03-04 11:14:52","1.47.174.2","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("04ba0b8bd8ef6ae2","2021-03-04 11:19:08","58.8.157.18","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("d3dcd449eae6baeb","2021-03-04 14:49:07","171.98.71.104","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("b07479d8e4d64274","2021-03-04 14:59:46","125.24.139.210","NEB เข้าสู่ระบบ.","3db564ba6fc573bad2628be5b7de4855");
INSERT INTO logs VALUES("564ba181b6c64efc","2021-03-04 16:12:14","171.98.71.104","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("00a74fb9ed0f772e","2021-03-04 17:31:56","125.24.53.70","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("30f16dc75c3048de","2021-03-04 19:44:34","125.24.138.81","NEB เข้าสู่ระบบ.","3db564ba6fc573bad2628be5b7de4855");
INSERT INTO logs VALUES("525b0df2c4836d88","2021-03-05 11:41:28","101.108.100.90","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("2eda92ae7a931fda","2021-03-05 11:43:55","101.108.100.90","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("af4255e93db69dac","2021-03-05 11:44:30","101.108.100.90","superadmin ออกจากระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("74d71be6a94ea3d4","2021-03-05 11:44:33","101.108.100.90","janejira เข้าสู่ระบบ.","11c0009be8f4e977c6998edce04c9b2e");
INSERT INTO logs VALUES("d689510dde446b9b","2021-03-05 14:03:21","101.108.100.90","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("2628f6a89d19083f","2021-03-05 14:40:15","101.108.100.90","janejira เข้าสู่ระบบ.","11c0009be8f4e977c6998edce04c9b2e");
INSERT INTO logs VALUES("40206e5d529613fc","2021-03-05 14:40:52","101.108.100.90","janejira ออกจากระบบ.","11c0009be8f4e977c6998edce04c9b2e");
INSERT INTO logs VALUES("50497c3d19a58315","2021-03-05 14:42:26","101.108.100.90","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("10a30115af18670b","2021-03-05 14:45:01","101.108.100.90","superadmin ออกจากระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("6b82d69fa7b4258c","2021-03-05 14:45:30","101.108.100.90","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("94c6a7247727bd1d","2021-03-05 14:47:27","101.108.100.90","superadmin ออกจากระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("41bf1fffd3cb58fd","2021-03-05 14:47:31","101.108.100.90","SV เข้าสู่ระบบ.","6134ff997b6f5c7e403dc701c7b2cec9");
INSERT INTO logs VALUES("7ee62d18233df6a1","2021-03-05 14:48:01","110.168.176.101","SV เข้าสู่ระบบ.","6134ff997b6f5c7e403dc701c7b2cec9");
INSERT INTO logs VALUES("d9946ef2330f2698","2021-03-05 14:49:40","101.108.100.90","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("590cca738666d903","2021-03-05 14:57:51","101.108.100.90","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("f368f2c4ee834d69","2021-03-05 15:00:00","101.108.100.90","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("50c740f1b263ea60","2021-03-05 15:07:28","101.108.100.90","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("39be965787082882","2021-03-05 15:11:07","101.108.100.90","superadmin ออกจากระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("15e52f13ac44a932","2021-03-05 15:11:12","101.108.100.90","janejira เข้าสู่ระบบ.","11c0009be8f4e977c6998edce04c9b2e");
INSERT INTO logs VALUES("b48c161b34758548","2021-03-05 18:50:59","1.47.234.84","SCQ เข้าสู่ระบบ.","9fe4987d685fcbff9b1a3011cdd12b35");
INSERT INTO logs VALUES("dd931bfc8afe71ed","2021-03-05 18:52:26","1.47.234.84","SCQ เข้าสู่ระบบ.","9fe4987d685fcbff9b1a3011cdd12b35");
INSERT INTO logs VALUES("152913e1baa4aaf7","2021-03-05 18:53:04","1.47.234.84","SCQ เข้าสู่ระบบ.","9fe4987d685fcbff9b1a3011cdd12b35");
INSERT INTO logs VALUES("efd9c9ae976ebd63","2021-03-05 18:55:48","171.6.128.186","WH เข้าสู่ระบบ.","cfef909e353c8db298c5afccf010578a");
INSERT INTO logs VALUES("8418809918ff4832","2021-03-05 22:56:29","1.46.36.128","CWG เข้าสู่ระบบ.","52f2a5ca589fe4b36097dd5c55c4ac9c");
INSERT INTO logs VALUES("cfdb51edf0560c6e","2021-03-05 22:57:02","1.46.36.128","CWG ออกจากระบบ.","52f2a5ca589fe4b36097dd5c55c4ac9c");
INSERT INTO logs VALUES("aa7d66cc49c7aa15","2021-03-05 22:57:08","1.46.36.128","CWG เข้าสู่ระบบ.","52f2a5ca589fe4b36097dd5c55c4ac9c");
INSERT INTO logs VALUES("c559a6960d0e44f7","2021-03-06 10:48:21","49.230.2.62","CLP เข้าสู่ระบบ.","fc9c93f00e53b47b7bf01b72cd6180bd");
INSERT INTO logs VALUES("3deec1a5817849d2","2021-03-06 11:46:28","58.8.173.155","janejira เข้าสู่ระบบ.","11c0009be8f4e977c6998edce04c9b2e");
INSERT INTO logs VALUES("128037ede060634c","2021-03-06 17:00:08","125.24.137.172","NEB เข้าสู่ระบบ.","3db564ba6fc573bad2628be5b7de4855");
INSERT INTO logs VALUES("025bcd3d9178787d","2021-03-06 17:02:36","171.99.147.168","CTW  เข้าสู่ระบบ.","cf4178eda791cfcbd3f20efe1a1ec35a");
INSERT INTO logs VALUES("5876878fde52ec8f","2021-03-06 17:27:11","49.230.20.55","CLP เข้าสู่ระบบ.","fc9c93f00e53b47b7bf01b72cd6180bd");
INSERT INTO logs VALUES("7ebbcea3ae8edf7d","2021-03-06 17:27:47","49.230.20.55","CLP เข้าสู่ระบบ.","fc9c93f00e53b47b7bf01b72cd6180bd");
INSERT INTO logs VALUES("b4562dab2c63f501","2021-03-06 17:54:12","184.22.196.54","janejira เข้าสู่ระบบ.","11c0009be8f4e977c6998edce04c9b2e");
INSERT INTO logs VALUES("789c72e4fb31dd43","2021-03-06 21:52:26","58.8.224.41","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("83863e40c725380a","2021-03-07 11:17:11","125.24.138.118","NEB เข้าสู่ระบบ.","3db564ba6fc573bad2628be5b7de4855");
INSERT INTO logs VALUES("b55b180be9bc5f63","2021-03-07 18:15:25","101.51.92.189","ZPE เข้าสู่ระบบ.","8af593251cd53494bf4f6cd658351815");
INSERT INTO logs VALUES("182aa7fd3b328025","2021-03-07 18:21:28","101.51.92.189","ZPE ออกจากระบบ.","8af593251cd53494bf4f6cd658351815");
INSERT INTO logs VALUES("b4bccbf01d6c184a","2021-03-07 19:18:10","1.47.71.8","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("364d1dafa88aac01","2021-03-07 20:36:45","124.120.14.84","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("b4da195b7bcf2fce","2021-03-07 20:52:17","125.24.138.15","NEB เข้าสู่ระบบ.","3db564ba6fc573bad2628be5b7de4855");
INSERT INTO logs VALUES("b0dc9866a9727163","2021-03-07 20:59:51","125.24.138.15","NEB เข้าสู่ระบบ.","3db564ba6fc573bad2628be5b7de4855");
INSERT INTO logs VALUES("7f7061d6ad7d65ad","2021-03-07 21:32:45","171.96.219.183","janejira เข้าสู่ระบบ.","11c0009be8f4e977c6998edce04c9b2e");
INSERT INTO logs VALUES("6b8e33fac1a51e8e","2021-03-07 22:54:00","171.97.100.175","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("bf9bf7438532ac25","2021-03-08 10:24:39","101.108.9.161","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("da52afbd44dbbf8b","2021-03-08 10:31:06","101.108.9.161","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("65ad91d7dc5baa79","2021-03-09 10:04:12","101.108.75.254","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("08808d3e7e97a085","2021-03-09 11:33:10","1.47.132.206","T21 เข้าสู่ระบบ.","b17177683249bb2cda3472e14d984e60");
INSERT INTO logs VALUES("26e9f72e3713eefb","2021-03-09 12:30:05","115.87.116.240","PMN เข้าสู่ระบบ.","696d924c3decaabd113b928b63cb8e9e");
INSERT INTO logs VALUES("12ef5788c63f9d83","2021-03-09 12:30:33","115.87.212.114","CPK เข้าสู่ระบบ.","cec9ac90af27b74546e22910bdc5bfff");
INSERT INTO logs VALUES("0c7012a685de5814","2021-03-09 13:25:52","171.99.147.168","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("5432147e847e0bbf","2021-03-09 14:42:51","125.24.136.172","NEB เข้าสู่ระบบ.","3db564ba6fc573bad2628be5b7de4855");
INSERT INTO logs VALUES("fa7d3fef42dc2ae3","2021-03-09 14:43:34","124.122.56.15","CR3 เข้าสู่ระบบ.","b29017088b3135c435f9c7912ec2cdb2");
INSERT INTO logs VALUES("9288d23742618469","2021-03-09 15:05:19","101.108.75.254","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("fae3e10180eec848","2021-03-09 15:06:40","101.108.75.254","saowaruk เข้าสู่ระบบ.","5997108712eef9df6ecab22f1f3728f9");
INSERT INTO logs VALUES("1e40a7f454e6f673","2021-03-09 15:06:56","101.108.75.254","saowaruk ออกจากระบบ.","5997108712eef9df6ecab22f1f3728f9");
INSERT INTO logs VALUES("555dfc40d333f04b","2021-03-09 15:07:15","101.108.75.254","saowaruk เข้าสู่ระบบ.","5997108712eef9df6ecab22f1f3728f9");
INSERT INTO logs VALUES("a63e74445dd4b149","2021-03-09 15:09:39","101.108.75.254","saowaruk เข้าสู่ระบบ.","5997108712eef9df6ecab22f1f3728f9");
INSERT INTO logs VALUES("bf1bece8f88b4d8b","2021-03-09 15:28:55","115.87.222.86","ICS เข้าสู่ระบบ.","79ba10e5305e95e757761317a07fca37");
INSERT INTO logs VALUES("28b395292962c1c4","2021-03-09 15:34:17","115.87.222.86","ICS เข้าสู่ระบบ.","79ba10e5305e95e757761317a07fca37");
INSERT INTO logs VALUES("ebc5d6f6b756109e","2021-03-09 15:35:07","115.87.222.86","ICS ออกจากระบบ.","79ba10e5305e95e757761317a07fca37");
INSERT INTO logs VALUES("31e02d4374088c06","2021-03-09 15:35:19","115.87.222.86","ICS เข้าสู่ระบบ.","79ba10e5305e95e757761317a07fca37");
INSERT INTO logs VALUES("f6f9f7330d9cd8d5","2021-03-09 17:19:26","101.108.75.254","saowaruk ออกจากระบบ.","5997108712eef9df6ecab22f1f3728f9");
INSERT INTO logs VALUES("e7c463649682b51d","2021-03-09 19:10:12","125.24.138.123","NEB เข้าสู่ระบบ.","3db564ba6fc573bad2628be5b7de4855");
INSERT INTO logs VALUES("6b4ad56120c54a07","2021-03-09 19:20:07","125.24.52.156","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("72892f38e5bcdf51","2021-03-09 20:19:40","159.192.249.81","MGB เข้าสู่ระบบ.","859cd041e3fe84e5e65b5c178452841f");
INSERT INTO logs VALUES("c7ee034a1b309943","2021-03-09 20:32:39","125.24.52.156","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("1b438280217fd70b","2021-03-09 21:31:31","125.24.52.156","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("49579efeccea976f","2021-03-10 10:58:06","101.108.9.161","janejira เข้าสู่ระบบ.","11c0009be8f4e977c6998edce04c9b2e");
INSERT INTO logs VALUES("650188a398eeec58","2021-03-10 11:48:46","171.6.0.115","CDC เข้าสู่ระบบ.","b496e28463b931118820246a08cf9826");
INSERT INTO logs VALUES("dc61423625737b3d","2021-03-10 12:15:37","1.46.46.209","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("bdf2fb024f4e4952","2021-03-10 13:08:50","101.109.172.105","TMK เข้าสู่ระบบ.","451453af732f6b70835c9dcec5db3b93");
INSERT INTO logs VALUES("3b9e2403a1ff12a9","2021-03-10 17:08:41","101.108.9.161","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("7fd499bb3757662e","2021-03-10 17:15:45","101.108.9.161","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("dabc3763aa38a39a","2021-03-10 17:16:31","101.108.9.161","superadmin ออกจากระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("713fc393a76937fa","2021-03-10 17:16:41","101.108.9.161","saowaruk เข้าสู่ระบบ.","5997108712eef9df6ecab22f1f3728f9");
INSERT INTO logs VALUES("ac088fb7b80b0d32","2021-03-10 17:16:50","101.108.9.161","saowaruk ออกจากระบบ.","5997108712eef9df6ecab22f1f3728f9");
INSERT INTO logs VALUES("903ca5edf9ba7de3","2021-03-10 18:06:46","171.97.203.131","CTW  เข้าสู่ระบบ.","cf4178eda791cfcbd3f20efe1a1ec35a");
INSERT INTO logs VALUES("47fc34e158be32f4","2021-03-10 18:47:03","125.24.52.156","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("4c62f275e845ebf2","2021-03-10 19:22:39","124.122.127.79","saowaruk เข้าสู่ระบบ.","5997108712eef9df6ecab22f1f3728f9");
INSERT INTO logs VALUES("c65024533149e0f4","2021-03-10 19:23:43","124.122.127.79","saowaruk ออกจากระบบ.","5997108712eef9df6ecab22f1f3728f9");
INSERT INTO logs VALUES("bb82dd5ded38edd1","2021-03-11 12:54:39","125.24.137.46","NEB เข้าสู่ระบบ.","3db564ba6fc573bad2628be5b7de4855");
INSERT INTO logs VALUES("28b25b5e704f3727","2021-03-11 13:45:04","101.108.9.161","saowaruk เข้าสู่ระบบ.","5997108712eef9df6ecab22f1f3728f9");
INSERT INTO logs VALUES("3cbf580358e8adc7","2021-03-11 14:32:04","101.108.9.161","saowaruk เข้าสู่ระบบ.","5997108712eef9df6ecab22f1f3728f9");
INSERT INTO logs VALUES("ba9c5d7700ada9a6","2021-03-11 14:33:33","171.97.203.131","CTW  เข้าสู่ระบบ.","cf4178eda791cfcbd3f20efe1a1ec35a");
INSERT INTO logs VALUES("2732febf3f3ff8e6","2021-03-11 15:11:43","101.108.9.161","saowaruk ออกจากระบบ.","5997108712eef9df6ecab22f1f3728f9");
INSERT INTO logs VALUES("73bb9fde6297759d","2021-03-11 15:11:54","101.108.9.161","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("5057e8505ba8c424","2021-03-11 15:13:05","101.108.9.161","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("2fc9e6508573e222","2021-03-12 08:58:35","101.108.0.99","HR เข้าสู่ระบบ.","d3cea0a13419c7b7d226a432af757ca4");
INSERT INTO logs VALUES("4abb2268a831e7ea","2021-03-12 08:59:31","101.108.0.99","HR เข้าสู่ระบบ.","d3cea0a13419c7b7d226a432af757ca4");
INSERT INTO logs VALUES("def23be190d0264d","2021-03-12 08:59:37","101.108.0.99","HR ออกจากระบบ.","d3cea0a13419c7b7d226a432af757ca4");
INSERT INTO logs VALUES("e2bf0ef921417f18","2021-03-12 09:12:44","101.108.0.99","saowaruk เข้าสู่ระบบ.","5997108712eef9df6ecab22f1f3728f9");
INSERT INTO logs VALUES("942a6a12a6a49c5b","2021-03-12 09:21:27","101.108.0.99","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("a473bdbdacfcea40","2021-03-12 09:39:04","101.108.0.99","HR ออกจากระบบ.","d3cea0a13419c7b7d226a432af757ca4");
INSERT INTO logs VALUES("6c952bc7f28bd83e","2021-03-12 12:57:15","171.6.21.110","CRP เข้าสู่ระบบ.","9cc29e8c2b924de0fd3ef55737a159c0");
INSERT INTO logs VALUES("6a0e079df8e6ac3b","2021-03-12 14:35:59","223.24.145.72","CTW  เข้าสู่ระบบ.","cf4178eda791cfcbd3f20efe1a1ec35a");
INSERT INTO logs VALUES("b9812010bff553da","2021-03-12 15:03:22","101.108.0.99","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("8275608bfb74a51e","2021-03-12 15:28:45","101.108.0.99","pathumkan เข้าสู่ระบบ.","23ae8fd2022f767f5c90728825132b90");
INSERT INTO logs VALUES("f5ba0a4c6bfd7b69","2021-03-12 15:30:52","101.108.0.99","pathumkan เข้าสู่ระบบ.","23ae8fd2022f767f5c90728825132b90");
INSERT INTO logs VALUES("df0d49a7629c3ea6","2021-03-12 15:31:15","101.108.0.99","pathumkan เข้าสู่ระบบ.","23ae8fd2022f767f5c90728825132b90");
INSERT INTO logs VALUES("5eb7f456804ecd68","2021-03-12 15:32:58","101.108.0.99","pathumkan เข้าสู่ระบบ.","23ae8fd2022f767f5c90728825132b90");
INSERT INTO logs VALUES("591e5000ce4b7260","2021-03-12 15:35:15","101.108.0.99","purchase เข้าสู่ระบบ.","d5b14c346b88725387c282ac7b851ad8");
INSERT INTO logs VALUES("5f008d00f4c882c8","2021-03-12 15:39:40","101.108.0.99","pathumkan เข้าสู่ระบบ.","23ae8fd2022f767f5c90728825132b90");
INSERT INTO logs VALUES("cca5ed207c858e07","2021-03-12 15:39:47","101.108.0.99","pathumkan เข้าสู่ระบบ.","23ae8fd2022f767f5c90728825132b90");
INSERT INTO logs VALUES("75e66203c296526d","2021-03-12 17:11:00","101.108.0.99","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("711680c1562dcd70","2021-03-12 18:13:08","171.97.201.63","CTW  เข้าสู่ระบบ.","cf4178eda791cfcbd3f20efe1a1ec35a");
INSERT INTO logs VALUES("78e8ac6f26acd9fb","2021-03-12 19:01:26","171.99.156.111","saowaruk เข้าสู่ระบบ.","5997108712eef9df6ecab22f1f3728f9");
INSERT INTO logs VALUES("cbd7956d24218680","2021-03-13 15:16:30","125.24.137.252","NEB เข้าสู่ระบบ.","3db564ba6fc573bad2628be5b7de4855");
INSERT INTO logs VALUES("5440f0fbed0ee915","2021-03-13 15:39:42","1.47.163.58","saowaruk เข้าสู่ระบบ.","5997108712eef9df6ecab22f1f3728f9");
INSERT INTO logs VALUES("cf2a0edb645a72e6","2021-03-13 15:42:08","1.46.106.253","janejira เข้าสู่ระบบ.","11c0009be8f4e977c6998edce04c9b2e");
INSERT INTO logs VALUES("0d7cfe0767adbed0","2021-03-13 16:10:04","125.24.137.252","NEB เข้าสู่ระบบ.","3db564ba6fc573bad2628be5b7de4855");
INSERT INTO logs VALUES("daf584f8bcfd308c","2021-03-13 16:24:22","125.24.137.252","NEB เข้าสู่ระบบ.","3db564ba6fc573bad2628be5b7de4855");
INSERT INTO logs VALUES("c241840d15c711d7","2021-03-13 16:55:53","184.22.192.181","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("7b2b7bd249f4ccd2","2021-03-13 22:14:49","184.22.192.181","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("39c4fa8dcbe1c4aa","2021-03-14 11:41:19","1.47.164.182","T21 เข้าสู่ระบบ.","b17177683249bb2cda3472e14d984e60");
INSERT INTO logs VALUES("b9f48eb693ac972f","2021-03-14 11:52:46","171.97.201.39","T21 เข้าสู่ระบบ.","b17177683249bb2cda3472e14d984e60");
INSERT INTO logs VALUES("960efdb383476e54","2021-03-14 12:50:24","184.22.192.181","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("c05bb108cf6af0a0","2021-03-14 13:05:32","1.47.34.199","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("e1873fe95d937177","2021-03-14 18:18:27","182.232.43.126","MBP เข้าสู่ระบบ.","e782c0270070c7ff34dc7984a3643741");
INSERT INTO logs VALUES("8d60cf09b50a55b9","2021-03-14 18:31:49","184.22.192.181","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("bffe603c5fdd5a6d","2021-03-14 20:06:36","184.22.192.181","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("8e0dbcf733279ff5","2021-03-15 08:25:33","101.108.10.176","pathumkan เข้าสู่ระบบ.","23ae8fd2022f767f5c90728825132b90");
INSERT INTO logs VALUES("9b0b5a069ae4ff5d","2021-03-15 08:48:11","101.108.10.176","saowaruk เข้าสู่ระบบ.","5997108712eef9df6ecab22f1f3728f9");
INSERT INTO logs VALUES("309620c97a42ea24","2021-03-15 10:38:09","1.46.39.229","ICS เข้าสู่ระบบ.","79ba10e5305e95e757761317a07fca37");
INSERT INTO logs VALUES("37c9febe56028766","2021-03-15 10:46:46","101.108.10.176","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("84ad46f07aeb5caf","2021-03-15 13:04:27","101.108.10.176","purchase เข้าสู่ระบบ.","d5b14c346b88725387c282ac7b851ad8");
INSERT INTO logs VALUES("b7b3c4366aa5bbfd","2021-03-15 13:27:18","101.108.10.176","janejira เข้าสู่ระบบ.","11c0009be8f4e977c6998edce04c9b2e");
INSERT INTO logs VALUES("71c5edaa895e0b8b","2021-03-15 16:37:19","101.108.10.176","SV เข้าสู่ระบบ.","6134ff997b6f5c7e403dc701c7b2cec9");
INSERT INTO logs VALUES("b246befb0a1a9ab8","2021-03-15 17:54:22","1.47.131.69","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("28ad9dafb946b598","2021-03-16 08:27:29","1.20.162.74","saowaruk เข้าสู่ระบบ.","5997108712eef9df6ecab22f1f3728f9");
INSERT INTO logs VALUES("6c9825286f86623b","2021-03-16 09:36:04","1.20.162.74","saowaruk เข้าสู่ระบบ.","5997108712eef9df6ecab22f1f3728f9");
INSERT INTO logs VALUES("38b854a12f9c58ba","2021-03-16 09:59:59","1.20.162.74","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("71ff14ce274ce4a6","2021-03-16 10:16:02","103.5.25.95","ICS เข้าสู่ระบบ.","79ba10e5305e95e757761317a07fca37");
INSERT INTO logs VALUES("b3f0c01db46cfb19","2021-03-16 10:52:19","1.20.162.74","purchase เข้าสู่ระบบ.","d5b14c346b88725387c282ac7b851ad8");
INSERT INTO logs VALUES("ba811d906377e254","2021-03-16 10:58:57","101.108.146.220","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("e63099b72df2eba1","2021-03-16 11:18:41","1.20.162.74","SV เข้าสู่ระบบ.","6134ff997b6f5c7e403dc701c7b2cec9");
INSERT INTO logs VALUES("bed59aaba18c7c97","2021-03-16 11:35:38","1.20.162.74","saowaruk เข้าสู่ระบบ.","5997108712eef9df6ecab22f1f3728f9");
INSERT INTO logs VALUES("6217360621b239ae","2021-03-16 13:38:55","58.11.81.12","purchase เข้าสู่ระบบ.","d5b14c346b88725387c282ac7b851ad8");
INSERT INTO logs VALUES("c3561b0db4092650","2021-03-16 15:06:09","58.11.81.12","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("04893cc9ac298439","2021-03-16 15:48:20","58.11.81.12","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("cd794604dadaf5cd","2021-03-16 15:48:53","58.11.81.12","saowaruk ออกจากระบบ.","5997108712eef9df6ecab22f1f3728f9");
INSERT INTO logs VALUES("ad756c7e5c571f03","2021-03-16 15:49:03","58.11.81.12","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("20a3786384214069","2021-03-16 15:49:13","58.11.81.12","janejira เข้าสู่ระบบ.","11c0009be8f4e977c6998edce04c9b2e");
INSERT INTO logs VALUES("074f9cb1bfdd2d2d","2021-03-16 15:53:54","125.24.139.75","NEB เข้าสู่ระบบ.","3db564ba6fc573bad2628be5b7de4855");
INSERT INTO logs VALUES("07e296da2a3eaf79","2021-03-16 15:59:00","58.11.81.12","PMN เข้าสู่ระบบ.","696d924c3decaabd113b928b63cb8e9e");
INSERT INTO logs VALUES("41e6589308123d8e","2021-03-16 16:17:35","58.11.81.12","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("51bf4934a8b1161d","2021-03-16 16:57:35","58.11.81.12","purchase เข้าสู่ระบบ.","d5b14c346b88725387c282ac7b851ad8");
INSERT INTO logs VALUES("6a328b011897cfa0","2021-03-16 21:39:36","125.24.54.173","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("c91dd231536dbf4b","2021-03-16 21:55:45","125.24.54.173","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("f57628799760492e","2021-03-17 08:24:55","1.20.162.74","saowaruk เข้าสู่ระบบ.","5997108712eef9df6ecab22f1f3728f9");
INSERT INTO logs VALUES("3e31705d87e91ef2","2021-03-17 08:35:35","125.24.55.120","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("71aa4ee1b715d44e","2021-03-17 09:43:38","1.20.162.74","purchase เข้าสู่ระบบ.","d5b14c346b88725387c282ac7b851ad8");
INSERT INTO logs VALUES("0275cc77c7886a77","2021-03-17 11:02:07","1.20.162.74","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("ca86284d41bf17ca","2021-03-17 13:29:31","1.20.162.74","purchase เข้าสู่ระบบ.","d5b14c346b88725387c282ac7b851ad8");
INSERT INTO logs VALUES("a654b5452a4f55e9","2021-03-17 15:08:12","1.20.162.74","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("87b4b8075b0598c1","2021-03-17 16:16:49","1.20.162.74","CRP เข้าสู่ระบบ.","9cc29e8c2b924de0fd3ef55737a159c0");
INSERT INTO logs VALUES("03477abb0523dc7d","2021-03-17 16:17:52","49.230.206.99","CRP เข้าสู่ระบบ.","9cc29e8c2b924de0fd3ef55737a159c0");
INSERT INTO logs VALUES("9f44b0eb7352c30f","2021-03-17 16:25:31","27.55.79.38","CRP เข้าสู่ระบบ.","9cc29e8c2b924de0fd3ef55737a159c0");
INSERT INTO logs VALUES("0e43fea2a0847f85","2021-03-17 16:36:43","49.230.207.139","CRP เข้าสู่ระบบ.","9cc29e8c2b924de0fd3ef55737a159c0");
INSERT INTO logs VALUES("48e88a53815e328c","2021-03-17 16:55:22","125.24.55.120","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("f90a21c7b74c175b","2021-03-17 16:57:33","1.47.164.182","T21 เข้าสู่ระบบ.","b17177683249bb2cda3472e14d984e60");
INSERT INTO logs VALUES("3ca8a9f7775bc4e8","2021-03-17 17:30:54","125.24.137.11","NEB เข้าสู่ระบบ.","3db564ba6fc573bad2628be5b7de4855");
INSERT INTO logs VALUES("fb969550fe0d5a5c","2021-03-17 17:33:03","1.20.162.74","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("fd779d5bd766be00","2021-03-17 18:07:05","125.24.55.120","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("355029ff30f9bf8f","2021-03-17 19:36:28","27.55.76.250","ICS เข้าสู่ระบบ.","79ba10e5305e95e757761317a07fca37");
INSERT INTO logs VALUES("eb590f1468bc6f83","2021-03-18 08:55:10","1.20.162.74","saowaruk เข้าสู่ระบบ.","5997108712eef9df6ecab22f1f3728f9");
INSERT INTO logs VALUES("e6657386792b75ae","2021-03-18 10:47:19","223.24.167.150","ICS เข้าสู่ระบบ.","79ba10e5305e95e757761317a07fca37");
INSERT INTO logs VALUES("cd8903244137307d","2021-03-18 10:47:20","223.24.167.150","ICS เข้าสู่ระบบ.","79ba10e5305e95e757761317a07fca37");
INSERT INTO logs VALUES("1c70e17b8d3a70fc","2021-03-18 12:56:42","1.20.162.74","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("a9c448b17a449855","2021-03-18 13:33:57","1.20.162.74","janejira เข้าสู่ระบบ.","11c0009be8f4e977c6998edce04c9b2e");
INSERT INTO logs VALUES("99dff347850c8c4f","2021-03-18 13:34:20","1.20.162.74","janejira ออกจากระบบ.","11c0009be8f4e977c6998edce04c9b2e");
INSERT INTO logs VALUES("8734be17e7d16402","2021-03-18 14:22:40","1.20.162.74","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("e925f59492cf47ca","2021-03-18 14:23:41","1.20.162.74","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("35ccab8883559ca5","2021-03-18 14:31:25","1.20.162.74","superadmin ออกจากระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("1ea44e3cf5a545a8","2021-03-18 14:31:29","1.20.162.74","janejira เข้าสู่ระบบ.","11c0009be8f4e977c6998edce04c9b2e");
INSERT INTO logs VALUES("5459043f78872970","2021-03-18 17:12:31","125.24.137.11","NEB เข้าสู่ระบบ.","3db564ba6fc573bad2628be5b7de4855");
INSERT INTO logs VALUES("be508b44542d97eb","2021-03-18 18:18:24","184.82.110.3","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("db57ad21c1643c22","2021-03-18 18:35:04","1.20.162.74","janejira เข้าสู่ระบบ.","11c0009be8f4e977c6998edce04c9b2e");
INSERT INTO logs VALUES("46eaac6629b6b4fe","2021-03-18 22:45:16","125.24.54.181","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("4b79bda9fbabcbc0","2021-03-18 23:00:19","124.120.123.221","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("9692c955346cccf7","2021-03-19 08:36:54","1.20.162.74","saowaruk เข้าสู่ระบบ.","5997108712eef9df6ecab22f1f3728f9");
INSERT INTO logs VALUES("8c5e5b3329396476","2021-03-19 10:25:43","1.47.9.135","ICS เข้าสู่ระบบ.","79ba10e5305e95e757761317a07fca37");
INSERT INTO logs VALUES("4b35223b7517db50","2021-03-19 10:28:55","1.46.76.169","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("f84428a687112e47","2021-03-19 12:23:02","110.169.179.111","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("604c2ff885c1daab","2021-03-19 13:56:10","1.20.162.74","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("a4e1320cba11cf6c","2021-03-19 14:37:57","1.20.162.74","superadmin ออกจากระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("9f9591a453b7294d","2021-03-19 18:20:59","115.87.244.5","CLP เข้าสู่ระบบ.","fc9c93f00e53b47b7bf01b72cd6180bd");
INSERT INTO logs VALUES("f695eb425a197a2d","2021-03-19 19:18:38","171.96.205.69","CR3 เข้าสู่ระบบ.","b29017088b3135c435f9c7912ec2cdb2");
INSERT INTO logs VALUES("4335ff7bd4dce179","2021-03-19 19:24:03","1.20.162.74","janejira เข้าสู่ระบบ.","11c0009be8f4e977c6998edce04c9b2e");
INSERT INTO logs VALUES("f9a13342c2bcb89d","2021-03-20 10:45:27","1.46.14.100","ICS เข้าสู่ระบบ.","79ba10e5305e95e757761317a07fca37");
INSERT INTO logs VALUES("b201a7f932138079","2021-03-20 11:50:28","1.20.162.74","saowaruk เข้าสู่ระบบ.","5997108712eef9df6ecab22f1f3728f9");
INSERT INTO logs VALUES("ed5256c266249186","2021-03-20 15:13:32","1.20.162.74","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("77bd7090fac89e8c","2021-03-20 16:47:54","171.96.203.221","T21 เข้าสู่ระบบ.","b17177683249bb2cda3472e14d984e60");
INSERT INTO logs VALUES("cb35acb995de84e6","2021-03-20 16:54:34","1.47.41.97","janejira เข้าสู่ระบบ.","11c0009be8f4e977c6998edce04c9b2e");
INSERT INTO logs VALUES("797669721298b34b","2021-03-20 18:32:32","171.100.219.149","CBN เข้าสู่ระบบ.","9aa946d6abfcb4cfc9ee258593eff00f");
INSERT INTO logs VALUES("d96ba45f649ded0d","2021-03-20 18:32:54","171.100.219.149","CBN เข้าสู่ระบบ.","9aa946d6abfcb4cfc9ee258593eff00f");
INSERT INTO logs VALUES("575a055117c6e1ee","2021-03-21 21:57:23","49.230.128.145","CR9 เข้าสู่ระบบ.","6340f02bed9ccc2a8a79007a3d67a9ad");
INSERT INTO logs VALUES("6a6f2d037ce79a75","2021-03-21 22:59:34","49.228.162.80","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("e67fd3f5261d88c2","2021-03-22 08:29:36","1.4.206.203","saowaruk เข้าสู่ระบบ.","5997108712eef9df6ecab22f1f3728f9");
INSERT INTO logs VALUES("180737ea7b8c5f78","2021-03-22 10:53:04","1.4.206.203","CTW  เข้าสู่ระบบ.","cf4178eda791cfcbd3f20efe1a1ec35a");
INSERT INTO logs VALUES("0991f4417508f0a2","2021-03-22 11:30:17","1.4.206.203","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("d1a1335e7d06c330","2021-03-22 13:08:57","49.230.128.145","CR9 เข้าสู่ระบบ.","6340f02bed9ccc2a8a79007a3d67a9ad");
INSERT INTO logs VALUES("78e23171f85a0b07","2021-03-22 13:09:14","49.230.128.145","CR9 เข้าสู่ระบบ.","6340f02bed9ccc2a8a79007a3d67a9ad");
INSERT INTO logs VALUES("43135dda6748fe0e","2021-03-22 17:12:48","1.4.206.203","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("92e7acd0e0a997ac","2021-03-22 20:16:03","125.24.137.107","NEB เข้าสู่ระบบ.","3db564ba6fc573bad2628be5b7de4855");
INSERT INTO logs VALUES("470e6e161743aa90","2021-03-22 20:40:37","125.24.137.107","NEB เข้าสู่ระบบ.","3db564ba6fc573bad2628be5b7de4855");
INSERT INTO logs VALUES("e662bc219cf4b334","2021-03-23 08:56:06","1.4.206.203","finance เข้าสู่ระบบ.","ed6b1d41694cc31a1bc8a0f659d5faf7");
INSERT INTO logs VALUES("cb077a0314a85399","2021-03-23 09:01:58","1.4.206.203","saowaruk เข้าสู่ระบบ.","5997108712eef9df6ecab22f1f3728f9");
INSERT INTO logs VALUES("79d3218a5fe0165e","2021-03-23 09:46:52","1.4.206.203","pathumkan เข้าสู่ระบบ.","23ae8fd2022f767f5c90728825132b90");
INSERT INTO logs VALUES("b199c1bb4edcefc8","2021-03-23 10:58:34","125.24.137.107","NEB เข้าสู่ระบบ.","3db564ba6fc573bad2628be5b7de4855");
INSERT INTO logs VALUES("e2ac790b02578306","2021-03-23 10:59:13","125.24.137.107","NEB เข้าสู่ระบบ.","3db564ba6fc573bad2628be5b7de4855");
INSERT INTO logs VALUES("1dedded4c946dbcf","2021-03-23 14:08:27","223.24.152.8","SV เข้าสู่ระบบ.","6134ff997b6f5c7e403dc701c7b2cec9");
INSERT INTO logs VALUES("7977b5cf75bc91c0","2021-03-23 14:08:55","223.24.152.8","SV เข้าสู่ระบบ.","6134ff997b6f5c7e403dc701c7b2cec9");
INSERT INTO logs VALUES("0dbe63612b68cee7","2021-03-23 14:16:04","115.87.222.96","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("df07daf004f06bea","2021-03-23 14:48:17","115.87.222.96","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("5dadca5bcff581be","2021-03-23 15:27:31","1.4.206.203","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("02497249377f1a3d","2021-03-23 15:29:02","1.4.206.203","SV เข้าสู่ระบบ.","6134ff997b6f5c7e403dc701c7b2cec9");
INSERT INTO logs VALUES("382c70d9674a7f29","2021-03-23 15:29:42","1.4.206.203","pathumkan เข้าสู่ระบบ.","23ae8fd2022f767f5c90728825132b90");
INSERT INTO logs VALUES("f2a49088296b8acf","2021-03-23 16:12:58","1.4.206.203","purchase เข้าสู่ระบบ.","d5b14c346b88725387c282ac7b851ad8");
INSERT INTO logs VALUES("1f4e88907bdee452","2021-03-23 16:48:44","125.24.52.131","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("1396b8032fa3ff5e","2021-03-23 17:11:03","125.24.52.131","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("667d8313bd7bb37d","2021-03-23 17:39:48","125.24.52.131","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("597b61a440b341c6","2021-03-23 17:58:24","1.4.206.203","purchase เข้าสู่ระบบ.","d5b14c346b88725387c282ac7b851ad8");
INSERT INTO logs VALUES("91b59133e4dfb490","2021-03-23 20:48:21","125.24.136.38","NEB เข้าสู่ระบบ.","3db564ba6fc573bad2628be5b7de4855");
INSERT INTO logs VALUES("ee996dc84eb274f0","2021-03-23 23:27:25","124.120.213.224","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("3f845c04e92dc801","2021-03-24 08:36:45","1.4.206.203","purchase เข้าสู่ระบบ.","d5b14c346b88725387c282ac7b851ad8");
INSERT INTO logs VALUES("a48b9424fe07abc9","2021-03-24 08:39:35","1.4.206.203","purchase เข้าสู่ระบบ.","d5b14c346b88725387c282ac7b851ad8");
INSERT INTO logs VALUES("f76647c08e447cf6","2021-03-24 08:39:40","1.4.206.203","purchase เข้าสู่ระบบ.","d5b14c346b88725387c282ac7b851ad8");
INSERT INTO logs VALUES("6a8bb17e2aa1cc37","2021-03-24 08:42:46","1.4.206.203","saowaruk เข้าสู่ระบบ.","5997108712eef9df6ecab22f1f3728f9");
INSERT INTO logs VALUES("3ba62da0a9716e1a","2021-03-24 12:19:38","171.6.27.77","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("958014aa92264a39","2021-03-24 14:36:57","125.24.136.38","NEB เข้าสู่ระบบ.","3db564ba6fc573bad2628be5b7de4855");
INSERT INTO logs VALUES("10851dca4243a583","2021-03-24 14:42:53","1.4.206.203","saowaruk เข้าสู่ระบบ.","5997108712eef9df6ecab22f1f3728f9");
INSERT INTO logs VALUES("67f6c9ca0c2a759d","2021-03-24 14:53:27","171.6.27.77","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("fec72e13f74c12fd","2021-03-24 15:56:32","1.4.206.203","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("8875c9f144188089","2021-03-24 15:59:13","1.4.206.203","operation เข้าสู่ระบบ.","a60af60cc188e40bca694274e06eaf08");
INSERT INTO logs VALUES("a0360b58215a0d25","2021-03-24 16:20:51","1.4.206.203","pathumkan เข้าสู่ระบบ.","23ae8fd2022f767f5c90728825132b90");
INSERT INTO logs VALUES("3236d6fa7bf7526e","2021-03-24 16:30:49","1.4.206.203","superadmin ออกจากระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("541d446ecc6f1337","2021-03-25 09:24:17","101.108.72.5","saowaruk เข้าสู่ระบบ.","5997108712eef9df6ecab22f1f3728f9");
INSERT INTO logs VALUES("6bbe83ffc7e2da92","2021-03-25 12:40:19","101.108.72.5","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("505c51e62c85af6c","2021-03-25 15:11:32","101.108.72.5","purchase เข้าสู่ระบบ.","d5b14c346b88725387c282ac7b851ad8");
INSERT INTO logs VALUES("2af6c7acfea90fa5","2021-03-25 15:26:31","101.108.72.5","saowaruk เข้าสู่ระบบ.","5997108712eef9df6ecab22f1f3728f9");
INSERT INTO logs VALUES("b667f58863ce5f5a","2021-03-25 15:28:51","101.108.72.5","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("7e5874970c851252","2021-03-25 15:39:14","1.47.239.74","CCW เข้าสู่ระบบ.","06ac11af0ac13b221a953bfb54ecaa92");
INSERT INTO logs VALUES("577fd2ba40b9a6dd","2021-03-25 15:45:13","101.108.72.5","purchase เข้าสู่ระบบ.","d5b14c346b88725387c282ac7b851ad8");
INSERT INTO logs VALUES("755b2998c9f8fdc1","2021-03-25 17:07:38","101.108.72.5","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("0322a02ba3bc76f6","2021-03-26 09:30:14","101.108.65.61","pathumkan เข้าสู่ระบบ.","23ae8fd2022f767f5c90728825132b90");
INSERT INTO logs VALUES("d808c6e09917fe67","2021-03-26 09:52:41","101.108.65.61","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("e40eecfc54bcb8bf","2021-03-26 09:56:30","101.108.65.61","purchase เข้าสู่ระบบ.","d5b14c346b88725387c282ac7b851ad8");
INSERT INTO logs VALUES("772cb794b3093c7f","2021-03-26 10:15:30","101.108.65.61","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("3b3cc54ed147f862","2021-03-26 10:48:25","115.87.116.193","SV เข้าสู่ระบบ.","6134ff997b6f5c7e403dc701c7b2cec9");
INSERT INTO logs VALUES("1f9ef4b5b628fd68","2021-03-26 10:48:48","115.87.116.193","SV เข้าสู่ระบบ.","6134ff997b6f5c7e403dc701c7b2cec9");
INSERT INTO logs VALUES("48604c33e7a9c010","2021-03-26 10:49:07","115.87.116.193","SV เข้าสู่ระบบ.","6134ff997b6f5c7e403dc701c7b2cec9");
INSERT INTO logs VALUES("8025afca6033166e","2021-03-26 10:58:32","101.108.65.61","saowaruk เข้าสู่ระบบ.","5997108712eef9df6ecab22f1f3728f9");
INSERT INTO logs VALUES("529a6eca7c196eab","2021-03-26 11:17:00","101.108.65.61","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("86185c0b0e397527","2021-03-26 11:22:50","101.108.65.61","superadmin ออกจากระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("9adb1873145b06d6","2021-03-26 11:22:55","101.108.65.61","CBN เข้าสู่ระบบ.","9aa946d6abfcb4cfc9ee258593eff00f");
INSERT INTO logs VALUES("987900700f1f58bc","2021-03-26 11:23:13","101.108.65.61","CBN ออกจากระบบ.","9aa946d6abfcb4cfc9ee258593eff00f");
INSERT INTO logs VALUES("5bc35289bb3b21f4","2021-03-26 11:23:17","101.108.65.61","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("2eed3ff04e0b0a17","2021-03-26 14:17:36","101.108.65.61","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("bb70a63702d16cf7","2021-03-26 15:55:44","101.108.65.61","HR เข้าสู่ระบบ.","d3cea0a13419c7b7d226a432af757ca4");
INSERT INTO logs VALUES("330f9f46b3a94f34","2021-03-26 17:12:18","125.24.139.155","NEB เข้าสู่ระบบ.","3db564ba6fc573bad2628be5b7de4855");
INSERT INTO logs VALUES("1346c9d47907025a","2021-03-26 17:24:37","101.108.65.61","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("2d922730f9e75edb","2021-03-26 22:41:06","49.228.162.80","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("33a00fc6a990b665","2021-03-27 05:05:48","119.76.152.172","SV เข้าสู่ระบบ.","6134ff997b6f5c7e403dc701c7b2cec9");
INSERT INTO logs VALUES("0e6b93add8287663","2021-03-27 05:06:05","119.76.152.172","SV เข้าสู่ระบบ.","6134ff997b6f5c7e403dc701c7b2cec9");
INSERT INTO logs VALUES("9f19753992118a54","2021-03-27 12:35:41","124.120.10.162","saowaruk เข้าสู่ระบบ.","5997108712eef9df6ecab22f1f3728f9");
INSERT INTO logs VALUES("c19f5ec0430ec32a","2021-03-27 12:38:25","124.120.10.162","saowaruk เข้าสู่ระบบ.","5997108712eef9df6ecab22f1f3728f9");
INSERT INTO logs VALUES("46e3dcd8cf505b9e","2021-03-27 13:25:31","49.230.17.52","CR9 เข้าสู่ระบบ.","6340f02bed9ccc2a8a79007a3d67a9ad");
INSERT INTO logs VALUES("a9f3b5283d3cacb4","2021-03-27 13:59:13","49.230.17.52","CR9 เข้าสู่ระบบ.","6340f02bed9ccc2a8a79007a3d67a9ad");
INSERT INTO logs VALUES("41f7eb601d4c003e","2021-03-27 13:59:21","49.230.17.52","CR9 เข้าสู่ระบบ.","6340f02bed9ccc2a8a79007a3d67a9ad");
INSERT INTO logs VALUES("ba3d109c36815078","2021-03-27 14:07:31","27.55.86.225","SV เข้าสู่ระบบ.","6134ff997b6f5c7e403dc701c7b2cec9");
INSERT INTO logs VALUES("c8982cdfeaea9a75","2021-03-27 14:29:37","116.58.254.209","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("4a3afbc4696e864b","2021-03-27 18:29:53","1.47.76.120","T21 เข้าสู่ระบบ.","b17177683249bb2cda3472e14d984e60");
INSERT INTO logs VALUES("6f434fc0fa4711b0","2021-03-27 18:56:57","49.228.35.176","SV เข้าสู่ระบบ.","6134ff997b6f5c7e403dc701c7b2cec9");
INSERT INTO logs VALUES("285fe8123e562309","2021-03-27 21:07:19","49.230.13.144","pathumkan เข้าสู่ระบบ.","23ae8fd2022f767f5c90728825132b90");
INSERT INTO logs VALUES("df8251a34afa24ac","2021-03-28 11:47:02","1.47.76.157","CCW เข้าสู่ระบบ.","06ac11af0ac13b221a953bfb54ecaa92");
INSERT INTO logs VALUES("a3994774fa27fdf0","2021-03-29 08:32:53","101.108.0.162","pathumkan เข้าสู่ระบบ.","23ae8fd2022f767f5c90728825132b90");
INSERT INTO logs VALUES("9ab8687ffee65484","2021-03-29 09:20:39","101.108.0.162","HR เข้าสู่ระบบ.","d3cea0a13419c7b7d226a432af757ca4");
INSERT INTO logs VALUES("89f75758d2d10299","2021-03-29 09:28:27","101.108.0.162","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("ec08ea3e5e339e96","2021-03-29 09:31:01","101.108.0.162","saowaruk เข้าสู่ระบบ.","5997108712eef9df6ecab22f1f3728f9");
INSERT INTO logs VALUES("764d62fd02ccf448","2021-03-29 09:48:08","101.108.0.162","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("0a9b6ff8838ca26c","2021-03-29 11:04:11","101.108.0.162","SV เข้าสู่ระบบ.","6134ff997b6f5c7e403dc701c7b2cec9");
INSERT INTO logs VALUES("67962fc61bad03c5","2021-03-29 11:18:30","101.108.0.162","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("097bb8e3485f957b","2021-03-29 12:21:00","124.121.114.170","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("745e44a323d0ac46","2021-03-29 13:35:18","101.108.0.162","saowaruk เข้าสู่ระบบ.","5997108712eef9df6ecab22f1f3728f9");
INSERT INTO logs VALUES("20ca2d7e677d219c","2021-03-29 17:56:03","101.108.0.162","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("6a9faa341907ec54","2021-03-29 18:14:32","101.108.149.204","TMK เข้าสู่ระบบ.","451453af732f6b70835c9dcec5db3b93");
INSERT INTO logs VALUES("dc04c33d11b489a8","2021-03-29 18:14:55","101.108.149.204","TMK เข้าสู่ระบบ.","451453af732f6b70835c9dcec5db3b93");
INSERT INTO logs VALUES("f72f7ece80d0c5bf","2021-03-29 18:32:41","101.108.0.162","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("f5904841dc4d004d","2021-03-29 18:45:52","101.108.149.204","TMK เข้าสู่ระบบ.","451453af732f6b70835c9dcec5db3b93");
INSERT INTO logs VALUES("ac17261a412d3715","2021-03-29 18:47:22","101.108.149.204","TMK เข้าสู่ระบบ.","451453af732f6b70835c9dcec5db3b93");
INSERT INTO logs VALUES("47befe8d6c5edec5","2021-03-29 18:57:08","101.108.149.204","TMK ออกจากระบบ.","451453af732f6b70835c9dcec5db3b93");
INSERT INTO logs VALUES("214b212afa588b8d","2021-03-29 18:57:19","101.108.149.204","SV เข้าสู่ระบบ.","6134ff997b6f5c7e403dc701c7b2cec9");
INSERT INTO logs VALUES("1260fa138dd02b79","2021-03-29 18:57:46","101.108.149.204","SV ออกจากระบบ.","6134ff997b6f5c7e403dc701c7b2cec9");
INSERT INTO logs VALUES("6e85d6b0c3d84954","2021-03-30 08:36:31","1.10.250.25","saowaruk เข้าสู่ระบบ.","5997108712eef9df6ecab22f1f3728f9");
INSERT INTO logs VALUES("f24d12527f6e52da","2021-03-30 10:17:25","1.10.250.25","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("646d2756719a2cff","2021-03-30 15:55:39","118.172.251.2","SCQ เข้าสู่ระบบ.","9fe4987d685fcbff9b1a3011cdd12b35");
INSERT INTO logs VALUES("5a3f9e83dc971587","2021-03-30 22:15:41","58.11.2.131","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("812a1640d6f5d4f4","2021-03-31 09:33:16","184.82.108.239","WH เข้าสู่ระบบ.","cfef909e353c8db298c5afccf010578a");
INSERT INTO logs VALUES("02c2634ec1338795","2021-03-31 09:38:26","1.10.250.25","saowaruk เข้าสู่ระบบ.","5997108712eef9df6ecab22f1f3728f9");
INSERT INTO logs VALUES("12ca640097fd344e","2021-03-31 09:38:53","1.10.250.25","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("8a33adf411bc999a","2021-03-31 09:48:32","184.82.108.239","WH เข้าสู่ระบบ.","cfef909e353c8db298c5afccf010578a");
INSERT INTO logs VALUES("a3b6ff574dccd1d8","2021-03-31 09:48:41","184.82.108.239","WH เข้าสู่ระบบ.","cfef909e353c8db298c5afccf010578a");
INSERT INTO logs VALUES("fc1107166838d908","2021-03-31 10:01:13","1.10.250.25","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("dcd4263375681b85","2021-03-31 11:30:47","1.10.250.25","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("d181292ab959def1","2021-03-31 11:32:58","1.10.250.25","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("9b38ddffb8375356","2021-03-31 11:50:09","115.87.213.83","CTW  เข้าสู่ระบบ.","cf4178eda791cfcbd3f20efe1a1ec35a");
INSERT INTO logs VALUES("a65bb6653e4c5a03","2021-03-31 12:14:09","1.10.250.25","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("8080ed2fe5c5b22a","2021-03-31 14:24:27","1.47.172.84","CWG เข้าสู่ระบบ.","52f2a5ca589fe4b36097dd5c55c4ac9c");
INSERT INTO logs VALUES("5675e2a02975ceed","2021-03-31 15:04:53","115.87.213.83","CTW  เข้าสู่ระบบ.","cf4178eda791cfcbd3f20efe1a1ec35a");
INSERT INTO logs VALUES("d98e672cb661ff11","2021-03-31 15:25:58","1.10.250.25","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("dcf6e9ec7fc12069","2021-03-31 16:53:54","1.10.250.25","saowaruk เข้าสู่ระบบ.","5997108712eef9df6ecab22f1f3728f9");
INSERT INTO logs VALUES("85d3506fe7d456ef","2021-03-31 17:58:48","1.10.250.25","account เข้าสู่ระบบ.","3ae8086fb05d3435d3dcd9cd1565a454");
INSERT INTO logs VALUES("9a750468bc3cd229","2021-03-31 18:01:21","1.10.250.25","account เข้าสู่ระบบ.","3ae8086fb05d3435d3dcd9cd1565a454");
INSERT INTO logs VALUES("b232733b7d3a9229","2021-03-31 18:03:01","1.10.250.25","account เข้าสู่ระบบ.","3ae8086fb05d3435d3dcd9cd1565a454");
INSERT INTO logs VALUES("d23cdc24de338d3a","2021-03-31 18:04:50","1.10.250.25","account ออกจากระบบ.","3ae8086fb05d3435d3dcd9cd1565a454");
INSERT INTO logs VALUES("e5ae5dfb1a4b358e","2021-03-31 21:36:22","125.24.139.66","NEB เข้าสู่ระบบ.","3db564ba6fc573bad2628be5b7de4855");
INSERT INTO logs VALUES("386b4063e721c18f","2021-04-01 07:59:04","184.22.118.129","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("aa1d12ce438a0f88","2021-04-01 08:02:18","182.232.7.209","pathumkan เข้าสู่ระบบ.","23ae8fd2022f767f5c90728825132b90");
INSERT INTO logs VALUES("0bff9556722cc6c4","2021-04-01 08:25:46","1.10.250.25","saowaruk เข้าสู่ระบบ.","5997108712eef9df6ecab22f1f3728f9");
INSERT INTO logs VALUES("59119aa982164db0","2021-04-01 09:07:59","1.10.250.25","purchase เข้าสู่ระบบ.","d5b14c346b88725387c282ac7b851ad8");
INSERT INTO logs VALUES("a9a3a4bb9660b5f6","2021-04-01 13:05:37","125.24.138.88","NEB เข้าสู่ระบบ.","3db564ba6fc573bad2628be5b7de4855");
INSERT INTO logs VALUES("6b9c8ef8113486a8","2021-04-01 13:12:21","1.10.250.25","finance เข้าสู่ระบบ.","ed6b1d41694cc31a1bc8a0f659d5faf7");
INSERT INTO logs VALUES("33f5a5819074094c","2021-04-01 13:12:53","1.10.250.25","finance ออกจากระบบ.","ed6b1d41694cc31a1bc8a0f659d5faf7");
INSERT INTO logs VALUES("6776acc04bfa6065","2021-04-01 13:19:14","1.10.250.25","HR เข้าสู่ระบบ.","d3cea0a13419c7b7d226a432af757ca4");
INSERT INTO logs VALUES("911695fd9afa2def","2021-04-01 13:19:31","124.120.140.15","HR เข้าสู่ระบบ.","d3cea0a13419c7b7d226a432af757ca4");
INSERT INTO logs VALUES("74ccf6a23dc4a8ec","2021-04-01 13:22:28","1.10.250.25","saowaruk เข้าสู่ระบบ.","5997108712eef9df6ecab22f1f3728f9");
INSERT INTO logs VALUES("7077b866d8654880","2021-04-01 13:26:22","110.77.228.145","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("07838ca7b955798f","2021-04-01 13:41:15","1.10.250.25","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("509fe798a2b3f946","2021-04-01 13:51:18","1.10.250.25","pathumkan เข้าสู่ระบบ.","23ae8fd2022f767f5c90728825132b90");
INSERT INTO logs VALUES("cdee19054c7b3aa3","2021-04-01 13:54:36","1.10.250.25","saowaruk เข้าสู่ระบบ.","5997108712eef9df6ecab22f1f3728f9");
INSERT INTO logs VALUES("973cb327321b2333","2021-04-01 16:06:37","1.46.79.83","CPK เข้าสู่ระบบ.","cec9ac90af27b74546e22910bdc5bfff");
INSERT INTO logs VALUES("f98588951e4b7a87","2021-04-01 16:37:23","1.46.79.83","CPK เข้าสู่ระบบ.","cec9ac90af27b74546e22910bdc5bfff");
INSERT INTO logs VALUES("61855dd360eb0513","2021-04-01 17:02:35","1.10.250.25","pathumkan เข้าสู่ระบบ.","23ae8fd2022f767f5c90728825132b90");
INSERT INTO logs VALUES("ca734debe79c38fe","2021-04-01 17:04:35","184.22.118.129","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("b2254ba18f64bf28","2021-04-01 17:11:09","1.47.10.29","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("2c15946e797a9d2c","2021-04-01 17:12:01","1.47.10.29","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("3388178252a82276","2021-04-01 17:13:05","1.47.10.29","superadmin ออกจากระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("7405ad82e294a0f9","2021-04-01 17:13:16","1.47.10.29","ICS เข้าสู่ระบบ.","79ba10e5305e95e757761317a07fca37");
INSERT INTO logs VALUES("a51763df83074eb5","2021-04-01 17:13:19","1.47.10.29","ICS ออกจากระบบ.","79ba10e5305e95e757761317a07fca37");
INSERT INTO logs VALUES("837f02afd4db1d44","2021-04-01 18:04:20","1.46.141.30","CLP เข้าสู่ระบบ.","fc9c93f00e53b47b7bf01b72cd6180bd");
INSERT INTO logs VALUES("3879f2874c77e0e7","2021-04-01 18:10:22","1.47.10.29","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("2f134787c2393fce","2021-04-01 18:25:04","49.230.75.199","CDC เข้าสู่ระบบ.","b496e28463b931118820246a08cf9826");
INSERT INTO logs VALUES("c71d66be82e3d000","2021-04-01 19:22:11","49.230.231.218","pathumkan เข้าสู่ระบบ.","23ae8fd2022f767f5c90728825132b90");
INSERT INTO logs VALUES("4d9e38caa9a5c607","2021-04-01 19:46:26","49.230.75.199","CDC เข้าสู่ระบบ.","b496e28463b931118820246a08cf9826");
INSERT INTO logs VALUES("eaffbb428fd7785f","2021-04-02 09:21:53","101.108.0.104","saowaruk เข้าสู่ระบบ.","5997108712eef9df6ecab22f1f3728f9");
INSERT INTO logs VALUES("db872c195e999ddd","2021-04-02 09:22:01","101.108.0.104","purchase เข้าสู่ระบบ.","d5b14c346b88725387c282ac7b851ad8");
INSERT INTO logs VALUES("c34092def6eec369","2021-04-02 09:23:19","1.47.200.208","saowaruk เข้าสู่ระบบ.","5997108712eef9df6ecab22f1f3728f9");
INSERT INTO logs VALUES("343453a2da0578cd","2021-04-02 09:24:28","101.108.0.104","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("3a6c098335b55b27","2021-04-02 09:38:44","1.46.100.42","CLP เข้าสู่ระบบ.","fc9c93f00e53b47b7bf01b72cd6180bd");
INSERT INTO logs VALUES("34eedb369e12e93f","2021-04-02 10:52:43","101.108.0.104","HR เข้าสู่ระบบ.","d3cea0a13419c7b7d226a432af757ca4");
INSERT INTO logs VALUES("844330503578227d","2021-04-02 11:00:14","101.108.0.104","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("d5242b2ae8fc854f","2021-04-02 11:05:46","101.108.0.104","HR เข้าสู่ระบบ.","d3cea0a13419c7b7d226a432af757ca4");
INSERT INTO logs VALUES("13b19da26dac1860","2021-04-02 11:13:14","101.108.0.104","HR ออกจากระบบ.","d3cea0a13419c7b7d226a432af757ca4");
INSERT INTO logs VALUES("68f5b266058b7b8d","2021-04-02 11:38:40","101.108.0.104","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("e6b9c1335246496d","2021-04-02 11:38:44","101.108.0.104","superadmin ออกจากระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("d813f196ba4c9c3a","2021-04-02 11:38:49","101.108.0.104","janejira เข้าสู่ระบบ.","11c0009be8f4e977c6998edce04c9b2e");
INSERT INTO logs VALUES("ca571197ee5cdc8a","2021-04-02 11:46:00","101.108.0.104","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("9f79521def407a48","2021-04-02 12:00:00","101.108.0.104","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("a0cb385145c8b64a","2021-04-02 12:11:08","124.121.114.98","MBP เข้าสู่ระบบ.","e782c0270070c7ff34dc7984a3643741");
INSERT INTO logs VALUES("2628cd69937561f2","2021-04-02 12:12:34","124.122.9.219","CLP เข้าสู่ระบบ.","fc9c93f00e53b47b7bf01b72cd6180bd");
INSERT INTO logs VALUES("6cf198d7f187777f","2021-04-02 12:14:35","124.122.9.219","CLP ออกจากระบบ.","fc9c93f00e53b47b7bf01b72cd6180bd");
INSERT INTO logs VALUES("dd71bc71b62250e1","2021-04-02 12:14:53","124.122.9.219","CLP เข้าสู่ระบบ.","fc9c93f00e53b47b7bf01b72cd6180bd");
INSERT INTO logs VALUES("9a28254480de4dd1","2021-04-02 12:15:47","124.122.9.219","CLP ออกจากระบบ.","fc9c93f00e53b47b7bf01b72cd6180bd");
INSERT INTO logs VALUES("44266065b2e9d747","2021-04-02 12:39:33","58.8.84.213","CBN เข้าสู่ระบบ.","9aa946d6abfcb4cfc9ee258593eff00f");
INSERT INTO logs VALUES("d0060b85f2b47894","2021-04-02 13:10:04","115.87.116.37","PMN เข้าสู่ระบบ.","696d924c3decaabd113b928b63cb8e9e");
INSERT INTO logs VALUES("241d957292cc2f09","2021-04-02 13:12:04","124.122.9.219","CLP เข้าสู่ระบบ.","fc9c93f00e53b47b7bf01b72cd6180bd");
INSERT INTO logs VALUES("dd986d52934e6e02","2021-04-02 13:27:55","101.108.0.104","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("e3c6f7a206ea8e16","2021-04-02 13:53:23","101.108.0.104","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("3c84fe27fe20d2cb","2021-04-02 14:44:03","101.108.0.104","purchase เข้าสู่ระบบ.","d5b14c346b88725387c282ac7b851ad8");
INSERT INTO logs VALUES("201fffe2729c658b","2021-04-02 14:46:11","101.108.0.104","purchase เข้าสู่ระบบ.","d5b14c346b88725387c282ac7b851ad8");
INSERT INTO logs VALUES("2ec125c5a671d89e","2021-04-02 15:05:59","49.230.138.244","pathumkan เข้าสู่ระบบ.","23ae8fd2022f767f5c90728825132b90");
INSERT INTO logs VALUES("c4afac094382c208","2021-04-02 16:30:02","101.108.0.104","purchase เข้าสู่ระบบ.","d5b14c346b88725387c282ac7b851ad8");
INSERT INTO logs VALUES("52b46a0f5527b167","2021-04-02 17:24:43","101.108.0.104","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("2329f0ffebca6eb2","2021-04-02 18:37:32","125.24.137.163","NEB เข้าสู่ระบบ.","3db564ba6fc573bad2628be5b7de4855");
INSERT INTO logs VALUES("5bbc3701363b9798","2021-04-02 20:53:40","115.87.116.37","PMN เข้าสู่ระบบ.","696d924c3decaabd113b928b63cb8e9e");
INSERT INTO logs VALUES("c415c11aeac74b01","2021-04-03 10:16:20","101.108.0.104","purchase เข้าสู่ระบบ.","d5b14c346b88725387c282ac7b851ad8");
INSERT INTO logs VALUES("40ecbc18660042a8","2021-04-03 11:47:57","101.108.0.104","purchase เข้าสู่ระบบ.","d5b14c346b88725387c282ac7b851ad8");
INSERT INTO logs VALUES("26f83eceb8a6b1d7","2021-04-03 11:48:18","101.108.0.104","purchase เข้าสู่ระบบ.","d5b14c346b88725387c282ac7b851ad8");
INSERT INTO logs VALUES("faed80dc80f754b7","2021-04-03 11:50:09","171.96.219.4","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("10d1127d47b5c395","2021-04-03 12:11:20","171.96.219.4","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("9de3dd231e03ba7e","2021-04-04 16:57:02","171.96.219.67","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("806973ac5e57b47a","2021-04-04 16:59:31","171.96.219.67","janejira เข้าสู่ระบบ.","11c0009be8f4e977c6998edce04c9b2e");
INSERT INTO logs VALUES("7d2923cd5e3452ea","2021-04-04 19:00:59","125.24.137.32","NEB เข้าสู่ระบบ.","3db564ba6fc573bad2628be5b7de4855");
INSERT INTO logs VALUES("2e162d645b409d72","2021-04-05 08:27:49","124.120.140.82","purchase เข้าสู่ระบบ.","d5b14c346b88725387c282ac7b851ad8");
INSERT INTO logs VALUES("a8840bd6da104fc3","2021-04-05 08:50:17","101.108.3.203","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("a6337a102ebd5825","2021-04-05 08:57:04","101.108.3.203","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("223c4516d54dad34","2021-04-05 09:55:53","101.108.3.203","saowaruk เข้าสู่ระบบ.","5997108712eef9df6ecab22f1f3728f9");
INSERT INTO logs VALUES("090a59c178caa851","2021-04-05 10:37:43","101.108.3.203","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("fe8c8505d4859acf","2021-04-05 10:40:26","101.108.3.203","saowaruk เข้าสู่ระบบ.","5997108712eef9df6ecab22f1f3728f9");
INSERT INTO logs VALUES("fed8578e785bec46","2021-04-05 11:37:23","101.108.3.203","SV เข้าสู่ระบบ.","6134ff997b6f5c7e403dc701c7b2cec9");
INSERT INTO logs VALUES("4a1c76cf63e3fbdc","2021-04-05 11:41:45","101.108.3.203","pathumkan เข้าสู่ระบบ.","23ae8fd2022f767f5c90728825132b90");
INSERT INTO logs VALUES("ac3880e8198eb52a","2021-04-05 13:36:52","101.108.3.203","saowaruk เข้าสู่ระบบ.","5997108712eef9df6ecab22f1f3728f9");
INSERT INTO logs VALUES("85d836b260736e27","2021-04-05 14:44:58","1.46.161.67","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("2da62cdfbebdc27a","2021-04-05 15:31:42","101.108.3.203","SV เข้าสู่ระบบ.","6134ff997b6f5c7e403dc701c7b2cec9");
INSERT INTO logs VALUES("b17a6be48a768323","2021-04-05 16:11:05","101.108.3.203","HR เข้าสู่ระบบ.","d3cea0a13419c7b7d226a432af757ca4");
INSERT INTO logs VALUES("0240b85dec5b0df0","2021-04-05 16:59:08","182.232.146.90","CBN เข้าสู่ระบบ.","9aa946d6abfcb4cfc9ee258593eff00f");
INSERT INTO logs VALUES("cf1770275fe4973b","2021-04-05 17:08:53","101.108.3.203","HR เข้าสู่ระบบ.","d3cea0a13419c7b7d226a432af757ca4");
INSERT INTO logs VALUES("89b6ffb0d2b09499","2021-04-05 17:13:23","101.108.3.203","HR ออกจากระบบ.","d3cea0a13419c7b7d226a432af757ca4");
INSERT INTO logs VALUES("21c922de879effc5","2021-04-05 19:34:20","171.100.92.10","PMN เข้าสู่ระบบ.","696d924c3decaabd113b928b63cb8e9e");
INSERT INTO logs VALUES("864f7c15b718c1a5","2021-04-05 23:35:50","1.47.3.14","CBN เข้าสู่ระบบ.","9aa946d6abfcb4cfc9ee258593eff00f");
INSERT INTO logs VALUES("b4a0887ffce57fa6","2021-04-05 23:35:51","1.47.3.14","CBN เข้าสู่ระบบ.","9aa946d6abfcb4cfc9ee258593eff00f");
INSERT INTO logs VALUES("b4a0887ffce57fa6","2021-04-05 23:35:51","1.47.3.14","CBN เข้าสู่ระบบ.","9aa946d6abfcb4cfc9ee258593eff00f");
INSERT INTO logs VALUES("86cec344bff7b3e2","2021-04-05 23:35:53","1.47.3.14","CBN เข้าสู่ระบบ.","9aa946d6abfcb4cfc9ee258593eff00f");
INSERT INTO logs VALUES("77975e90cee898d1","2021-04-06 08:09:09","1.10.173.7","saowaruk เข้าสู่ระบบ.","5997108712eef9df6ecab22f1f3728f9");
INSERT INTO logs VALUES("c4356cd0ce606995","2021-04-06 10:17:37","1.10.173.7","saowaruk เข้าสู่ระบบ.","5997108712eef9df6ecab22f1f3728f9");
INSERT INTO logs VALUES("d8fbac6bceb5e274","2021-04-06 10:18:52","1.10.173.7","janejira เข้าสู่ระบบ.","11c0009be8f4e977c6998edce04c9b2e");
INSERT INTO logs VALUES("5bbce9b7a5d3bb9e","2021-04-06 11:26:09","1.10.173.7","finance เข้าสู่ระบบ.","ed6b1d41694cc31a1bc8a0f659d5faf7");
INSERT INTO logs VALUES("dc4b6b18ed1af98c","2021-04-06 14:39:25","1.10.173.7","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("7c5a5613a69951f1","2021-04-06 14:55:46","1.10.173.7","saowaruk เข้าสู่ระบบ.","5997108712eef9df6ecab22f1f3728f9");
INSERT INTO logs VALUES("1978aa5e019fd9f1","2021-04-06 15:33:48","1.10.173.7","HR เข้าสู่ระบบ.","d3cea0a13419c7b7d226a432af757ca4");
INSERT INTO logs VALUES("9e10c7e06989bef0","2021-04-06 17:29:28","49.228.151.204","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("fbc2ffc7f4981b89","2021-04-06 19:33:23","101.108.145.180","SCT เข้าสู่ระบบ.","bfa7daa6736959ef0ec9b2ee01c1d656");
INSERT INTO logs VALUES("79a0372e4267958b","2021-04-06 19:35:52","49.228.42.232","SCT เข้าสู่ระบบ.","bfa7daa6736959ef0ec9b2ee01c1d656");
INSERT INTO logs VALUES("e32ad79efdc60cdc","2021-04-06 19:37:11","125.24.137.18","NEB เข้าสู่ระบบ.","3db564ba6fc573bad2628be5b7de4855");
INSERT INTO logs VALUES("1ea32ddbcf3e602a","2021-04-06 19:40:22","125.24.137.18","NEB เข้าสู่ระบบ.","3db564ba6fc573bad2628be5b7de4855");
INSERT INTO logs VALUES("819fab5a8794e5e7","2021-04-06 19:44:09","49.228.151.204","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("7000345a3f2bda22","2021-04-07 09:06:15","125.24.137.83","admin เข้าสู่ระบบ.","6ccdcc01b4cbc496cab3ed0c7fb20cac");
INSERT INTO logs VALUES("143a8bac82aa932b","2021-04-07 09:06:17","125.24.137.83","admin เข้าสู่ระบบ.","6ccdcc01b4cbc496cab3ed0c7fb20cac");
INSERT INTO logs VALUES("6da6098789b95708","2021-04-07 09:06:34","1.46.140.197","admin เข้าสู่ระบบ.","6ccdcc01b4cbc496cab3ed0c7fb20cac");
INSERT INTO logs VALUES("c3850a2a419523e5","2021-04-07 09:11:15","1.46.140.197","admin เข้าสู่ระบบ.","6ccdcc01b4cbc496cab3ed0c7fb20cac");
INSERT INTO logs VALUES("ad1b3f6e44002b52","2021-04-07 09:12:18","101.108.11.77","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("7fb3c7d1b2919b71","2021-04-07 10:06:51","101.108.11.77","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("6d49a9ec48227c54","2021-04-07 10:50:46","101.108.11.77","saowaruk เข้าสู่ระบบ.","5997108712eef9df6ecab22f1f3728f9");
INSERT INTO logs VALUES("aa79a5b566e6377b","2021-04-07 10:51:16","101.108.11.77","pathumkan เข้าสู่ระบบ.","23ae8fd2022f767f5c90728825132b90");
INSERT INTO logs VALUES("ad0f7b49c0051881","2021-04-07 11:04:55","101.108.11.77","HR เข้าสู่ระบบ.","d3cea0a13419c7b7d226a432af757ca4");
INSERT INTO logs VALUES("479d768a50c16c17","2021-04-07 11:05:29","101.108.11.77","HR ออกจากระบบ.","d3cea0a13419c7b7d226a432af757ca4");
INSERT INTO logs VALUES("76161969ad06b878","2021-04-07 11:05:56","182.232.39.240","HR เข้าสู่ระบบ.","d3cea0a13419c7b7d226a432af757ca4");
INSERT INTO logs VALUES("b143a47552c9a98e","2021-04-07 11:43:23","101.108.11.77","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("32d9e41aea9d9acf","2021-04-07 12:12:36","27.55.86.196","CR9 เข้าสู่ระบบ.","6340f02bed9ccc2a8a79007a3d67a9ad");
INSERT INTO logs VALUES("417498d29a238c50","2021-04-07 16:34:42","101.108.11.77","pathumkan เข้าสู่ระบบ.","23ae8fd2022f767f5c90728825132b90");
INSERT INTO logs VALUES("03d9d362f2b57507","2021-04-07 16:39:34","184.82.97.255","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("5a2288f8226f3719","2021-04-07 16:50:36","101.108.11.77","HR เข้าสู่ระบบ.","d3cea0a13419c7b7d226a432af757ca4");
INSERT INTO logs VALUES("a06e8c17ef81ef05","2021-04-07 17:30:25","1.47.100.168","CR9 เข้าสู่ระบบ.","6340f02bed9ccc2a8a79007a3d67a9ad");
INSERT INTO logs VALUES("38ae6408d15148a4","2021-04-07 17:35:28","1.47.100.168","CR9 ออกจากระบบ.","6340f02bed9ccc2a8a79007a3d67a9ad");
INSERT INTO logs VALUES("a0a8dfcb6135edf3","2021-04-07 17:35:35","184.82.97.255","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("84afeec5e9a969ca","2021-04-07 20:06:43","124.121.109.37","MBP เข้าสู่ระบบ.","e782c0270070c7ff34dc7984a3643741");
INSERT INTO logs VALUES("64a8bcff47447055","2021-04-07 20:10:37","223.24.157.190","MBP เข้าสู่ระบบ.","e782c0270070c7ff34dc7984a3643741");
INSERT INTO logs VALUES("0075bb2f35c4733c","2021-04-07 20:10:45","223.24.157.190","MBP ออกจากระบบ.","e782c0270070c7ff34dc7984a3643741");
INSERT INTO logs VALUES("835b35bb1eeb7e14","2021-04-07 20:16:32","1.46.226.116","janejira เข้าสู่ระบบ.","11c0009be8f4e977c6998edce04c9b2e");
INSERT INTO logs VALUES("ce041f864788a8de","2021-04-07 20:40:53","49.228.151.204","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("e56e7bbe79f7008b","2021-04-07 21:05:55","49.228.151.204","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("1e308cce9aee0149","2021-04-08 08:25:09","101.108.5.205","saowaruk เข้าสู่ระบบ.","5997108712eef9df6ecab22f1f3728f9");
INSERT INTO logs VALUES("54fe42630483a099","2021-04-08 08:43:04","101.108.5.205","pathumkan เข้าสู่ระบบ.","23ae8fd2022f767f5c90728825132b90");
INSERT INTO logs VALUES("01e387a341fada35","2021-04-08 10:35:12","101.108.5.205","HR เข้าสู่ระบบ.","d3cea0a13419c7b7d226a432af757ca4");
INSERT INTO logs VALUES("93780f73ec0d3a54","2021-04-08 13:17:36","182.232.37.84","CR3 เข้าสู่ระบบ.","b29017088b3135c435f9c7912ec2cdb2");
INSERT INTO logs VALUES("b4d3b20b79b5d392","2021-04-08 13:52:24","101.108.5.205","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("ca291ba0e04feebd","2021-04-08 14:17:09","184.82.97.255","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("9a4c3562f2b278bc","2021-04-08 14:19:18","1.46.1.185","admin เข้าสู่ระบบ.","6ccdcc01b4cbc496cab3ed0c7fb20cac");
INSERT INTO logs VALUES("587172ea1f2964d9","2021-04-08 14:50:34","101.108.5.205","superadmin ออกจากระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("e03717c744f47640","2021-04-08 14:50:40","101.108.5.205","janejira เข้าสู่ระบบ.","11c0009be8f4e977c6998edce04c9b2e");
INSERT INTO logs VALUES("7336af17fa0af3ea","2021-04-08 14:53:41","101.108.5.205","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("012bcf0613b04f50","2021-04-08 14:55:49","101.108.5.205","HR เข้าสู่ระบบ.","d3cea0a13419c7b7d226a432af757ca4");
INSERT INTO logs VALUES("ff1073a510114e99","2021-04-08 14:57:32","101.108.5.205","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("805bd499798d64f3","2021-04-08 14:59:04","101.108.5.205","HR ออกจากระบบ.","d3cea0a13419c7b7d226a432af757ca4");
INSERT INTO logs VALUES("4a739b7f7c6e3bb4","2021-04-08 15:07:58","184.82.97.255","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("dfdc75a8efdea202","2021-04-08 15:34:03","101.108.5.205","saowaruk เข้าสู่ระบบ.","5997108712eef9df6ecab22f1f3728f9");
INSERT INTO logs VALUES("d167e3de0c834399","2021-04-08 15:44:37","125.24.138.51","admin เข้าสู่ระบบ.","6ccdcc01b4cbc496cab3ed0c7fb20cac");
INSERT INTO logs VALUES("b6ad034461b35c47","2021-04-08 18:48:45","101.108.5.205","janejira เข้าสู่ระบบ.","11c0009be8f4e977c6998edce04c9b2e");
INSERT INTO logs VALUES("058440c007a5cda2","2021-04-08 20:07:50","1.46.1.185","janejira เข้าสู่ระบบ.","11c0009be8f4e977c6998edce04c9b2e");
INSERT INTO logs VALUES("a1b9fc964cee2a99","2021-04-09 08:42:39","1.20.201.208","saowaruk เข้าสู่ระบบ.","5997108712eef9df6ecab22f1f3728f9");
INSERT INTO logs VALUES("ba3ca7555f81a4d7","2021-04-09 09:31:52","1.20.201.208","pathumkan เข้าสู่ระบบ.","23ae8fd2022f767f5c90728825132b90");
INSERT INTO logs VALUES("db3ccf798836a618","2021-04-09 10:25:22","1.20.201.208","saowaruk เข้าสู่ระบบ.","5997108712eef9df6ecab22f1f3728f9");
INSERT INTO logs VALUES("0251c704b68b1fef","2021-04-09 10:42:15","182.232.161.31","CPK เข้าสู่ระบบ.","cec9ac90af27b74546e22910bdc5bfff");
INSERT INTO logs VALUES("b426b9638668caba","2021-04-09 10:55:05","1.46.5.154","CR9 เข้าสู่ระบบ.","6340f02bed9ccc2a8a79007a3d67a9ad");
INSERT INTO logs VALUES("b4f223bdcf38aeb3","2021-04-09 10:59:04","1.20.201.208","janejira เข้าสู่ระบบ.","11c0009be8f4e977c6998edce04c9b2e");
INSERT INTO logs VALUES("70bfd53c6b47dc6c","2021-04-09 10:59:21","1.46.5.154","CR9 ออกจากระบบ.","6340f02bed9ccc2a8a79007a3d67a9ad");
INSERT INTO logs VALUES("531d1f426c23bd9d","2021-04-09 11:51:11","49.228.42.232","SCT เข้าสู่ระบบ.","bfa7daa6736959ef0ec9b2ee01c1d656");
INSERT INTO logs VALUES("15e7602215635a81","2021-04-09 12:23:23","113.53.13.64","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("297569843b36941f","2021-04-09 12:39:59","113.53.13.64","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("5a40597a7237386c","2021-04-09 14:03:20","113.53.13.64","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("6ea77020989cac47","2021-04-09 14:53:58","1.20.201.208","saowaruk เข้าสู่ระบบ.","5997108712eef9df6ecab22f1f3728f9");
INSERT INTO logs VALUES("f5b84ea955758856","2021-04-09 16:21:55","171.6.20.191","SV เข้าสู่ระบบ.","6134ff997b6f5c7e403dc701c7b2cec9");
INSERT INTO logs VALUES("81169635ff0831af","2021-04-09 17:13:23","1.46.15.133","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("415f295006e2cf1d","2021-04-10 10:10:30","1.20.201.208","SV เข้าสู่ระบบ.","6134ff997b6f5c7e403dc701c7b2cec9");
INSERT INTO logs VALUES("7447822051195f8e","2021-04-10 10:23:28","58.8.224.51","janejira เข้าสู่ระบบ.","11c0009be8f4e977c6998edce04c9b2e");
INSERT INTO logs VALUES("93efebfda9c34b00","2021-04-10 11:04:40","101.108.146.105","admin เข้าสู่ระบบ.","6ccdcc01b4cbc496cab3ed0c7fb20cac");
INSERT INTO logs VALUES("e585ebc82bd7382d","2021-04-10 11:08:50","1.46.205.48","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("827ca1e4a80970c0","2021-04-10 11:09:10","101.108.146.105","admin เข้าสู่ระบบ.","6ccdcc01b4cbc496cab3ed0c7fb20cac");
INSERT INTO logs VALUES("68c565f6c6a18a35","2021-04-10 11:54:47","49.228.42.232","SCT เข้าสู่ระบบ.","bfa7daa6736959ef0ec9b2ee01c1d656");
INSERT INTO logs VALUES("eea396bc5c00e787","2021-04-10 12:42:50","1.46.129.99","saowaruk เข้าสู่ระบบ.","5997108712eef9df6ecab22f1f3728f9");
INSERT INTO logs VALUES("a6a14995265862cf","2021-04-10 13:54:31","223.24.168.254","SV เข้าสู่ระบบ.","6134ff997b6f5c7e403dc701c7b2cec9");
INSERT INTO logs VALUES("5c5c45ee41ef5d88","2021-04-10 14:00:30","223.24.168.254","SV เข้าสู่ระบบ.","6134ff997b6f5c7e403dc701c7b2cec9");
INSERT INTO logs VALUES("62dd8afb7ce0eb95","2021-04-10 14:01:05","223.24.168.254","SV เข้าสู่ระบบ.","6134ff997b6f5c7e403dc701c7b2cec9");
INSERT INTO logs VALUES("858775b06ae4aa1a","2021-04-11 11:18:39","49.229.138.173","CR3 เข้าสู่ระบบ.","b29017088b3135c435f9c7912ec2cdb2");
INSERT INTO logs VALUES("adc93a63b5ef4a0c","2021-04-12 08:17:39","1.4.199.83","saowaruk เข้าสู่ระบบ.","5997108712eef9df6ecab22f1f3728f9");
INSERT INTO logs VALUES("714f41931e7ed1f3","2021-04-12 09:43:49","1.4.199.83","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("d977e57cc276f7b9","2021-04-12 10:35:33","1.4.199.83","HR เข้าสู่ระบบ.","d3cea0a13419c7b7d226a432af757ca4");
INSERT INTO logs VALUES("4c1365eb20443ac2","2021-04-12 10:38:24","1.4.199.83","saowaruk เข้าสู่ระบบ.","5997108712eef9df6ecab22f1f3728f9");
INSERT INTO logs VALUES("1f35384d3582b15f","2021-04-12 11:46:57","223.24.189.34","CR3 เข้าสู่ระบบ.","b29017088b3135c435f9c7912ec2cdb2");
INSERT INTO logs VALUES("e2ecd5bcba308237","2021-04-12 13:35:49","1.4.199.83","janejira เข้าสู่ระบบ.","11c0009be8f4e977c6998edce04c9b2e");
INSERT INTO logs VALUES("b73cd23460b03d98","2021-04-12 14:16:36","1.4.199.83","SV เข้าสู่ระบบ.","6134ff997b6f5c7e403dc701c7b2cec9");
INSERT INTO logs VALUES("54018d4d69fbe570","2021-04-12 17:59:17","171.96.239.163","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("5551fefec5b82a93","2021-04-13 07:15:37","184.82.97.255","WH เข้าสู่ระบบ.","cfef909e353c8db298c5afccf010578a");
INSERT INTO logs VALUES("f91cff6269940973","2021-04-13 08:32:42","58.8.173.179","janejira เข้าสู่ระบบ.","11c0009be8f4e977c6998edce04c9b2e");
INSERT INTO logs VALUES("ea04c39d8fc7d6ff","2021-04-13 15:41:34","1.46.129.99","saowaruk เข้าสู่ระบบ.","5997108712eef9df6ecab22f1f3728f9");
INSERT INTO logs VALUES("149282acb48d7864","2021-04-14 11:54:35","58.11.120.146","admin เข้าสู่ระบบ.","6ccdcc01b4cbc496cab3ed0c7fb20cac");
INSERT INTO logs VALUES("a73db974bd728c4e","2021-04-14 12:57:58","58.8.173.179","janejira เข้าสู่ระบบ.","11c0009be8f4e977c6998edce04c9b2e");
INSERT INTO logs VALUES("f455702d3c003bc0","2021-04-14 14:36:12","58.11.120.146","T21 เข้าสู่ระบบ.","b17177683249bb2cda3472e14d984e60");
INSERT INTO logs VALUES("93af8ef057d64b56","2021-04-14 14:36:22","58.11.120.146","T21 ออกจากระบบ.","b17177683249bb2cda3472e14d984e60");
INSERT INTO logs VALUES("498e45ced5952644","2021-04-14 14:36:37","58.11.120.146","T21 เข้าสู่ระบบ.","b17177683249bb2cda3472e14d984e60");
INSERT INTO logs VALUES("518fc8ba0d6f98c6","2021-04-14 14:36:41","58.11.120.146","T21 ออกจากระบบ.","b17177683249bb2cda3472e14d984e60");
INSERT INTO logs VALUES("2b1f384e584e87bb","2021-04-14 14:37:01","58.11.120.146","T21 เข้าสู่ระบบ.","b17177683249bb2cda3472e14d984e60");
INSERT INTO logs VALUES("cde17a34476a4815","2021-04-14 14:37:09","58.11.120.146","T21 ออกจากระบบ.","b17177683249bb2cda3472e14d984e60");
INSERT INTO logs VALUES("beae3b5b595dceca","2021-04-14 14:37:24","58.11.120.146","T21 เข้าสู่ระบบ.","b17177683249bb2cda3472e14d984e60");
INSERT INTO logs VALUES("4aec41dc0536cb59","2021-04-14 14:37:51","58.11.120.146","T21 ออกจากระบบ.","b17177683249bb2cda3472e14d984e60");
INSERT INTO logs VALUES("6c0cd7b61741da59","2021-04-14 16:40:21","171.97.201.120","CTW  เข้าสู่ระบบ.","cf4178eda791cfcbd3f20efe1a1ec35a");
INSERT INTO logs VALUES("eb59f7fb8a33a1a1","2021-04-14 22:23:15","124.120.213.30","janejira เข้าสู่ระบบ.","11c0009be8f4e977c6998edce04c9b2e");
INSERT INTO logs VALUES("eae85bfc4e393314","2021-04-15 09:39:58","171.100.183.237","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("9d6b28e631570e89","2021-04-15 15:45:36","101.108.150.41","TMK เข้าสู่ระบบ.","451453af732f6b70835c9dcec5db3b93");
INSERT INTO logs VALUES("e726fca0acf5ca9e","2021-04-15 16:28:17","184.22.192.34","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("7d1494ab79795a5e","2021-04-15 19:10:25","101.108.150.41","SV เข้าสู่ระบบ.","6134ff997b6f5c7e403dc701c7b2cec9");
INSERT INTO logs VALUES("f4bbfc222caeafef","2021-04-15 21:22:32","184.22.192.34","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("b237f2c40124066f","2021-04-16 08:28:21","101.108.3.108","saowaruk เข้าสู่ระบบ.","5997108712eef9df6ecab22f1f3728f9");
INSERT INTO logs VALUES("45987d4df2cbda83","2021-04-16 10:40:42","101.108.3.108","finance เข้าสู่ระบบ.","ed6b1d41694cc31a1bc8a0f659d5faf7");
INSERT INTO logs VALUES("dd494b5aec7a6b0a","2021-04-16 10:41:32","101.108.3.108","finance เข้าสู่ระบบ.","ed6b1d41694cc31a1bc8a0f659d5faf7");
INSERT INTO logs VALUES("5af81f5199e686fd","2021-04-16 10:45:17","101.108.3.108","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("ef70110ea441586f","2021-04-16 10:51:13","101.108.3.108","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("2573b5eb86bf433d","2021-04-16 11:10:43","101.108.147.68","SV เข้าสู่ระบบ.","6134ff997b6f5c7e403dc701c7b2cec9");
INSERT INTO logs VALUES("8bee9316ab98ef16","2021-04-16 13:14:03","184.82.101.10","WH เข้าสู่ระบบ.","cfef909e353c8db298c5afccf010578a");
INSERT INTO logs VALUES("21a63cff07e3a182","2021-04-16 13:31:34","101.108.3.108","janejira เข้าสู่ระบบ.","11c0009be8f4e977c6998edce04c9b2e");
INSERT INTO logs VALUES("337ffacd75adbda2","2021-04-16 13:31:52","101.108.3.108","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("1819e533ea5f1357","2021-04-16 13:37:07","101.108.3.108","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("2dcc0a5fb0b80173","2021-04-16 14:08:20","101.108.3.108","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("182e910dbcfdc1ef","2021-04-16 14:23:53","101.108.3.108","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("a0f6b4d37014e4ca","2021-04-16 15:06:21","1.47.99.172","T21 เข้าสู่ระบบ.","b17177683249bb2cda3472e14d984e60");
INSERT INTO logs VALUES("5c536a0f85d59a70","2021-04-17 01:00:54","119.76.34.211","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("408cecf1493a2072","2021-04-17 02:01:19","119.76.34.211","superadmin ออกจากระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("b7b5f4c24a81c35f","2021-04-17 02:31:02","119.76.34.211","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("b845671f17eeb82c","2021-04-18 13:55:25","171.96.192.228","CR3 เข้าสู่ระบบ.","b29017088b3135c435f9c7912ec2cdb2");
INSERT INTO logs VALUES("6fe6959836aada70","2021-04-18 15:43:23","171.97.202.220","CTW  เข้าสู่ระบบ.","cf4178eda791cfcbd3f20efe1a1ec35a");
INSERT INTO logs VALUES("f75f8c0701088092","2021-04-19 08:03:12","1.20.107.139","HR เข้าสู่ระบบ.","d3cea0a13419c7b7d226a432af757ca4");
INSERT INTO logs VALUES("f7b79f91433c7716","2021-04-19 08:18:43","1.20.107.139","saowaruk เข้าสู่ระบบ.","5997108712eef9df6ecab22f1f3728f9");
INSERT INTO logs VALUES("6e37334e9d122756","2021-04-19 08:24:56","124.122.93.141","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("75419dcf7a8ffaab","2021-04-19 08:35:57","1.20.107.139","finance เข้าสู่ระบบ.","ed6b1d41694cc31a1bc8a0f659d5faf7");
INSERT INTO logs VALUES("67b60dbd8798837a","2021-04-19 08:46:06","58.11.80.148","purchase เข้าสู่ระบบ.","d5b14c346b88725387c282ac7b851ad8");
INSERT INTO logs VALUES("4f71ee1cf7ae42ca","2021-04-19 08:52:53","1.20.107.139","finance เข้าสู่ระบบ.","ed6b1d41694cc31a1bc8a0f659d5faf7");
INSERT INTO logs VALUES("368a1d8fcfd90256","2021-04-19 10:13:02","124.122.93.141","janejira เข้าสู่ระบบ.","11c0009be8f4e977c6998edce04c9b2e");
INSERT INTO logs VALUES("bd878007a3886bde","2021-04-19 10:40:53","1.20.107.139","marketing เข้าสู่ระบบ.","0049430d869cc1e24dfb88398666d959");
INSERT INTO logs VALUES("bd878007a3886bde","2021-04-19 10:40:53","1.20.107.139","marketing เข้าสู่ระบบ.","980b7ed37ca11aa01f35284afcad5dbb");
INSERT INTO logs VALUES("2374d4686a2fea7d","2021-04-19 10:55:16","1.20.107.139","saowaruk เข้าสู่ระบบ.","5997108712eef9df6ecab22f1f3728f9");
INSERT INTO logs VALUES("c0e1c41487c25d84","2021-04-19 11:05:43","1.20.107.139","marketing ออกจากระบบ.","980b7ed37ca11aa01f35284afcad5dbb");
INSERT INTO logs VALUES("9e574ea77b2e0894","2021-04-19 12:16:47","1.20.107.139","saowaruk เข้าสู่ระบบ.","5997108712eef9df6ecab22f1f3728f9");
INSERT INTO logs VALUES("8fda9e61b635fdb4","2021-04-19 13:31:26","1.20.107.139","operation เข้าสู่ระบบ.","a60af60cc188e40bca694274e06eaf08");
INSERT INTO logs VALUES("f72d3274c9db39d6","2021-04-19 13:46:26","1.46.74.43","saowaruk เข้าสู่ระบบ.","5997108712eef9df6ecab22f1f3728f9");
INSERT INTO logs VALUES("6ac57569bb2f1539","2021-04-19 14:55:55","1.20.107.139","saowaruk เข้าสู่ระบบ.","5997108712eef9df6ecab22f1f3728f9");
INSERT INTO logs VALUES("8396b8f50617add4","2021-04-19 15:32:57","1.20.107.139","HR เข้าสู่ระบบ.","d3cea0a13419c7b7d226a432af757ca4");
INSERT INTO logs VALUES("4495b6cafde45294","2021-04-19 16:12:09","1.20.107.139","saowaruk ออกจากระบบ.","5997108712eef9df6ecab22f1f3728f9");
INSERT INTO logs VALUES("dae7017b7b092c07","2021-04-19 16:12:16","1.20.107.139","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("ccf6d7c57e58b549","2021-04-20 08:12:13","1.20.107.139","saowaruk เข้าสู่ระบบ.","5997108712eef9df6ecab22f1f3728f9");
INSERT INTO logs VALUES("9b6641b17194c203","2021-04-20 08:22:03","101.109.201.50","finance เข้าสู่ระบบ.","ed6b1d41694cc31a1bc8a0f659d5faf7");
INSERT INTO logs VALUES("36f5f6c4f4b40414","2021-04-20 10:46:20","1.20.107.139","saowaruk เข้าสู่ระบบ.","5997108712eef9df6ecab22f1f3728f9");
INSERT INTO logs VALUES("41090fb1ededcc14","2021-04-20 11:35:27","1.20.107.139","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("7beab4efa03a4f5a","2021-04-20 13:45:40","1.47.194.244","CWG เข้าสู่ระบบ.","52f2a5ca589fe4b36097dd5c55c4ac9c");
INSERT INTO logs VALUES("11647cd9d9702dc7","2021-04-20 15:29:38","58.8.173.62","janejira เข้าสู่ระบบ.","11c0009be8f4e977c6998edce04c9b2e");
INSERT INTO logs VALUES("cdc37873e5daf66c","2021-04-20 16:25:08","1.20.107.139","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("64ef178da4f8db39","2021-04-21 07:11:25","1.47.161.207","saowaruk เข้าสู่ระบบ.","5997108712eef9df6ecab22f1f3728f9");
INSERT INTO logs VALUES("2de32a2b9384fc2f","2021-04-21 08:35:23","101.51.148.181","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("24b8e2ec99514692","2021-04-21 09:09:49","101.51.148.181","saowaruk เข้าสู่ระบบ.","5997108712eef9df6ecab22f1f3728f9");
INSERT INTO logs VALUES("3eacbeb908abd977","2021-04-21 09:10:35","171.96.219.117","janejira เข้าสู่ระบบ.","11c0009be8f4e977c6998edce04c9b2e");
INSERT INTO logs VALUES("42b816f94ef831b3","2021-04-21 11:12:53","101.51.148.181","HR เข้าสู่ระบบ.","d3cea0a13419c7b7d226a432af757ca4");
INSERT INTO logs VALUES("afc743a2560936ed","2021-04-21 11:15:51","101.51.148.181","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("b055d2669884c922","2021-04-21 11:22:36","124.121.113.136","MBP เข้าสู่ระบบ.","e782c0270070c7ff34dc7984a3643741");
INSERT INTO logs VALUES("aeb2f6563d305cc2","2021-04-21 16:44:59","101.51.148.181","saowaruk เข้าสู่ระบบ.","5997108712eef9df6ecab22f1f3728f9");
INSERT INTO logs VALUES("86aae7f950652937","2021-04-21 17:55:13","49.230.203.57","CR9 เข้าสู่ระบบ.","6340f02bed9ccc2a8a79007a3d67a9ad");
INSERT INTO logs VALUES("9c37211b5027a881","2021-04-21 17:59:01","125.24.54.157","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("0c1f8052cef4912b","2021-04-21 18:13:17","58.8.153.231","account เข้าสู่ระบบ.","3ae8086fb05d3435d3dcd9cd1565a454");
INSERT INTO logs VALUES("f8d26757f247b4d5","2021-04-21 18:38:05","125.24.54.157","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("79a8a1ffac75b6b0","2021-04-22 08:08:42","1.20.107.139","saowaruk เข้าสู่ระบบ.","5997108712eef9df6ecab22f1f3728f9");
INSERT INTO logs VALUES("dd90518027da87b0","2021-04-22 08:45:31","110.168.53.51","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("bb6ece6a02694d87","2021-04-22 09:24:50","58.8.153.231","account เข้าสู่ระบบ.","3ae8086fb05d3435d3dcd9cd1565a454");
INSERT INTO logs VALUES("4fc2e97e22e2e78b","2021-04-22 09:27:16","110.168.53.51","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("fc47f6f181e5669a","2021-04-22 09:29:22","49.49.240.134","finance เข้าสู่ระบบ.","ed6b1d41694cc31a1bc8a0f659d5faf7");
INSERT INTO logs VALUES("5389f7ae745d3f1e","2021-04-22 11:35:09","110.168.53.51","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("be4b33b9577fa21e","2021-04-22 12:23:18","119.76.49.151","CWG เข้าสู่ระบบ.","52f2a5ca589fe4b36097dd5c55c4ac9c");
INSERT INTO logs VALUES("437a3c9cb4ef123b","2021-04-22 12:30:21","110.168.53.51","janejira เข้าสู่ระบบ.","11c0009be8f4e977c6998edce04c9b2e");
INSERT INTO logs VALUES("69989c119f8f8c80","2021-04-22 12:33:33","119.76.49.151","CWG เข้าสู่ระบบ.","52f2a5ca589fe4b36097dd5c55c4ac9c");
INSERT INTO logs VALUES("6685b6c1681d863c","2021-04-22 13:28:34","49.237.19.93","SCP เข้าสู่ระบบ.","7611717e7dfb53c91a776dcd505f9802");
INSERT INTO logs VALUES("e269b491d30519bc","2021-04-22 13:30:44","49.237.19.93","SCP เข้าสู่ระบบ.","7611717e7dfb53c91a776dcd505f9802");
INSERT INTO logs VALUES("e1c9b11d63c55d2a","2021-04-22 13:36:09","110.168.53.51","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("b90a53a2912b4c4e","2021-04-22 13:36:42","49.237.19.93","SCP เข้าสู่ระบบ.","7611717e7dfb53c91a776dcd505f9802");
INSERT INTO logs VALUES("363aebcd5f0f2ee6","2021-04-22 14:46:09","182.232.75.104","finance เข้าสู่ระบบ.","ed6b1d41694cc31a1bc8a0f659d5faf7");
INSERT INTO logs VALUES("4dc2d58f9e95ccc5","2021-04-22 14:50:03","49.49.240.134","finance เข้าสู่ระบบ.","ed6b1d41694cc31a1bc8a0f659d5faf7");
INSERT INTO logs VALUES("4f718756f94b7279","2021-04-22 16:14:04","1.20.107.139","saowaruk เข้าสู่ระบบ.","5997108712eef9df6ecab22f1f3728f9");
INSERT INTO logs VALUES("e08d9eb3c5a28bfe","2021-04-22 17:49:09","125.24.139.127","NEB เข้าสู่ระบบ.","3db564ba6fc573bad2628be5b7de4855");
INSERT INTO logs VALUES("a58b0f5082fa2b4b","2021-04-22 18:14:51","125.24.139.127","NEB เข้าสู่ระบบ.","3db564ba6fc573bad2628be5b7de4855");
INSERT INTO logs VALUES("316a0f24f0367fdd","2021-04-22 18:21:49","110.168.53.51","janejira เข้าสู่ระบบ.","11c0009be8f4e977c6998edce04c9b2e");
INSERT INTO logs VALUES("6c2d314ae80b5cb9","2021-04-22 20:02:08","110.168.53.51","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("124d84fc51621693","2021-04-23 08:07:27","1.10.250.5","saowaruk เข้าสู่ระบบ.","5997108712eef9df6ecab22f1f3728f9");
INSERT INTO logs VALUES("3edf8a8fac6a7de4","2021-04-23 08:59:51","1.10.250.5","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("0d24bef6d4aa8d66","2021-04-23 15:53:24","1.47.100.108","T21 เข้าสู่ระบบ.","b17177683249bb2cda3472e14d984e60");
INSERT INTO logs VALUES("41c608fdb1fd2c87","2021-04-23 16:07:55","118.172.140.47","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("7670e5762195be75","2021-04-23 16:26:50","118.172.140.47","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("fb24b9657b0f11da","2021-04-23 16:59:30","1.10.250.5","saowaruk เข้าสู่ระบบ.","5997108712eef9df6ecab22f1f3728f9");
INSERT INTO logs VALUES("68f651c99812947a","2021-04-24 15:55:26","1.47.100.108","T21 เข้าสู่ระบบ.","b17177683249bb2cda3472e14d984e60");
INSERT INTO logs VALUES("40372edd7ae18083","2021-04-24 16:26:41","49.228.169.206","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("7a5c0daef386bcca","2021-04-24 17:59:04","49.228.169.206","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("f15ea83f613aba59","2021-04-25 12:37:56","124.121.115.130","MBP เข้าสู่ระบบ.","e782c0270070c7ff34dc7984a3643741");
INSERT INTO logs VALUES("1cb447e18b3ac14d","2021-04-25 13:03:37","110.168.53.8","janejira เข้าสู่ระบบ.","11c0009be8f4e977c6998edce04c9b2e");
INSERT INTO logs VALUES("1b0d0cde25e28cd1","2021-04-25 13:24:40","49.228.169.206","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("6a2066d82845077e","2021-04-25 22:10:21","115.87.236.58","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("865fda054f016666","2021-04-26 08:44:52","115.87.236.58","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("e9b5a38d8667d81d","2021-04-26 08:47:12","58.11.80.16","desing เข้าสู่ระบบ.","2d7a80fc55f6ff49c227852ac35fc3f5");
INSERT INTO logs VALUES("d905f0275b3f19e8","2021-04-26 08:49:31","58.11.80.16","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("afa13862dc4e11e0","2021-04-26 08:52:59","101.108.67.45","saowaruk เข้าสู่ระบบ.","5997108712eef9df6ecab22f1f3728f9");
INSERT INTO logs VALUES("6c3e0f6417f61dad","2021-04-26 09:58:26","101.108.67.45","SV เข้าสู่ระบบ.","6134ff997b6f5c7e403dc701c7b2cec9");
INSERT INTO logs VALUES("c96985a968a98f53","2021-04-26 10:04:14","101.108.67.45","SV เข้าสู่ระบบ.","6134ff997b6f5c7e403dc701c7b2cec9");
INSERT INTO logs VALUES("e30c117212901252","2021-04-26 10:05:35","101.108.67.45","SV เข้าสู่ระบบ.","6134ff997b6f5c7e403dc701c7b2cec9");
INSERT INTO logs VALUES("f0692360d397c6d6","2021-04-26 10:08:07","101.108.67.45","SV เข้าสู่ระบบ.","6134ff997b6f5c7e403dc701c7b2cec9");
INSERT INTO logs VALUES("4762c68c3a01ec53","2021-04-26 10:43:07","101.108.67.45","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("6d5169c91c0de932","2021-04-26 14:11:01","101.108.67.45","saowaruk เข้าสู่ระบบ.","5997108712eef9df6ecab22f1f3728f9");
INSERT INTO logs VALUES("627b04a77d554276","2021-04-26 14:12:01","58.11.80.154","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("f8d9d01a86654d40","2021-04-26 14:34:15","101.108.67.45","finance เข้าสู่ระบบ.","ed6b1d41694cc31a1bc8a0f659d5faf7");
INSERT INTO logs VALUES("3dded74c4f11bf80","2021-04-26 14:36:40","101.108.67.45","finance เข้าสู่ระบบ.","ed6b1d41694cc31a1bc8a0f659d5faf7");
INSERT INTO logs VALUES("5fd5236416df88a7","2021-04-27 08:11:28","101.51.126.213","saowaruk เข้าสู่ระบบ.","5997108712eef9df6ecab22f1f3728f9");
INSERT INTO logs VALUES("8af0e7b0adf31215","2021-04-27 15:04:03","124.121.115.151","MBP เข้าสู่ระบบ.","e782c0270070c7ff34dc7984a3643741");
INSERT INTO logs VALUES("dc28d6ac6a0c1bfe","2021-04-27 15:05:45","101.51.126.213","saowaruk เข้าสู่ระบบ.","5997108712eef9df6ecab22f1f3728f9");
INSERT INTO logs VALUES("a25951c04cb9aaa7","2021-04-27 16:55:22","101.109.174.155","SCQ เข้าสู่ระบบ.","9fe4987d685fcbff9b1a3011cdd12b35");
INSERT INTO logs VALUES("63c0d0bb961e4848","2021-04-28 08:41:51","101.51.126.213","saowaruk เข้าสู่ระบบ.","5997108712eef9df6ecab22f1f3728f9");
INSERT INTO logs VALUES("bbe7e97dc9510694","2021-04-28 09:47:11","124.122.132.65","HR เข้าสู่ระบบ.","d3cea0a13419c7b7d226a432af757ca4");
INSERT INTO logs VALUES("35fd2c3f70739647","2021-04-28 10:13:06","101.51.126.213","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("62ac0db310808dc8","2021-04-28 12:02:52","101.51.126.213","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("5a8c8eb16a3e60be","2021-04-28 14:42:51","115.87.212.156","CPK เข้าสู่ระบบ.","cec9ac90af27b74546e22910bdc5bfff");
INSERT INTO logs VALUES("781779771e5b7ba5","2021-04-28 14:51:04","101.51.126.213","saowaruk เข้าสู่ระบบ.","5997108712eef9df6ecab22f1f3728f9");
INSERT INTO logs VALUES("a8a3ca36eab83bbd","2021-04-28 17:19:36","58.8.225.10","marketing เข้าสู่ระบบ.","0049430d869cc1e24dfb88398666d959");
INSERT INTO logs VALUES("a8a3ca36eab83bbd","2021-04-28 17:19:36","58.8.225.10","marketing เข้าสู่ระบบ.","980b7ed37ca11aa01f35284afcad5dbb");
INSERT INTO logs VALUES("6779f63fce79fe5a","2021-04-28 17:21:46","223.24.170.44","marketing เข้าสู่ระบบ.","0049430d869cc1e24dfb88398666d959");
INSERT INTO logs VALUES("6779f63fce79fe5a","2021-04-28 17:21:46","223.24.170.44","marketing เข้าสู่ระบบ.","980b7ed37ca11aa01f35284afcad5dbb");
INSERT INTO logs VALUES("f7e0a402fbce748d","2021-04-28 17:27:54","58.8.225.10","janejira เข้าสู่ระบบ.","11c0009be8f4e977c6998edce04c9b2e");
INSERT INTO logs VALUES("e4179ecf02a43829","2021-04-29 08:13:48","101.108.6.8","saowaruk เข้าสู่ระบบ.","5997108712eef9df6ecab22f1f3728f9");
INSERT INTO logs VALUES("0d1b66f9539bcd83","2021-04-29 11:10:16","1.47.162.107","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("9d5a82aebd47e414","2021-04-29 11:10:48","1.47.162.107","pattapee ออกจากระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("4c85b3f7adc46fd2","2021-04-29 13:08:15","223.24.190.153","SCP เข้าสู่ระบบ.","7611717e7dfb53c91a776dcd505f9802");
INSERT INTO logs VALUES("8d69d6335a9f6ddf","2021-04-29 13:15:54","101.108.6.8","saowaruk เข้าสู่ระบบ.","5997108712eef9df6ecab22f1f3728f9");
INSERT INTO logs VALUES("626d642e9fd87fad","2021-04-29 13:20:59","1.47.103.57","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("1e2989e8f888ae59","2021-04-29 13:46:46","124.122.93.217","janejira เข้าสู่ระบบ.","11c0009be8f4e977c6998edce04c9b2e");
INSERT INTO logs VALUES("8df59e3290cf1d5c","2021-04-29 14:07:10","115.87.223.253","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("01e5b1fbf77b59e6","2021-04-29 14:21:47","115.87.223.253","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("d91cab2057f1e1c1","2021-04-29 15:19:05","124.122.93.217","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("99a14be61afcf566","2021-04-29 15:27:37","115.87.223.253","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("55643827caea6df0","2021-04-29 15:54:18","159.192.246.88","MGB เข้าสู่ระบบ.","859cd041e3fe84e5e65b5c178452841f");
INSERT INTO logs VALUES("0f7f7900704a85ac","2021-04-29 16:02:30","159.192.246.88","MGB เข้าสู่ระบบ.","859cd041e3fe84e5e65b5c178452841f");
INSERT INTO logs VALUES("de79088cee19500c","2021-04-30 09:39:02","1.20.107.246","saowaruk เข้าสู่ระบบ.","5997108712eef9df6ecab22f1f3728f9");
INSERT INTO logs VALUES("7e2f58bbaa1094d7","2021-04-30 10:55:04","124.120.205.254","HR เข้าสู่ระบบ.","d3cea0a13419c7b7d226a432af757ca4");
INSERT INTO logs VALUES("2a3cc8daefe0c478","2021-04-30 14:36:40","101.109.234.87","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("b528710428962d46","2021-04-30 15:04:32","1.20.107.246","saowaruk เข้าสู่ระบบ.","5997108712eef9df6ecab22f1f3728f9");
INSERT INTO logs VALUES("2087dee77786fbc9","2021-04-30 15:16:23","1.46.73.101","T21 เข้าสู่ระบบ.","b17177683249bb2cda3472e14d984e60");
INSERT INTO logs VALUES("068b940ba335a2f1","2021-04-30 15:35:46","101.109.234.87","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("eede70a9dfa63e9f","2021-04-30 15:40:01","101.109.234.87","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("980945c5a4316fa0","2021-04-30 15:59:47","1.20.107.246","saowaruk เข้าสู่ระบบ.","5997108712eef9df6ecab22f1f3728f9");
INSERT INTO logs VALUES("a4b3927454917045","2021-04-30 16:25:19","101.109.234.87","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("09d69564d6cbd7c7","2021-04-30 16:26:49","101.109.234.87","pattapee ออกจากระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("285538fa9f427271","2021-04-30 16:27:00","101.109.234.87","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("81a1c4ad466f7f59","2021-04-30 20:29:10","124.120.7.71","saowaruk เข้าสู่ระบบ.","5997108712eef9df6ecab22f1f3728f9");
INSERT INTO logs VALUES("db85d07af55d88c5","2021-05-02 10:30:45","171.99.147.202","CTW  เข้าสู่ระบบ.","cf4178eda791cfcbd3f20efe1a1ec35a");
INSERT INTO logs VALUES("e6082c14e4867f96","2021-05-02 10:45:07","1.47.108.137","CCW เข้าสู่ระบบ.","06ac11af0ac13b221a953bfb54ecaa92");
INSERT INTO logs VALUES("7c68d58ea789b275","2021-05-02 11:22:21","49.228.192.31","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("e36344bf042c928a","2021-05-02 12:44:48","49.228.192.31","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("3538bee23d5a6c50","2021-05-04 08:12:48","124.120.9.108","saowaruk เข้าสู่ระบบ.","5997108712eef9df6ecab22f1f3728f9");
INSERT INTO logs VALUES("1f23747d2c84fc7a","2021-05-04 12:48:33","124.120.204.90","account เข้าสู่ระบบ.","3ae8086fb05d3435d3dcd9cd1565a454");
INSERT INTO logs VALUES("2e240a0ae6dceef2","2021-05-04 12:52:08","184.82.109.136","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("3ed36132cbf96dd0","2021-05-04 14:12:04","182.232.56.15","purchase เข้าสู่ระบบ.","d5b14c346b88725387c282ac7b851ad8");
INSERT INTO logs VALUES("b6f0c74ce96e8d0a","2021-05-04 14:21:21","184.82.109.136","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("c5015b5067eef737","2021-05-04 16:05:21","184.82.109.136","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("65c39153963ba122","2021-05-04 17:16:20","49.228.100.109","purchase เข้าสู่ระบบ.","d5b14c346b88725387c282ac7b851ad8");
INSERT INTO logs VALUES("fb19720a48fb22d9","2021-05-04 17:20:09","49.228.100.109","purchase เข้าสู่ระบบ.","d5b14c346b88725387c282ac7b851ad8");
INSERT INTO logs VALUES("2d9db2cc1ffa28eb","2021-05-05 09:20:59","171.100.25.190","saowaruk เข้าสู่ระบบ.","5997108712eef9df6ecab22f1f3728f9");
INSERT INTO logs VALUES("c133cd8e80804f80","2021-05-05 10:23:17","1.4.206.127","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("57d0815fab561191","2021-05-05 10:55:33","182.232.56.219","purchase เข้าสู่ระบบ.","d5b14c346b88725387c282ac7b851ad8");
INSERT INTO logs VALUES("60e5a65beb3ce1f7","2021-05-05 13:55:31","124.121.115.156","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("a83befa54718aeaa","2021-05-05 15:05:35","49.230.132.71","purchase เข้าสู่ระบบ.","d5b14c346b88725387c282ac7b851ad8");
INSERT INTO logs VALUES("cbd3051d2d1f0064","2021-05-05 16:41:37","1.4.206.127","HR เข้าสู่ระบบ.","d3cea0a13419c7b7d226a432af757ca4");
INSERT INTO logs VALUES("894fd4689beedff1","2021-05-05 17:01:32","49.228.192.31","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("0dd561315e839da1","2021-05-05 22:34:47","49.228.192.31","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("8cf195039118f0bb","2021-05-06 08:12:12","124.120.2.112","saowaruk เข้าสู่ระบบ.","5997108712eef9df6ecab22f1f3728f9");
INSERT INTO logs VALUES("4447cc0e9c0f3bf7","2021-05-06 08:21:28","1.4.206.127","HR เข้าสู่ระบบ.","d3cea0a13419c7b7d226a432af757ca4");
INSERT INTO logs VALUES("2ec824c879e0d8d6","2021-05-06 08:22:29","1.4.206.127","HR ออกจากระบบ.","d3cea0a13419c7b7d226a432af757ca4");
INSERT INTO logs VALUES("226e7ddf21f9b05c","2021-05-06 09:42:00","1.4.206.127","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("fec69f1a4c7806e0","2021-05-06 10:14:16","124.120.2.112","saowaruk เข้าสู่ระบบ.","5997108712eef9df6ecab22f1f3728f9");
INSERT INTO logs VALUES("ce8a5bb750445746","2021-05-06 10:58:46","1.46.44.24","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("31e7ca6a97bc92f3","2021-05-06 11:00:50","1.4.206.127","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("763b4ea15340735b","2021-05-06 12:01:02","58.10.221.100","CCW เข้าสู่ระบบ.","06ac11af0ac13b221a953bfb54ecaa92");
INSERT INTO logs VALUES("17f049f61eea489c","2021-05-06 12:40:37","124.120.2.112","saowaruk เข้าสู่ระบบ.","5997108712eef9df6ecab22f1f3728f9");
INSERT INTO logs VALUES("4ff42b0571bbc66e","2021-05-06 13:30:42","1.4.206.127","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("f089f20c7cdd8b13","2021-05-06 14:49:00","49.230.132.129","purchase เข้าสู่ระบบ.","d5b14c346b88725387c282ac7b851ad8");
INSERT INTO logs VALUES("715248242958f99d","2021-05-06 15:25:13","1.4.206.127","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("d0742ecc927e50ce","2021-05-06 17:48:27","1.4.206.127","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("b945ce9b0d69d228","2021-05-07 08:03:13","124.122.122.165","saowaruk เข้าสู่ระบบ.","5997108712eef9df6ecab22f1f3728f9");
INSERT INTO logs VALUES("904c417ded5fdade","2021-05-07 08:26:23","124.122.132.65","HR เข้าสู่ระบบ.","d3cea0a13419c7b7d226a432af757ca4");
INSERT INTO logs VALUES("701e8c44102a66c6","2021-05-07 08:34:18","124.122.122.165","saowaruk เข้าสู่ระบบ.","5997108712eef9df6ecab22f1f3728f9");
INSERT INTO logs VALUES("9eb42f63997a52b0","2021-05-07 09:20:42","124.122.122.165","saowaruk เข้าสู่ระบบ.","5997108712eef9df6ecab22f1f3728f9");
INSERT INTO logs VALUES("da3314be93d6d33d","2021-05-07 09:46:32","1.10.173.105","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("692bb7d48ec69a09","2021-05-07 13:32:47","124.122.122.165","saowaruk เข้าสู่ระบบ.","5997108712eef9df6ecab22f1f3728f9");
INSERT INTO logs VALUES("907b597da95d902b","2021-05-07 17:49:29","1.10.173.105","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("6124fd0035d755bb","2021-05-07 18:00:43","115.87.99.31","CLP เข้าสู่ระบบ.","fc9c93f00e53b47b7bf01b72cd6180bd");
INSERT INTO logs VALUES("5b05ff49efa14a69","2021-05-07 19:19:43","49.228.161.175","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("7356a3ccb0780e29","2021-05-10 09:46:00","171.99.156.119","saowaruk เข้าสู่ระบบ.","5997108712eef9df6ecab22f1f3728f9");
INSERT INTO logs VALUES("7da30a6c25d5878d","2021-05-10 13:50:29","182.232.57.210","NGS เข้าสู่ระบบ.","6809f49f86586a97cb888adc3119668b");
INSERT INTO logs VALUES("e074732d1cd506fb","2021-05-10 14:11:13","171.99.156.119","saowaruk เข้าสู่ระบบ.","5997108712eef9df6ecab22f1f3728f9");
INSERT INTO logs VALUES("4050b28147739064","2021-05-10 15:00:46","125.24.137.5","NEB เข้าสู่ระบบ.","3db564ba6fc573bad2628be5b7de4855");
INSERT INTO logs VALUES("149de5b97ca52042","2021-05-10 15:06:00","182.232.63.232","CLP เข้าสู่ระบบ.","fc9c93f00e53b47b7bf01b72cd6180bd");
INSERT INTO logs VALUES("b78dcc23e368bc1b","2021-05-10 15:54:47","1.46.7.178","saowaruk เข้าสู่ระบบ.","5997108712eef9df6ecab22f1f3728f9");
INSERT INTO logs VALUES("afd11a1814d07f97","2021-05-10 16:25:12","1.47.141.157","CCW เข้าสู่ระบบ.","06ac11af0ac13b221a953bfb54ecaa92");
INSERT INTO logs VALUES("ed05703162e21b0c","2021-05-10 16:28:43","202.176.126.123","pathumkan เข้าสู่ระบบ.","23ae8fd2022f767f5c90728825132b90");
INSERT INTO logs VALUES("49ec1df1b4566b7d","2021-05-10 18:21:23","171.99.160.66","HR เข้าสู่ระบบ.","d3cea0a13419c7b7d226a432af757ca4");
INSERT INTO logs VALUES("af334c320c4e3ea7","2021-05-10 18:23:45","171.99.156.119","saowaruk เข้าสู่ระบบ.","5997108712eef9df6ecab22f1f3728f9");
INSERT INTO logs VALUES("8f581599df7b8efc","2021-05-10 18:24:25","125.24.52.193","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("a0085784420eb50d","2021-05-11 08:03:12","171.100.25.129","saowaruk เข้าสู่ระบบ.","5997108712eef9df6ecab22f1f3728f9");
INSERT INTO logs VALUES("78b6e433a8105cba","2021-05-11 11:40:21","27.55.67.186","SCP เข้าสู่ระบบ.","7611717e7dfb53c91a776dcd505f9802");
INSERT INTO logs VALUES("45f979219cc4a741","2021-05-11 11:44:27","27.55.67.186","SCP เข้าสู่ระบบ.","7611717e7dfb53c91a776dcd505f9802");
INSERT INTO logs VALUES("e3594c9adfe4eb06","2021-05-11 11:57:21","101.108.6.93","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("d787f5d5a09c93ce","2021-05-11 12:10:27","101.108.6.93","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("5d26d5b76ec63c0d","2021-05-11 13:32:22","182.232.195.83","CR9 เข้าสู่ระบบ.","6340f02bed9ccc2a8a79007a3d67a9ad");
INSERT INTO logs VALUES("5cc088f56d6c6e19","2021-05-11 13:38:14","182.232.195.83","CR9 เข้าสู่ระบบ.","6340f02bed9ccc2a8a79007a3d67a9ad");
INSERT INTO logs VALUES("7a36797167a707ab","2021-05-11 13:41:41","101.108.6.93","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("6e906e75e5a17c31","2021-05-11 14:15:09","101.108.6.93","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("74f2da9616cb6bc6","2021-05-11 14:15:49","171.99.155.193","finance เข้าสู่ระบบ.","ed6b1d41694cc31a1bc8a0f659d5faf7");
INSERT INTO logs VALUES("b35cbaaee57a1ee1","2021-05-11 15:44:23","101.108.6.93","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("d880aa63a3a3fd86","2021-05-11 16:35:40","49.230.138.69","purchase เข้าสู่ระบบ.","d5b14c346b88725387c282ac7b851ad8");
INSERT INTO logs VALUES("929a66ec0203bab2","2021-05-12 10:24:29","27.55.93.247","SV เข้าสู่ระบบ.","6134ff997b6f5c7e403dc701c7b2cec9");
INSERT INTO logs VALUES("c3c684eaf0287db0","2021-05-12 10:31:03","182.232.29.245","SV เข้าสู่ระบบ.","6134ff997b6f5c7e403dc701c7b2cec9");
INSERT INTO logs VALUES("943a97c682761479","2021-05-12 10:36:58","124.122.126.18","saowaruk เข้าสู่ระบบ.","5997108712eef9df6ecab22f1f3728f9");
INSERT INTO logs VALUES("7c997252a4ce5a62","2021-05-12 11:36:50","171.99.152.1","finance เข้าสู่ระบบ.","ed6b1d41694cc31a1bc8a0f659d5faf7");
INSERT INTO logs VALUES("75f5b9765ff0d128","2021-05-12 12:00:57","125.24.139.243","NEB เข้าสู่ระบบ.","3db564ba6fc573bad2628be5b7de4855");
INSERT INTO logs VALUES("2cb526523523b68f","2021-05-12 12:10:50","202.176.126.79","pathumkan เข้าสู่ระบบ.","23ae8fd2022f767f5c90728825132b90");
INSERT INTO logs VALUES("f19f7ce83a3adf12","2021-05-12 12:11:04","202.176.126.79","pathumkan เข้าสู่ระบบ.","23ae8fd2022f767f5c90728825132b90");
INSERT INTO logs VALUES("b2155f28db598f02","2021-05-12 13:24:10","124.122.126.18","saowaruk เข้าสู่ระบบ.","5997108712eef9df6ecab22f1f3728f9");
INSERT INTO logs VALUES("3d3779831f909699","2021-05-12 13:54:56","1.0.215.158","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("4632f790786e7457","2021-05-12 14:33:54","1.0.215.158","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("ab843b6d5a434fd3","2021-05-12 15:24:47","124.122.126.18","saowaruk เข้าสู่ระบบ.","5997108712eef9df6ecab22f1f3728f9");
INSERT INTO logs VALUES("93e5ce075c072907","2021-05-12 15:28:45","61.90.3.56","CTW  เข้าสู่ระบบ.","cf4178eda791cfcbd3f20efe1a1ec35a");
INSERT INTO logs VALUES("e14baf569ec6f983","2021-05-12 18:05:31","1.0.215.158","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("e8ec1f1a21b1f0e5","2021-05-13 08:32:08","124.122.92.96","saowaruk เข้าสู่ระบบ.","5997108712eef9df6ecab22f1f3728f9");
INSERT INTO logs VALUES("5258103f14df2c9a","2021-05-13 12:03:53","171.96.205.22","CRP เข้าสู่ระบบ.","9cc29e8c2b924de0fd3ef55737a159c0");
INSERT INTO logs VALUES("58b6f545ba172a71","2021-05-13 12:04:33","171.96.205.22","CRP เข้าสู่ระบบ.","9cc29e8c2b924de0fd3ef55737a159c0");
INSERT INTO logs VALUES("78b3caa97145bd34","2021-05-13 12:39:24","1.0.215.158","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("e85bf7d3ba651d55","2021-05-13 13:38:19","124.122.92.96","saowaruk เข้าสู่ระบบ.","5997108712eef9df6ecab22f1f3728f9");
INSERT INTO logs VALUES("cac15da8d8fc437a","2021-05-13 17:59:14","1.0.215.158","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("d168303485ef68f3","2021-05-14 12:46:17","101.108.14.107","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("f09913348c234230","2021-05-14 15:15:47","49.230.16.17","TMK เข้าสู่ระบบ.","451453af732f6b70835c9dcec5db3b93");
INSERT INTO logs VALUES("2faccca7877eb363","2021-05-14 15:20:31","49.230.16.17","TMK เข้าสู่ระบบ.","451453af732f6b70835c9dcec5db3b93");
INSERT INTO logs VALUES("0206f3efdda7c3bd","2021-05-14 15:34:07","49.230.16.17","TMK เข้าสู่ระบบ.","451453af732f6b70835c9dcec5db3b93");
INSERT INTO logs VALUES("54c9bdb2bcd1d1c3","2021-05-14 15:34:43","223.24.161.70","NGS เข้าสู่ระบบ.","6809f49f86586a97cb888adc3119668b");
INSERT INTO logs VALUES("94d612647bde4214","2021-05-14 15:37:50","223.24.161.70","NGS เข้าสู่ระบบ.","6809f49f86586a97cb888adc3119668b");
INSERT INTO logs VALUES("85d1a46b1f6863ae","2021-05-14 15:42:45","101.108.145.224","TMK เข้าสู่ระบบ.","451453af732f6b70835c9dcec5db3b93");
INSERT INTO logs VALUES("172b4e8a0517e44f","2021-05-14 15:44:32","101.108.14.107","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("06caa0c4b4a853a5","2021-05-14 15:44:46","223.24.161.70","NGS เข้าสู่ระบบ.","6809f49f86586a97cb888adc3119668b");
INSERT INTO logs VALUES("163f2b33c81bf4ae","2021-05-14 15:45:41","101.108.14.107","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("acd08182945d200e","2021-05-14 15:58:05","101.108.14.107","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("8742f228be7a5a90","2021-05-14 16:07:27","101.108.14.107","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("829ca2ffb68edf41","2021-05-14 17:18:30","125.24.139.163","NEB เข้าสู่ระบบ.","3db564ba6fc573bad2628be5b7de4855");
INSERT INTO logs VALUES("6190ba149313be24","2021-05-14 17:25:50","223.24.161.70","NGS เข้าสู่ระบบ.","6809f49f86586a97cb888adc3119668b");
INSERT INTO logs VALUES("ed5f8c020fe07f7b","2021-05-14 18:14:19","223.24.161.70","NGS เข้าสู่ระบบ.","6809f49f86586a97cb888adc3119668b");
INSERT INTO logs VALUES("6a6b56e9ec8b2129","2021-05-14 18:17:50","182.232.143.158","pathumkan เข้าสู่ระบบ.","23ae8fd2022f767f5c90728825132b90");
INSERT INTO logs VALUES("e31ab30821e999aa","2021-05-15 12:27:56","1.47.199.176","CCW เข้าสู่ระบบ.","06ac11af0ac13b221a953bfb54ecaa92");
INSERT INTO logs VALUES("f7a6905df8d76bd6","2021-05-17 08:04:04","171.99.161.125","finance เข้าสู่ระบบ.","ed6b1d41694cc31a1bc8a0f659d5faf7");
INSERT INTO logs VALUES("b6d251f746025a26","2021-05-17 08:19:47","124.120.8.142","saowaruk เข้าสู่ระบบ.","5997108712eef9df6ecab22f1f3728f9");
INSERT INTO logs VALUES("1e3e85ad225bdb87","2021-05-17 08:30:40","182.232.135.125","operation เข้าสู่ระบบ.","a60af60cc188e40bca694274e06eaf08");
INSERT INTO logs VALUES("d544c5c65d68c835","2021-05-17 08:35:07","182.232.135.125","operation เข้าสู่ระบบ.","a60af60cc188e40bca694274e06eaf08");
INSERT INTO logs VALUES("359cbe8d8a6d7afd","2021-05-17 08:36:51","124.120.8.142","saowaruk เข้าสู่ระบบ.","5997108712eef9df6ecab22f1f3728f9");
INSERT INTO logs VALUES("edc9feb352deecc4","2021-05-17 08:39:58","182.232.135.125","operation เข้าสู่ระบบ.","a60af60cc188e40bca694274e06eaf08");
INSERT INTO logs VALUES("882e43508eb5c69f","2021-05-17 08:40:18","182.232.135.125","operation ออกจากระบบ.","a60af60cc188e40bca694274e06eaf08");
INSERT INTO logs VALUES("7e9e76cf0ea3d6d9","2021-05-17 08:48:44","182.232.135.125","operation เข้าสู่ระบบ.","a60af60cc188e40bca694274e06eaf08");
INSERT INTO logs VALUES("814ff7eefe43d671","2021-05-17 08:56:37","182.232.135.125","operation เข้าสู่ระบบ.","a60af60cc188e40bca694274e06eaf08");
INSERT INTO logs VALUES("24b4ef68f1546ac6","2021-05-17 08:57:22","182.232.135.125","operation ออกจากระบบ.","a60af60cc188e40bca694274e06eaf08");
INSERT INTO logs VALUES("f04166a779b62196","2021-05-17 08:58:07","171.99.161.125","finance เข้าสู่ระบบ.","ed6b1d41694cc31a1bc8a0f659d5faf7");
INSERT INTO logs VALUES("3dcecc5018e03006","2021-05-17 09:20:49","182.232.135.125","operation เข้าสู่ระบบ.","a60af60cc188e40bca694274e06eaf08");
INSERT INTO logs VALUES("be383d05209c2371","2021-05-17 09:37:23","124.120.8.142","saowaruk เข้าสู่ระบบ.","5997108712eef9df6ecab22f1f3728f9");
INSERT INTO logs VALUES("b99ecccdaeb917be","2021-05-17 09:44:07","182.232.135.125","operation เข้าสู่ระบบ.","a60af60cc188e40bca694274e06eaf08");
INSERT INTO logs VALUES("1137f427f7fdb420","2021-05-17 10:12:32","101.108.2.252","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("e7373366786bd6ab","2021-05-17 10:53:52","101.108.2.252","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("a5aaeb7f7cbc2601","2021-05-17 11:13:15","101.108.2.252","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("37ca1f73ebde6fd2","2021-05-17 11:26:25","1.46.143.86","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("c1d68f4145e8d5f6","2021-05-17 11:39:59","124.120.8.142","saowaruk เข้าสู่ระบบ.","5997108712eef9df6ecab22f1f3728f9");
INSERT INTO logs VALUES("4986dc0f77c721f3","2021-05-17 13:03:49","182.232.135.125","operation เข้าสู่ระบบ.","a60af60cc188e40bca694274e06eaf08");
INSERT INTO logs VALUES("9430563ca910f520","2021-05-17 13:50:55","101.108.2.252","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("8484e229e0ff5d23","2021-05-17 14:10:30","101.108.2.252","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("2f756d63b9310d0e","2021-05-17 17:44:55","101.108.2.252","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("94e7cd7d775c9419","2021-05-17 19:12:49","171.6.1.192","CDC เข้าสู่ระบบ.","b496e28463b931118820246a08cf9826");
INSERT INTO logs VALUES("b942a28b452a8096","2021-05-18 08:25:43","1.20.185.192","saowaruk เข้าสู่ระบบ.","5997108712eef9df6ecab22f1f3728f9");
INSERT INTO logs VALUES("9f91c13a9e876a92","2021-05-18 08:26:45","1.20.185.192","saowaruk เข้าสู่ระบบ.","5997108712eef9df6ecab22f1f3728f9");
INSERT INTO logs VALUES("7331a24b6e9f2a69","2021-05-18 09:35:39","1.20.185.192","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("1e3d6a1ceff51209","2021-05-18 13:17:32","1.20.185.192","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("79cb3e816d70ac86","2021-05-18 14:05:51","1.20.185.192","saowaruk เข้าสู่ระบบ.","5997108712eef9df6ecab22f1f3728f9");
INSERT INTO logs VALUES("524eea77f0f21770","2021-05-18 15:40:38","101.108.145.100","TMK เข้าสู่ระบบ.","451453af732f6b70835c9dcec5db3b93");
INSERT INTO logs VALUES("a93639bcff63fcc8","2021-05-18 18:43:07","101.108.145.100","TMK เข้าสู่ระบบ.","451453af732f6b70835c9dcec5db3b93");
INSERT INTO logs VALUES("804005387b5107f9","2021-05-18 18:58:26","125.24.54.79","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("f382f96a45cf003b","2021-05-18 19:07:35","125.24.54.79","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("73b51dbf0283b060","2021-05-19 08:30:27","101.108.4.154","saowaruk เข้าสู่ระบบ.","5997108712eef9df6ecab22f1f3728f9");
INSERT INTO logs VALUES("4b80bab33818ad20","2021-05-19 09:11:48","171.99.161.163","finance เข้าสู่ระบบ.","ed6b1d41694cc31a1bc8a0f659d5faf7");
INSERT INTO logs VALUES("4af6d1fbe0ab00af","2021-05-19 10:37:31","1.46.174.228","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("264759c5187a8852","2021-05-19 11:02:01","1.46.174.228","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("6a1b734976223bf3","2021-05-19 12:19:43","1.46.174.228","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("8c7ab0b26b50e62b","2021-05-19 12:29:39","101.108.151.57","TMK เข้าสู่ระบบ.","451453af732f6b70835c9dcec5db3b93");
INSERT INTO logs VALUES("37615fff0526922a","2021-05-19 12:31:45","1.46.202.89","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("b25ee999948bc8c5","2021-05-19 12:32:33","124.120.213.205","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("86d4b16b85ad9700","2021-05-19 12:49:42","1.46.174.228","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("5a5c9cfc8e50efa9","2021-05-19 14:10:29","49.230.18.29","admin เข้าสู่ระบบ.","6ccdcc01b4cbc496cab3ed0c7fb20cac");
INSERT INTO logs VALUES("a1a63d85be0449da","2021-05-19 14:11:25","49.230.18.29","admin เข้าสู่ระบบ.","6ccdcc01b4cbc496cab3ed0c7fb20cac");
INSERT INTO logs VALUES("30c3776008df6203","2021-05-19 14:22:51","125.24.55.130","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("aa613cde9cf9ddf1","2021-05-19 15:18:44","125.24.55.130","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("876d648a704e4ebc","2021-05-20 08:18:02","101.108.4.154","saowaruk เข้าสู่ระบบ.","5997108712eef9df6ecab22f1f3728f9");
INSERT INTO logs VALUES("c2c69f54ef8369f3","2021-05-20 08:52:13","101.108.4.154","saowaruk ออกจากระบบ.","5997108712eef9df6ecab22f1f3728f9");
INSERT INTO logs VALUES("07a7a0466704701f","2021-05-20 08:52:17","101.108.4.154","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("21452a3726896bc9","2021-05-20 08:52:40","101.108.4.154","pattapee ออกจากระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("f453efcaad6f8b6b","2021-05-20 08:52:44","101.108.4.154","saowaruk เข้าสู่ระบบ.","5997108712eef9df6ecab22f1f3728f9");
INSERT INTO logs VALUES("ac49848cf5398146","2021-05-20 09:32:54","101.108.4.154","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("eca41304caa834e3","2021-05-20 11:29:39","27.55.82.35","NEB เข้าสู่ระบบ.","3db564ba6fc573bad2628be5b7de4855");
INSERT INTO logs VALUES("105d17a03a55f5f3","2021-05-20 11:38:18","101.108.4.154","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("f902d1046da7b694","2021-05-20 11:50:49","101.108.149.95","admin เข้าสู่ระบบ.","6ccdcc01b4cbc496cab3ed0c7fb20cac");
INSERT INTO logs VALUES("ac03fe81365ddd67","2021-05-20 16:00:24","125.24.137.214","NEB เข้าสู่ระบบ.","3db564ba6fc573bad2628be5b7de4855");
INSERT INTO logs VALUES("e1ab59046af308f4","2021-05-20 18:30:43","202.176.106.224","SCT เข้าสู่ระบบ.","bfa7daa6736959ef0ec9b2ee01c1d656");
INSERT INTO logs VALUES("b39647dd776e232d","2021-05-20 18:32:21","49.228.228.18","SCT เข้าสู่ระบบ.","bfa7daa6736959ef0ec9b2ee01c1d656");
INSERT INTO logs VALUES("54b69c7365e532cc","2021-05-20 18:54:58","1.46.206.58","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("2126f2b0ac6f7cf8","2021-05-20 19:25:24","125.24.137.214","NEB เข้าสู่ระบบ.","3db564ba6fc573bad2628be5b7de4855");
INSERT INTO logs VALUES("b2bdd641eb26ef61","2021-05-20 19:25:37","125.24.137.214","NEB เข้าสู่ระบบ.","3db564ba6fc573bad2628be5b7de4855");
INSERT INTO logs VALUES("7cb9b4055975b335","2021-05-20 19:31:47","125.24.137.214","NEB เข้าสู่ระบบ.","3db564ba6fc573bad2628be5b7de4855");
INSERT INTO logs VALUES("7e2024296c6af20d","2021-05-20 19:38:53","49.228.196.43","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("9aabfb9c641b1181","2021-05-20 20:06:10","49.228.196.43","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("226ffb8a28bf720b","2021-05-21 08:30:50","1.20.185.79","saowaruk เข้าสู่ระบบ.","5997108712eef9df6ecab22f1f3728f9");
INSERT INTO logs VALUES("b9f1dba6c6d20102","2021-05-21 09:38:22","1.20.185.79","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("2cccb9e989d7f9c8","2021-05-21 17:04:32","1.20.185.79","saowaruk เข้าสู่ระบบ.","5997108712eef9df6ecab22f1f3728f9");
INSERT INTO logs VALUES("737bb1f33a666e80","2021-05-22 09:52:35","1.20.107.110","HR เข้าสู่ระบบ.","d3cea0a13419c7b7d226a432af757ca4");
INSERT INTO logs VALUES("599a711a868778a6","2021-05-22 13:46:00","49.228.199.80","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("d0e1dda2e5115924","2021-05-22 13:53:06","61.90.111.19","CBN เข้าสู่ระบบ.","9aa946d6abfcb4cfc9ee258593eff00f");
INSERT INTO logs VALUES("bfa6e51c4c7b8324","2021-05-22 13:58:35","49.230.201.43","CPK เข้าสู่ระบบ.","cec9ac90af27b74546e22910bdc5bfff");
INSERT INTO logs VALUES("d877adf7550a2a9e","2021-05-22 14:03:40","49.228.199.80","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("669b5699e221d1f4","2021-05-22 14:14:24","49.228.199.80","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("9f503b509820b202","2021-05-22 21:55:35","171.6.91.88","CRP เข้าสู่ระบบ.","9cc29e8c2b924de0fd3ef55737a159c0");
INSERT INTO logs VALUES("0004634192f5418a","2021-05-22 22:17:15","49.228.199.80","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("e04be9fffe271dc5","2021-05-22 22:27:18","49.228.199.80","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("95e9e45683bc2ec8","2021-05-22 22:34:58","124.122.5.144","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("b0f3c61580fc6a23","2021-05-22 22:46:18","124.122.5.144","janejira เข้าสู่ระบบ.","11c0009be8f4e977c6998edce04c9b2e");
INSERT INTO logs VALUES("1351aee52713331c","2021-05-23 13:44:16","171.6.128.185","CDC เข้าสู่ระบบ.","b496e28463b931118820246a08cf9826");
INSERT INTO logs VALUES("4dfb803f7bf50669","2021-05-23 16:56:45","101.108.138.50","SCQ เข้าสู่ระบบ.","9fe4987d685fcbff9b1a3011cdd12b35");
INSERT INTO logs VALUES("b3ab9de931e9209b","2021-05-23 17:11:04","171.6.128.185","CDC เข้าสู่ระบบ.","b496e28463b931118820246a08cf9826");
INSERT INTO logs VALUES("5236184f64048958","2021-05-24 08:22:47","49.237.20.38","purchase เข้าสู่ระบบ.","d5b14c346b88725387c282ac7b851ad8");
INSERT INTO logs VALUES("48270543dc71bca2","2021-05-24 08:42:24","1.20.107.110","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("e66f8f90134e70c2","2021-05-24 09:51:09","1.46.70.77","finance เข้าสู่ระบบ.","ed6b1d41694cc31a1bc8a0f659d5faf7");
INSERT INTO logs VALUES("858859dc472c42ff","2021-05-24 09:51:50","111.223.34.153","finance เข้าสู่ระบบ.","ed6b1d41694cc31a1bc8a0f659d5faf7");
INSERT INTO logs VALUES("9ea8133a75a2556c","2021-05-24 09:57:57","1.20.107.110","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("5ab07e99770236ed","2021-05-24 10:02:22","1.46.70.77","finance เข้าสู่ระบบ.","ed6b1d41694cc31a1bc8a0f659d5faf7");
INSERT INTO logs VALUES("9b69f886a7788902","2021-05-24 11:36:31","1.20.107.110","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("e25cea71f42312f2","2021-05-24 11:45:02","1.20.107.110","admin เข้าสู่ระบบ.","6ccdcc01b4cbc496cab3ed0c7fb20cac");
INSERT INTO logs VALUES("9dba7b0eab4230a8","2021-05-24 11:46:40","49.228.42.48","admin เข้าสู่ระบบ.","6ccdcc01b4cbc496cab3ed0c7fb20cac");
INSERT INTO logs VALUES("746dc93cb5b5d441","2021-05-24 14:52:51","1.47.133.239","T21 เข้าสู่ระบบ.","b17177683249bb2cda3472e14d984e60");
INSERT INTO logs VALUES("ff07ef26744f1fd1","2021-05-24 17:17:51","182.232.58.82","NGS เข้าสู่ระบบ.","6809f49f86586a97cb888adc3119668b");
INSERT INTO logs VALUES("269e61805588c753","2021-05-24 17:45:28","1.46.8.200","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("c01fbb2fd7cd0ec3","2021-05-25 09:11:12","1.20.107.110","purchase เข้าสู่ระบบ.","d5b14c346b88725387c282ac7b851ad8");
INSERT INTO logs VALUES("1d450bb8528562b9","2021-05-25 09:15:12","1.20.107.110","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("258b4df803fb8211","2021-05-25 10:43:44","1.20.107.110","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("e4d0fa5357d5cbeb","2021-05-25 11:25:49","1.47.133.239","T21 เข้าสู่ระบบ.","b17177683249bb2cda3472e14d984e60");
INSERT INTO logs VALUES("132bea2ad56a404b","2021-05-25 11:51:56","1.20.107.110","purchase ออกจากระบบ.","d5b14c346b88725387c282ac7b851ad8");
INSERT INTO logs VALUES("fd6f229b94b457e9","2021-05-25 12:01:27","124.120.6.2","saowaruk เข้าสู่ระบบ.","5997108712eef9df6ecab22f1f3728f9");
INSERT INTO logs VALUES("4d91fa062b972798","2021-05-25 13:29:31","1.47.133.239","T21 เข้าสู่ระบบ.","b17177683249bb2cda3472e14d984e60");
INSERT INTO logs VALUES("9b0810e32d06e274","2021-05-25 13:42:39","1.20.107.110","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("f2092481d8106d91","2021-05-25 15:01:45","1.20.107.110","purchase เข้าสู่ระบบ.","d5b14c346b88725387c282ac7b851ad8");
INSERT INTO logs VALUES("6f5ac643fa990bac","2021-05-25 15:26:33","101.51.188.102","SCQ เข้าสู่ระบบ.","9fe4987d685fcbff9b1a3011cdd12b35");
INSERT INTO logs VALUES("5eb42d3c5ef340d9","2021-05-25 15:41:08","101.51.188.102","SCQ เข้าสู่ระบบ.","9fe4987d685fcbff9b1a3011cdd12b35");
INSERT INTO logs VALUES("7e5c81c89bcd76c8","2021-05-25 15:47:49","115.87.216.227","CPK เข้าสู่ระบบ.","cec9ac90af27b74546e22910bdc5bfff");
INSERT INTO logs VALUES("ee4cff3febb7a094","2021-05-25 17:39:02","182.232.198.57","CPK เข้าสู่ระบบ.","cec9ac90af27b74546e22910bdc5bfff");
INSERT INTO logs VALUES("4b0777d17fb106a3","2021-05-25 18:04:42","1.46.172.165","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("19471c7e00b5b618","2021-05-25 19:29:40","184.22.117.186","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("569aa9511f985a4b","2021-05-26 19:41:43","115.87.236.170","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("10937ae24941177d","2021-05-27 08:31:46","101.108.71.81","saowaruk เข้าสู่ระบบ.","5997108712eef9df6ecab22f1f3728f9");
INSERT INTO logs VALUES("873e816e3d50b4b2","2021-05-28 08:05:29","101.108.77.243","saowaruk เข้าสู่ระบบ.","5997108712eef9df6ecab22f1f3728f9");
INSERT INTO logs VALUES("5c5b92b330dd11fd","2021-05-28 08:39:30","1.47.133.250","finance เข้าสู่ระบบ.","ed6b1d41694cc31a1bc8a0f659d5faf7");
INSERT INTO logs VALUES("de138bea71b27348","2021-05-28 09:05:41","101.108.77.243","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("4ff6838dde009edc","2021-05-28 14:41:02","101.108.77.243","SV เข้าสู่ระบบ.","6134ff997b6f5c7e403dc701c7b2cec9");
INSERT INTO logs VALUES("6645213633e79b5a","2021-05-28 14:49:03","101.108.77.243","finance เข้าสู่ระบบ.","ed6b1d41694cc31a1bc8a0f659d5faf7");
INSERT INTO logs VALUES("c99ecb0f74ab0971","2021-05-28 14:52:48","101.108.77.243","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("9d298d4ecd205928","2021-05-28 17:44:27","101.108.77.243","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("bb9d698fd451909e","2021-05-28 20:21:30","171.99.156.71","saowaruk เข้าสู่ระบบ.","5997108712eef9df6ecab22f1f3728f9");
INSERT INTO logs VALUES("b6307241a0049ecf","2021-05-30 13:08:22","101.51.190.51","SCQ เข้าสู่ระบบ.","9fe4987d685fcbff9b1a3011cdd12b35");
INSERT INTO logs VALUES("f3fa00aa51af161f","2021-05-30 17:34:29","159.192.253.230","MGB เข้าสู่ระบบ.","859cd041e3fe84e5e65b5c178452841f");
INSERT INTO logs VALUES("e0456c6388709aa5","2021-05-30 19:19:34","27.145.55.165","CLP เข้าสู่ระบบ.","fc9c93f00e53b47b7bf01b72cd6180bd");
INSERT INTO logs VALUES("e416c5dce6f4b7da","2021-05-31 08:28:13","101.51.130.224","saowaruk เข้าสู่ระบบ.","5997108712eef9df6ecab22f1f3728f9");
INSERT INTO logs VALUES("d6df2b5a89bfd402","2021-05-31 08:36:28","101.51.130.224","saowaruk ออกจากระบบ.","5997108712eef9df6ecab22f1f3728f9");
INSERT INTO logs VALUES("dc385d73c822dc04","2021-05-31 08:36:40","101.51.130.224","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("d56adcd74a8d2f00","2021-05-31 08:39:15","101.51.130.224","pattapee ออกจากระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("9c73bf7c1cf322ac","2021-05-31 08:39:20","101.51.130.224","saowaruk เข้าสู่ระบบ.","5997108712eef9df6ecab22f1f3728f9");
INSERT INTO logs VALUES("3f70b530b39c3aa0","2021-05-31 09:46:53","101.51.130.224","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("0b94c0459bc2d0bc","2021-05-31 12:50:13","101.51.130.224","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("588e0ad67c48870f","2021-05-31 13:40:16","101.51.130.224","finance เข้าสู่ระบบ.","ed6b1d41694cc31a1bc8a0f659d5faf7");
INSERT INTO logs VALUES("589e590d25d696c5","2021-05-31 13:42:26","101.51.130.224","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("86698df76f8b214a","2021-05-31 13:46:28","101.51.130.224","saowaruk เข้าสู่ระบบ.","5997108712eef9df6ecab22f1f3728f9");
INSERT INTO logs VALUES("8ff055ee73e7251e","2021-05-31 13:56:20","1.46.42.142","SCP เข้าสู่ระบบ.","7611717e7dfb53c91a776dcd505f9802");
INSERT INTO logs VALUES("f3d51c4b408098e5","2021-05-31 14:00:37","101.51.130.224","saowaruk เข้าสู่ระบบ.","5997108712eef9df6ecab22f1f3728f9");
INSERT INTO logs VALUES("9b562c732690aeb7","2021-05-31 15:11:26","115.87.216.227","CPK เข้าสู่ระบบ.","cec9ac90af27b74546e22910bdc5bfff");
INSERT INTO logs VALUES("c4333af47e305c64","2021-05-31 16:49:30","101.51.130.224","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("a3a6da3c72de99a9","2021-05-31 16:52:32","101.51.130.224","saowaruk เข้าสู่ระบบ.","5997108712eef9df6ecab22f1f3728f9");
INSERT INTO logs VALUES("83a17e32d5cadd17","2021-05-31 19:24:11","125.24.138.238","NEB เข้าสู่ระบบ.","3db564ba6fc573bad2628be5b7de4855");
INSERT INTO logs VALUES("7f0f14169db70f80","2021-05-31 19:28:31","101.51.190.11","SCQ เข้าสู่ระบบ.","9fe4987d685fcbff9b1a3011cdd12b35");
INSERT INTO logs VALUES("fa4a7b37314e42ad","2021-06-01 09:23:21","101.51.130.224","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("09652d54090a96c5","2021-06-01 10:37:18","101.51.130.224","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("42e00be80e511b5c","2021-06-01 13:01:37","171.96.205.248","CR3 เข้าสู่ระบบ.","b29017088b3135c435f9c7912ec2cdb2");
INSERT INTO logs VALUES("9982bec75e1fc1f9","2021-06-01 15:12:46","101.51.130.224","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("4968c4b3e13df21a","2021-06-01 15:13:04","101.51.130.224","saowaruk เข้าสู่ระบบ.","5997108712eef9df6ecab22f1f3728f9");
INSERT INTO logs VALUES("b1b89b26ca98b41a","2021-06-01 15:57:33","101.51.130.224","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("d105c5d701e4791d","2021-06-01 16:19:22","171.96.30.220","CCW เข้าสู่ระบบ.","06ac11af0ac13b221a953bfb54ecaa92");
INSERT INTO logs VALUES("b9daaa701615eb89","2021-06-01 16:27:20","1.47.5.134","janejira เข้าสู่ระบบ.","11c0009be8f4e977c6998edce04c9b2e");
INSERT INTO logs VALUES("579828af9b65dff0","2021-06-01 16:29:18","101.51.130.224","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("bfdd8ad7395dcf5e","2021-06-01 16:42:01","101.51.130.224","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("f387bf294e2d2d8e","2021-06-01 16:59:14","101.51.130.224","saowaruk เข้าสู่ระบบ.","5997108712eef9df6ecab22f1f3728f9");
INSERT INTO logs VALUES("149ea05607035b65","2021-06-02 08:14:09","101.108.6.30","saowaruk เข้าสู่ระบบ.","5997108712eef9df6ecab22f1f3728f9");
INSERT INTO logs VALUES("7f72b2d60c5e8bd3","2021-06-02 11:35:08","101.108.6.30","finance เข้าสู่ระบบ.","ed6b1d41694cc31a1bc8a0f659d5faf7");
INSERT INTO logs VALUES("29ead22c5733755f","2021-06-02 11:46:55","101.108.6.30","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("1a46c0448e354ffe","2021-06-02 13:30:28","101.108.6.30","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("225931d4c5aa7c46","2021-06-02 22:05:47","1.47.138.101","ICS เข้าสู่ระบบ.","79ba10e5305e95e757761317a07fca37");
INSERT INTO logs VALUES("f9a0c29f7cc88ce2","2021-06-03 11:19:44","1.47.194.186","T21 เข้าสู่ระบบ.","b17177683249bb2cda3472e14d984e60");
INSERT INTO logs VALUES("6b5f6676189bf286","2021-06-03 13:16:19","49.228.148.5","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("3721cd2a7f28eb5c","2021-06-04 08:26:35","101.51.148.212","saowaruk เข้าสู่ระบบ.","5997108712eef9df6ecab22f1f3728f9");
INSERT INTO logs VALUES("9a803e867f618253","2021-06-04 10:51:32","101.51.148.212","finance เข้าสู่ระบบ.","ed6b1d41694cc31a1bc8a0f659d5faf7");
INSERT INTO logs VALUES("0d69ea1f6cf0f9de","2021-06-04 10:52:32","101.51.148.212","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("e2bf734385cf411e","2021-06-04 10:55:10","101.51.148.212","finance ออกจากระบบ.","ed6b1d41694cc31a1bc8a0f659d5faf7");
INSERT INTO logs VALUES("87c0b5c979ecd467","2021-06-04 13:13:05","125.25.161.169","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("09a656bf3af63ce4","2021-06-04 14:03:08","125.25.161.169","saowaruk เข้าสู่ระบบ.","5997108712eef9df6ecab22f1f3728f9");
INSERT INTO logs VALUES("15ace497fbfce1c7","2021-06-04 14:04:19","125.25.161.169","finance เข้าสู่ระบบ.","ed6b1d41694cc31a1bc8a0f659d5faf7");
INSERT INTO logs VALUES("828c566727af6393","2021-06-04 14:11:22","125.25.161.169","saowaruk ออกจากระบบ.","5997108712eef9df6ecab22f1f3728f9");
INSERT INTO logs VALUES("50dd21853db3ab86","2021-06-04 14:11:27","125.25.161.169","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("7bdcfa64cce57470","2021-06-04 14:12:10","125.25.161.169","pattapee ออกจากระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("c574a58a04ea7ba8","2021-06-04 14:32:07","125.25.161.169","saowaruk เข้าสู่ระบบ.","5997108712eef9df6ecab22f1f3728f9");
INSERT INTO logs VALUES("a56e7372d857311f","2021-06-04 15:19:25","101.51.190.172","SCQ เข้าสู่ระบบ.","9fe4987d685fcbff9b1a3011cdd12b35");
INSERT INTO logs VALUES("3af77a8c95ee2dd3","2021-06-04 15:32:23","125.25.161.169","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("f0d4adb102ae514e","2021-06-04 15:34:25","125.25.161.169","saowaruk ออกจากระบบ.","5997108712eef9df6ecab22f1f3728f9");
INSERT INTO logs VALUES("12837f310f051990","2021-06-04 15:34:38","125.25.161.169","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("014ef82d50866e73","2021-06-04 15:35:25","125.25.161.169","pattapee ออกจากระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("de937d1833f011d0","2021-06-04 16:45:19","125.25.161.169","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("82bb9922f938b269","2021-06-04 17:26:59","182.232.169.40","CRP เข้าสู่ระบบ.","9cc29e8c2b924de0fd3ef55737a159c0");
INSERT INTO logs VALUES("76e8e643a70671b7","2021-06-05 15:12:33","124.121.114.164","MBP เข้าสู่ระบบ.","e782c0270070c7ff34dc7984a3643741");
INSERT INTO logs VALUES("012456cc85ffd788","2021-06-05 15:57:52","101.51.190.172","SCQ เข้าสู่ระบบ.","9fe4987d685fcbff9b1a3011cdd12b35");
INSERT INTO logs VALUES("2b515119ccc03c2e","2021-06-05 15:59:33","58.8.77.80","janejira เข้าสู่ระบบ.","11c0009be8f4e977c6998edce04c9b2e");
INSERT INTO logs VALUES("e03bbfd7553188ab","2021-06-06 12:35:49","49.228.148.5","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("0634b5e6154c437c","2021-06-06 17:38:02","1.46.11.13","T21 เข้าสู่ระบบ.","b17177683249bb2cda3472e14d984e60");
INSERT INTO logs VALUES("cefbbcb981e4b86a","2021-06-06 17:51:13","171.97.42.90","CR3 เข้าสู่ระบบ.","b29017088b3135c435f9c7912ec2cdb2");
INSERT INTO logs VALUES("09c4c30458dee7a6","2021-06-07 08:31:45","125.24.167.156","saowaruk เข้าสู่ระบบ.","5997108712eef9df6ecab22f1f3728f9");
INSERT INTO logs VALUES("3fc1ab799029c74b","2021-06-07 10:29:42","111.223.34.153","finance เข้าสู่ระบบ.","ed6b1d41694cc31a1bc8a0f659d5faf7");
INSERT INTO logs VALUES("328fc00d6e817bd0","2021-06-07 10:31:32","125.24.167.156","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("1e512e065611a8ec","2021-06-07 10:38:28","125.24.167.156","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("1aa9a61a694329cf","2021-06-07 10:41:25","115.87.212.44","CPK เข้าสู่ระบบ.","cec9ac90af27b74546e22910bdc5bfff");
INSERT INTO logs VALUES("bca60c2eb4cb4c80","2021-06-07 10:46:23","125.24.167.156","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("0d0ffa00b9f46e83","2021-06-07 12:07:39","115.87.212.44","CPK เข้าสู่ระบบ.","cec9ac90af27b74546e22910bdc5bfff");
INSERT INTO logs VALUES("67d3aa7573ddf143","2021-06-07 12:07:54","115.87.212.44","CPK เข้าสู่ระบบ.","cec9ac90af27b74546e22910bdc5bfff");
INSERT INTO logs VALUES("1ac658490ee6f821","2021-06-07 13:01:38","101.108.78.199","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("6d646ff3b82c72d3","2021-06-07 13:02:44","184.82.107.163","admin เข้าสู่ระบบ.","6ccdcc01b4cbc496cab3ed0c7fb20cac");
INSERT INTO logs VALUES("410434bd2bf16851","2021-06-07 13:03:46","184.82.107.163","admin ออกจากระบบ.","6ccdcc01b4cbc496cab3ed0c7fb20cac");
INSERT INTO logs VALUES("e80c3c05dc84bf81","2021-06-07 13:04:01","184.82.107.163","janejira เข้าสู่ระบบ.","11c0009be8f4e977c6998edce04c9b2e");
INSERT INTO logs VALUES("cde3407523835caf","2021-06-07 13:05:25","184.82.107.163","janejira ออกจากระบบ.","11c0009be8f4e977c6998edce04c9b2e");
INSERT INTO logs VALUES("0f27cd2bedac3bea","2021-06-07 19:10:56","101.51.190.105","SCQ เข้าสู่ระบบ.","9fe4987d685fcbff9b1a3011cdd12b35");
INSERT INTO logs VALUES("8d51053c4f992a51","2021-06-08 08:10:29","101.108.78.199","saowaruk เข้าสู่ระบบ.","5997108712eef9df6ecab22f1f3728f9");
INSERT INTO logs VALUES("734aa07936516832","2021-06-08 09:24:58","101.108.78.199","HR เข้าสู่ระบบ.","d3cea0a13419c7b7d226a432af757ca4");
INSERT INTO logs VALUES("176c8b42a6df5d60","2021-06-08 09:26:03","101.108.78.199","HR ออกจากระบบ.","d3cea0a13419c7b7d226a432af757ca4");
INSERT INTO logs VALUES("451de7a7c116a165","2021-06-08 09:49:20","101.108.78.199","saowaruk เข้าสู่ระบบ.","5997108712eef9df6ecab22f1f3728f9");
INSERT INTO logs VALUES("a6ef7b744ff046e6","2021-06-08 10:06:43","101.108.78.199","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("6fce07c691fc936d","2021-06-08 15:46:47","101.51.190.11","SCQ เข้าสู่ระบบ.","9fe4987d685fcbff9b1a3011cdd12b35");
INSERT INTO logs VALUES("627e011d850f0ed9","2021-06-08 15:56:02","101.108.78.199","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("dd7eeb98d8ec08d9","2021-06-08 19:18:31","1.46.11.13","T21 เข้าสู่ระบบ.","b17177683249bb2cda3472e14d984e60");
INSERT INTO logs VALUES("8124bac5a73a2495","2021-06-08 21:03:26","125.24.55.180","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("552080665ea011b0","2021-06-09 08:16:50","101.108.78.199","saowaruk เข้าสู่ระบบ.","5997108712eef9df6ecab22f1f3728f9");
INSERT INTO logs VALUES("6f8f34e8082dd2e1","2021-06-09 10:08:48","101.108.78.199","saowaruk เข้าสู่ระบบ.","5997108712eef9df6ecab22f1f3728f9");
INSERT INTO logs VALUES("ed04753caaaa9d68","2021-06-09 11:01:32","101.108.78.199","saowaruk เข้าสู่ระบบ.","5997108712eef9df6ecab22f1f3728f9");
INSERT INTO logs VALUES("8b54b95fffdac9cb","2021-06-09 11:02:04","49.230.45.144","CPK เข้าสู่ระบบ.","cec9ac90af27b74546e22910bdc5bfff");
INSERT INTO logs VALUES("a602aa5223dec0ee","2021-06-09 12:04:04","49.230.47.114","CPK เข้าสู่ระบบ.","cec9ac90af27b74546e22910bdc5bfff");
INSERT INTO logs VALUES("95e2567347425eb6","2021-06-09 14:31:27","124.121.114.215","MBP เข้าสู่ระบบ.","e782c0270070c7ff34dc7984a3643741");
INSERT INTO logs VALUES("f24cb19dce60bf62","2021-06-09 14:31:47","124.121.114.215","MBP ออกจากระบบ.","e782c0270070c7ff34dc7984a3643741");
INSERT INTO logs VALUES("fc5fef47eb21b3dd","2021-06-10 09:15:29","101.108.78.199","saowaruk เข้าสู่ระบบ.","5997108712eef9df6ecab22f1f3728f9");
INSERT INTO logs VALUES("04d4073980d185be","2021-06-10 10:13:57","182.232.53.30","CPK เข้าสู่ระบบ.","cec9ac90af27b74546e22910bdc5bfff");
INSERT INTO logs VALUES("0e04b8da3dc757d1","2021-06-10 10:19:23","101.108.78.199","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("2f032a7936e438f0","2021-06-10 10:35:28","101.108.78.199","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("5fb13f67d9050fa5","2021-06-10 10:36:26","101.108.78.199","superadmin ออกจากระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("7787b886b1a84fc6","2021-06-10 10:36:30","101.108.78.199","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("ace9e38c1064474c","2021-06-10 10:50:13","182.232.53.30","CPK เข้าสู่ระบบ.","cec9ac90af27b74546e22910bdc5bfff");
INSERT INTO logs VALUES("8b866889ae4df321","2021-06-10 11:10:17","101.108.78.199","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("6bdaeb5a281e1d35","2021-06-10 12:31:23","1.47.74.57","CCW เข้าสู่ระบบ.","06ac11af0ac13b221a953bfb54ecaa92");
INSERT INTO logs VALUES("5b8d13c9366376df","2021-06-10 12:31:34","101.108.78.199","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("627db5909248def0","2021-06-10 13:19:57","101.108.78.199","saowaruk เข้าสู่ระบบ.","5997108712eef9df6ecab22f1f3728f9");
INSERT INTO logs VALUES("4635da369becaac5","2021-06-10 13:25:40","171.6.115.24","CRP เข้าสู่ระบบ.","9cc29e8c2b924de0fd3ef55737a159c0");
INSERT INTO logs VALUES("d917a288cdc23cc6","2021-06-10 13:46:58","101.108.78.199","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("bec994553ee5beaa","2021-06-10 14:46:07","171.97.203.194","CTW  เข้าสู่ระบบ.","cf4178eda791cfcbd3f20efe1a1ec35a");
INSERT INTO logs VALUES("4ff09f0c0d1aec20","2021-06-10 14:46:28","171.97.203.194","CTW  เข้าสู่ระบบ.","cf4178eda791cfcbd3f20efe1a1ec35a");
INSERT INTO logs VALUES("ee7d1d2eeea4bdaa","2021-06-10 20:36:26","171.97.203.194","CTW  เข้าสู่ระบบ.","cf4178eda791cfcbd3f20efe1a1ec35a");
INSERT INTO logs VALUES("4de776146dc35a88","2021-06-11 08:12:02","101.108.78.199","saowaruk เข้าสู่ระบบ.","5997108712eef9df6ecab22f1f3728f9");
INSERT INTO logs VALUES("75ecb3d1bdcfcd38","2021-06-11 09:46:30","101.108.78.199","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("8f6e05dfc23fce29","2021-06-11 11:53:07","58.8.153.156","HR เข้าสู่ระบบ.","d3cea0a13419c7b7d226a432af757ca4");
INSERT INTO logs VALUES("cabf0c1ca515975a","2021-06-11 12:25:58","101.108.78.199","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("0a3829f1dbfc0ef5","2021-06-11 12:58:02","182.232.16.249","CPK เข้าสู่ระบบ.","cec9ac90af27b74546e22910bdc5bfff");
INSERT INTO logs VALUES("468d48113f323622","2021-06-11 13:11:56","101.108.78.199","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("81cc46aaf8550dcb","2021-06-11 13:55:12","101.108.78.199","saowaruk เข้าสู่ระบบ.","5997108712eef9df6ecab22f1f3728f9");
INSERT INTO logs VALUES("b132a8af142b2b60","2021-06-11 13:59:04","101.108.78.199","saowaruk เข้าสู่ระบบ.","5997108712eef9df6ecab22f1f3728f9");
INSERT INTO logs VALUES("2f69c70ea32a8e9a","2021-06-11 15:24:44","101.108.78.199","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("6854e31bc35aadb3","2021-06-11 16:36:22","116.58.254.155","MGB เข้าสู่ระบบ.","859cd041e3fe84e5e65b5c178452841f");
INSERT INTO logs VALUES("70f0feb457de9c7e","2021-06-11 17:12:15","101.108.78.199","saowaruk เข้าสู่ระบบ.","5997108712eef9df6ecab22f1f3728f9");
INSERT INTO logs VALUES("498b215b314e5d47","2021-06-11 18:05:24","223.24.169.55","T21 เข้าสู่ระบบ.","b17177683249bb2cda3472e14d984e60");
INSERT INTO logs VALUES("8dc5b36aee30ce85","2021-06-11 18:08:44","223.24.169.55","T21 เข้าสู่ระบบ.","b17177683249bb2cda3472e14d984e60");
INSERT INTO logs VALUES("6fa161559c851d1b","2021-06-11 18:55:15","116.58.254.155","MGB เข้าสู่ระบบ.","859cd041e3fe84e5e65b5c178452841f");
INSERT INTO logs VALUES("d96b6460d45708fc","2021-06-11 18:59:00","184.22.90.40","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("381259c3cc3f2974","2021-06-11 19:18:42","116.58.254.155","MGB เข้าสู่ระบบ.","859cd041e3fe84e5e65b5c178452841f");
INSERT INTO logs VALUES("777067a3e4addc27","2021-06-11 19:19:00","1.46.3.81","T21 เข้าสู่ระบบ.","b17177683249bb2cda3472e14d984e60");
INSERT INTO logs VALUES("525c158166745f10","2021-06-11 20:14:07","184.22.90.40","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("31ca5ce7f8eec824","2021-06-12 12:52:53","119.42.115.13","MGB เข้าสู่ระบบ.","859cd041e3fe84e5e65b5c178452841f");
INSERT INTO logs VALUES("502cc2e27d9b2d8c","2021-06-12 13:54:47","184.22.90.40","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("4d7b5f000bb59e6a","2021-06-12 20:13:04","61.90.1.109","CTW  เข้าสู่ระบบ.","cf4178eda791cfcbd3f20efe1a1ec35a");
INSERT INTO logs VALUES("f315787430a74cbb","2021-06-12 20:56:39","171.99.159.193","saowaruk เข้าสู่ระบบ.","5997108712eef9df6ecab22f1f3728f9");
INSERT INTO logs VALUES("a8ccb45e2afe5fb1","2021-06-13 15:45:20","61.90.2.72","CTW  เข้าสู่ระบบ.","cf4178eda791cfcbd3f20efe1a1ec35a");
INSERT INTO logs VALUES("97f889856ed8a896","2021-06-13 18:40:31","1.46.144.118","T21 เข้าสู่ระบบ.","b17177683249bb2cda3472e14d984e60");
INSERT INTO logs VALUES("afab8487864acab8","2021-06-13 18:45:55","171.99.156.153","saowaruk เข้าสู่ระบบ.","5997108712eef9df6ecab22f1f3728f9");
INSERT INTO logs VALUES("7cac8d0fc43ad897","2021-06-14 08:35:22","101.109.235.151","saowaruk เข้าสู่ระบบ.","5997108712eef9df6ecab22f1f3728f9");
INSERT INTO logs VALUES("f852155261cf7923","2021-06-14 09:05:20","101.109.235.151","purchase เข้าสู่ระบบ.","d5b14c346b88725387c282ac7b851ad8");
INSERT INTO logs VALUES("680c2653aedcbb90","2021-06-14 09:14:47","101.109.235.151","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("909dfcad11928646","2021-06-14 09:48:23","58.8.153.156","HR เข้าสู่ระบบ.","d3cea0a13419c7b7d226a432af757ca4");
INSERT INTO logs VALUES("8a4b985342b9ee2e","2021-06-14 09:52:36","101.109.235.151","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("657e15d910757e47","2021-06-14 10:21:01","1.46.130.68","saowaruk เข้าสู่ระบบ.","5997108712eef9df6ecab22f1f3728f9");
INSERT INTO logs VALUES("b1892f6d4c07a32e","2021-06-14 10:33:23","101.109.235.151","superadmin ออกจากระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("5b00ed005e41bdf7","2021-06-14 11:01:23","101.109.235.151","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("bc03a108c22064ec","2021-06-14 12:29:09","124.122.56.180","CR3 เข้าสู่ระบบ.","b29017088b3135c435f9c7912ec2cdb2");
INSERT INTO logs VALUES("4c981d5ffc66c29a","2021-06-14 14:20:25","101.109.235.151","purchase เข้าสู่ระบบ.","d5b14c346b88725387c282ac7b851ad8");
INSERT INTO logs VALUES("c95a0bfcae53ca23","2021-06-14 14:27:11","103.216.195.91","WH เข้าสู่ระบบ.","cfef909e353c8db298c5afccf010578a");
INSERT INTO logs VALUES("e2d51c286ee6af26","2021-06-14 17:11:54","101.109.235.151","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("d25bc534e043e50a","2021-06-14 17:25:03","101.109.235.151","purchase เข้าสู่ระบบ.","d5b14c346b88725387c282ac7b851ad8");
INSERT INTO logs VALUES("feca6367d54690a7","2021-06-14 18:27:28","101.109.235.151","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("77f1f36bd974ad1a","2021-06-15 08:22:07","101.109.235.151","saowaruk เข้าสู่ระบบ.","5997108712eef9df6ecab22f1f3728f9");
INSERT INTO logs VALUES("89ad247f706a9df2","2021-06-15 09:17:07","101.109.235.151","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("6dedf58ff807ed8e","2021-06-15 09:23:34","101.109.235.151","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("7a14aa4c8316ce49","2021-06-15 10:59:09","101.109.235.151","purchase เข้าสู่ระบบ.","d5b14c346b88725387c282ac7b851ad8");
INSERT INTO logs VALUES("e4cce21f96fcddfb","2021-06-15 14:15:30","101.109.235.151","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("bbfa324b4ad19bea","2021-06-15 14:16:59","115.87.216.34","ICS เข้าสู่ระบบ.","79ba10e5305e95e757761317a07fca37");
INSERT INTO logs VALUES("00c4eefb5a864c3e","2021-06-16 08:14:07","101.108.64.240","saowaruk เข้าสู่ระบบ.","5997108712eef9df6ecab22f1f3728f9");
INSERT INTO logs VALUES("d34bac1e853d1a13","2021-06-16 13:03:10","101.108.64.240","saowaruk เข้าสู่ระบบ.","5997108712eef9df6ecab22f1f3728f9");
INSERT INTO logs VALUES("fb319fdb72fa53b4","2021-06-16 14:48:37","101.108.64.240","saowaruk เข้าสู่ระบบ.","5997108712eef9df6ecab22f1f3728f9");
INSERT INTO logs VALUES("50ca1590f1c45419","2021-06-16 15:09:16","58.8.111.72","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("d39857a709fc1204","2021-06-16 17:53:28","124.121.114.72","MBP เข้าสู่ระบบ.","e782c0270070c7ff34dc7984a3643741");
INSERT INTO logs VALUES("f8fa304a47c823e2","2021-06-17 08:04:35","101.108.79.220","saowaruk เข้าสู่ระบบ.","5997108712eef9df6ecab22f1f3728f9");
INSERT INTO logs VALUES("9d7120c19f33f4a2","2021-06-17 09:04:49","101.108.79.220","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("1a0cdce787f081b9","2021-06-17 09:39:46","101.108.79.220","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("93ccefdba3a23ab2","2021-06-17 11:34:54","124.121.115.161","MBP เข้าสู่ระบบ.","e782c0270070c7ff34dc7984a3643741");
INSERT INTO logs VALUES("fc1a0dd5b23346f1","2021-06-17 11:45:55","171.6.159.44","CDC เข้าสู่ระบบ.","b496e28463b931118820246a08cf9826");
INSERT INTO logs VALUES("3e600efb42c4c635","2021-06-17 12:47:14","27.55.90.252","NEB เข้าสู่ระบบ.","3db564ba6fc573bad2628be5b7de4855");
INSERT INTO logs VALUES("ae80fe285a250e5e","2021-06-17 13:05:34","101.108.79.220","saowaruk เข้าสู่ระบบ.","5997108712eef9df6ecab22f1f3728f9");
INSERT INTO logs VALUES("47491d5dae328820","2021-06-17 14:00:37","101.108.79.220","purchase เข้าสู่ระบบ.","d5b14c346b88725387c282ac7b851ad8");
INSERT INTO logs VALUES("8adf119b345ab152","2021-06-17 14:00:56","182.232.1.60","T21 เข้าสู่ระบบ.","b17177683249bb2cda3472e14d984e60");
INSERT INTO logs VALUES("67637118b9f9196c","2021-06-17 15:18:40","159.192.246.31","MGB เข้าสู่ระบบ.","859cd041e3fe84e5e65b5c178452841f");
INSERT INTO logs VALUES("e92fd8db9cbcf3aa","2021-06-17 15:25:58","49.230.131.90","T21 เข้าสู่ระบบ.","b17177683249bb2cda3472e14d984e60");
INSERT INTO logs VALUES("1d2080969cc4334d","2021-06-17 16:34:41","101.108.79.220","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("83746a34a9270420","2021-06-17 16:36:23","101.108.79.220","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("f646fe7e06a3477f","2021-06-17 16:39:02","101.108.79.220","superadmin ออกจากระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("4ea66039d1ad2a1d","2021-06-17 16:42:20","101.108.79.220","marketing เข้าสู่ระบบ.","0049430d869cc1e24dfb88398666d959");
INSERT INTO logs VALUES("4ea66039d1ad2a1d","2021-06-17 16:42:20","101.108.79.220","marketing เข้าสู่ระบบ.","980b7ed37ca11aa01f35284afcad5dbb");
INSERT INTO logs VALUES("19be65d15b9c8fd3","2021-06-17 16:42:45","101.108.79.220","marketing เข้าสู่ระบบ.","0049430d869cc1e24dfb88398666d959");
INSERT INTO logs VALUES("19be65d15b9c8fd3","2021-06-17 16:42:45","101.108.79.220","marketing เข้าสู่ระบบ.","980b7ed37ca11aa01f35284afcad5dbb");
INSERT INTO logs VALUES("2eb2313af777aa74","2021-06-17 16:43:29","101.108.79.220","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("4510a3a6c533920d","2021-06-17 20:22:27","118.175.232.78","TMK เข้าสู่ระบบ.","451453af732f6b70835c9dcec5db3b93");
INSERT INTO logs VALUES("90dac4f2ed3ba803","2021-06-18 08:37:33","101.108.70.172","saowaruk เข้าสู่ระบบ.","5997108712eef9df6ecab22f1f3728f9");
INSERT INTO logs VALUES("df493b725eb12744","2021-06-18 10:20:27","101.108.70.172","saowaruk เข้าสู่ระบบ.","5997108712eef9df6ecab22f1f3728f9");
INSERT INTO logs VALUES("8fd773a7ac75bd08","2021-06-18 11:46:14","171.96.205.66","CR3 เข้าสู่ระบบ.","b29017088b3135c435f9c7912ec2cdb2");
INSERT INTO logs VALUES("456e2c554fee0fb5","2021-06-18 11:47:19","124.120.118.213","TMK เข้าสู่ระบบ.","451453af732f6b70835c9dcec5db3b93");
INSERT INTO logs VALUES("2f42e2b82f009685","2021-06-18 11:47:22","101.108.70.172","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("833ae8a70adda971","2021-06-18 11:51:11","49.230.215.102","TMK เข้าสู่ระบบ.","451453af732f6b70835c9dcec5db3b93");
INSERT INTO logs VALUES("dcac5fe37d78db31","2021-06-18 11:56:56","184.22.194.104","CWG เข้าสู่ระบบ.","52f2a5ca589fe4b36097dd5c55c4ac9c");
INSERT INTO logs VALUES("80ccd663ab135210","2021-06-18 12:00:13","119.76.48.168","CWG เข้าสู่ระบบ.","52f2a5ca589fe4b36097dd5c55c4ac9c");
INSERT INTO logs VALUES("9cb0b3dc71e7d9ef","2021-06-18 15:29:11","124.121.115.16","MBP เข้าสู่ระบบ.","e782c0270070c7ff34dc7984a3643741");
INSERT INTO logs VALUES("dd1dbc98f5538974","2021-06-18 16:16:06","171.96.205.66","CR3 เข้าสู่ระบบ.","b29017088b3135c435f9c7912ec2cdb2");
INSERT INTO logs VALUES("cde974629b44a705","2021-06-19 12:14:54","1.47.96.47","T21 เข้าสู่ระบบ.","b17177683249bb2cda3472e14d984e60");
INSERT INTO logs VALUES("071dad0b315dc080","2021-06-19 16:05:55","125.25.122.133","NEB เข้าสู่ระบบ.","3db564ba6fc573bad2628be5b7de4855");
INSERT INTO logs VALUES("57090f0e5ff081a5","2021-06-21 08:29:01","101.108.11.121","saowaruk เข้าสู่ระบบ.","5997108712eef9df6ecab22f1f3728f9");
INSERT INTO logs VALUES("6cb3e903627ebbd2","2021-06-21 09:21:09","101.108.8.197","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("671451419c438963","2021-06-21 10:08:08","101.108.8.197","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("786cbbcf950b2563","2021-06-21 10:47:21","58.11.80.107","marketing เข้าสู่ระบบ.","0049430d869cc1e24dfb88398666d959");
INSERT INTO logs VALUES("786cbbcf950b2563","2021-06-21 10:47:21","58.11.80.107","marketing เข้าสู่ระบบ.","980b7ed37ca11aa01f35284afcad5dbb");
INSERT INTO logs VALUES("d46d367157b811a2","2021-06-21 11:32:29","101.108.8.197","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("83846c385b97cffd","2021-06-21 11:37:10","101.108.8.197","finance เข้าสู่ระบบ.","ed6b1d41694cc31a1bc8a0f659d5faf7");
INSERT INTO logs VALUES("7054a77089e56358","2021-06-21 11:42:46","101.108.8.197","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("6fc77ba8966a44e0","2021-06-21 11:51:32","171.97.42.207","CR3 เข้าสู่ระบบ.","b29017088b3135c435f9c7912ec2cdb2");
INSERT INTO logs VALUES("0eeec548aab99e63","2021-06-21 12:07:23","125.24.78.145","TMK เข้าสู่ระบบ.","451453af732f6b70835c9dcec5db3b93");
INSERT INTO logs VALUES("b2eb4fd3da6a869b","2021-06-21 12:39:57","171.6.159.44","CDC เข้าสู่ระบบ.","b496e28463b931118820246a08cf9826");
INSERT INTO logs VALUES("f3ac130153d1e16f","2021-06-21 12:55:16","101.108.8.197","saowaruk เข้าสู่ระบบ.","5997108712eef9df6ecab22f1f3728f9");
INSERT INTO logs VALUES("fa8a4c6e6779a09d","2021-06-21 13:27:20","58.11.80.107","marketing เข้าสู่ระบบ.","0049430d869cc1e24dfb88398666d959");
INSERT INTO logs VALUES("fa8a4c6e6779a09d","2021-06-21 13:27:20","58.11.80.107","marketing เข้าสู่ระบบ.","980b7ed37ca11aa01f35284afcad5dbb");
INSERT INTO logs VALUES("e1970d38d305cebb","2021-06-21 13:38:42","101.108.8.197","saowaruk เข้าสู่ระบบ.","5997108712eef9df6ecab22f1f3728f9");
INSERT INTO logs VALUES("d6f1b03874bb10b7","2021-06-21 14:56:27","116.58.254.208","MGB เข้าสู่ระบบ.","859cd041e3fe84e5e65b5c178452841f");
INSERT INTO logs VALUES("20600f5a35b4f165","2021-06-21 15:02:28","101.108.8.197","purchase เข้าสู่ระบบ.","d5b14c346b88725387c282ac7b851ad8");
INSERT INTO logs VALUES("6bd07146ca85220d","2021-06-21 15:11:40","101.108.8.197","finance เข้าสู่ระบบ.","ed6b1d41694cc31a1bc8a0f659d5faf7");
INSERT INTO logs VALUES("c4420052428492e1","2021-06-21 15:21:22","101.108.8.197","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("005cfffa74b7360c","2021-06-22 08:20:58","101.108.8.197","saowaruk เข้าสู่ระบบ.","5997108712eef9df6ecab22f1f3728f9");
INSERT INTO logs VALUES("53e45e03a7fe84b4","2021-06-22 09:17:34","101.108.0.203","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("0722576d390ca1f8","2021-06-22 10:15:38","101.108.0.203","purchase เข้าสู่ระบบ.","d5b14c346b88725387c282ac7b851ad8");
INSERT INTO logs VALUES("5a0982a63b2c27b8","2021-06-22 12:40:51","101.108.0.203","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("9c150fc5effd61a1","2021-06-22 13:30:47","101.108.0.203","saowaruk เข้าสู่ระบบ.","5997108712eef9df6ecab22f1f3728f9");
INSERT INTO logs VALUES("9302afec35078b15","2021-06-22 15:09:09","124.121.114.68","MBP เข้าสู่ระบบ.","e782c0270070c7ff34dc7984a3643741");
INSERT INTO logs VALUES("bd9469ca2ca70e65","2021-06-22 16:09:30","125.25.122.61","TMK เข้าสู่ระบบ.","451453af732f6b70835c9dcec5db3b93");
INSERT INTO logs VALUES("c7e342c49a23a693","2021-06-22 16:52:53","101.108.0.203","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("668d7cc52cb29fb2","2021-06-22 17:16:01","223.24.171.6","T21 เข้าสู่ระบบ.","b17177683249bb2cda3472e14d984e60");
INSERT INTO logs VALUES("b881e5ee6657ce57","2021-06-23 08:14:08","101.108.0.203","saowaruk เข้าสู่ระบบ.","5997108712eef9df6ecab22f1f3728f9");
INSERT INTO logs VALUES("b190b74c4c0d836a","2021-06-23 09:56:20","1.20.201.25","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("00e4957490c07aa0","2021-06-23 10:06:16","1.20.201.25","purchase เข้าสู่ระบบ.","d5b14c346b88725387c282ac7b851ad8");
INSERT INTO logs VALUES("3f4d457e3644d2ba","2021-06-23 11:26:37","1.20.201.25","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("c575eb989c5e2e58","2021-06-23 14:23:50","1.20.201.25","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("8da450c5e5a9023c","2021-06-23 15:17:48","1.20.201.25","saowaruk เข้าสู่ระบบ.","5997108712eef9df6ecab22f1f3728f9");
INSERT INTO logs VALUES("70575d12c21ac583","2021-06-23 15:32:48","125.24.77.149","TMK เข้าสู่ระบบ.","451453af732f6b70835c9dcec5db3b93");
INSERT INTO logs VALUES("63221b2d755529e2","2021-06-23 15:46:19","171.6.10.215","CDC เข้าสู่ระบบ.","b496e28463b931118820246a08cf9826");
INSERT INTO logs VALUES("9b07bec1f206d2e7","2021-06-23 16:23:04","1.20.201.25","purchase เข้าสู่ระบบ.","d5b14c346b88725387c282ac7b851ad8");
INSERT INTO logs VALUES("ac1a5b097aeb405e","2021-06-23 16:45:44","1.20.201.25","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("ae57a3ce0096a6e9","2021-06-24 08:13:51","1.20.201.25","saowaruk เข้าสู่ระบบ.","5997108712eef9df6ecab22f1f3728f9");
INSERT INTO logs VALUES("c29fcdda3e438815","2021-06-24 08:32:32","1.20.201.25","HR เข้าสู่ระบบ.","d3cea0a13419c7b7d226a432af757ca4");
INSERT INTO logs VALUES("93f01e9c43da50fe","2021-06-24 09:22:06","1.20.185.91","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("766ca436f9df9467","2021-06-24 11:32:58","1.20.185.91","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("11df592612b28c84","2021-06-24 16:25:52","1.47.96.47","T21 เข้าสู่ระบบ.","b17177683249bb2cda3472e14d984e60");
INSERT INTO logs VALUES("3f10800dc18f2f59","2021-06-24 16:27:11","1.47.96.47","T21 เข้าสู่ระบบ.","b17177683249bb2cda3472e14d984e60");
INSERT INTO logs VALUES("e4c538fb2b5b0d15","2021-06-24 17:06:58","1.20.185.91","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("8da0064a81d36f78","2021-06-24 18:38:08","118.175.232.55","TMK เข้าสู่ระบบ.","451453af732f6b70835c9dcec5db3b93");
INSERT INTO logs VALUES("1072d9da0906827f","2021-06-24 20:55:48","124.121.185.209","CLP เข้าสู่ระบบ.","fc9c93f00e53b47b7bf01b72cd6180bd");
INSERT INTO logs VALUES("c99b7f46885c1a1d","2021-06-24 21:01:41","1.47.105.194","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("763b7b87f0e278c6","2021-06-25 08:15:02","1.20.185.91","saowaruk เข้าสู่ระบบ.","5997108712eef9df6ecab22f1f3728f9");
INSERT INTO logs VALUES("d6262a5e094202a3","2021-06-25 14:41:48","124.120.140.27","marketing เข้าสู่ระบบ.","0049430d869cc1e24dfb88398666d959");
INSERT INTO logs VALUES("d6262a5e094202a3","2021-06-25 14:41:48","124.120.140.27","marketing เข้าสู่ระบบ.","980b7ed37ca11aa01f35284afcad5dbb");
INSERT INTO logs VALUES("cc388bdf42a109ea","2021-06-25 15:39:35","1.20.139.245","saowaruk เข้าสู่ระบบ.","5997108712eef9df6ecab22f1f3728f9");
INSERT INTO logs VALUES("8a29730bcd21fd1e","2021-06-25 16:53:06","125.25.123.166","TMK เข้าสู่ระบบ.","451453af732f6b70835c9dcec5db3b93");
INSERT INTO logs VALUES("b5b4cd9fc1e08047","2021-06-25 17:19:56","1.20.139.245","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("73f249fcf55810e5","2021-06-25 17:56:46","119.76.173.171","T21 เข้าสู่ระบบ.","b17177683249bb2cda3472e14d984e60");
INSERT INTO logs VALUES("0671eef0a1bfa7c1","2021-06-26 10:23:31","49.228.227.52","SCT เข้าสู่ระบบ.","bfa7daa6736959ef0ec9b2ee01c1d656");
INSERT INTO logs VALUES("ddee9d4870e7583b","2021-06-26 14:57:07","58.8.5.138","admin เข้าสู่ระบบ.","6ccdcc01b4cbc496cab3ed0c7fb20cac");
INSERT INTO logs VALUES("9c9d150be204aba8","2021-06-26 14:58:36","58.8.5.138","admin ออกจากระบบ.","6ccdcc01b4cbc496cab3ed0c7fb20cac");
INSERT INTO logs VALUES("59e736b5c156e655","2021-06-26 14:58:39","58.8.5.138","janejira เข้าสู่ระบบ.","11c0009be8f4e977c6998edce04c9b2e");
INSERT INTO logs VALUES("1134b0cdbc22b511","2021-06-27 12:42:00","61.90.57.88","T21 เข้าสู่ระบบ.","b17177683249bb2cda3472e14d984e60");
INSERT INTO logs VALUES("83bbc248db67a57e","2021-06-28 08:29:53","1.0.215.59","saowaruk เข้าสู่ระบบ.","5997108712eef9df6ecab22f1f3728f9");
INSERT INTO logs VALUES("e66006b3a19b753a","2021-06-28 09:48:48","1.0.215.67","finance เข้าสู่ระบบ.","ed6b1d41694cc31a1bc8a0f659d5faf7");
INSERT INTO logs VALUES("208649e8ce7d8b29","2021-06-28 13:34:23","124.120.140.27","desing เข้าสู่ระบบ.","2d7a80fc55f6ff49c227852ac35fc3f5");
INSERT INTO logs VALUES("403737d818122f0e","2021-06-28 15:26:51","171.96.190.207","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("0bf93ffb869e8753","2021-06-29 08:26:21","101.108.2.232","saowaruk เข้าสู่ระบบ.","5997108712eef9df6ecab22f1f3728f9");
INSERT INTO logs VALUES("03bdbe57d68d0b31","2021-06-29 09:45:34","101.108.2.232","marketing เข้าสู่ระบบ.","0049430d869cc1e24dfb88398666d959");
INSERT INTO logs VALUES("03bdbe57d68d0b31","2021-06-29 09:45:34","101.108.2.232","marketing เข้าสู่ระบบ.","980b7ed37ca11aa01f35284afcad5dbb");
INSERT INTO logs VALUES("ae4614feace8a870","2021-06-29 09:47:03","101.108.2.232","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("edf19150c487a734","2021-06-29 10:24:28","101.108.2.232","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("e2f43594d3b58549","2021-06-29 14:14:12","101.108.2.232","finance เข้าสู่ระบบ.","ed6b1d41694cc31a1bc8a0f659d5faf7");
INSERT INTO logs VALUES("7116f1b6a194665f","2021-06-29 14:33:51","125.24.79.79","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("977bb7e38f2fb000","2021-06-29 14:43:07","125.24.79.79","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("7c5a073284ee05c1","2021-06-29 16:16:46","125.24.79.79","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("474bcf99ec0bbe6a","2021-06-29 16:40:59","101.108.2.232","purchase เข้าสู่ระบบ.","d5b14c346b88725387c282ac7b851ad8");
INSERT INTO logs VALUES("6b0197fb4395f3de","2021-06-30 11:26:05","124.122.47.141","CR3 เข้าสู่ระบบ.","b29017088b3135c435f9c7912ec2cdb2");
INSERT INTO logs VALUES("7211f716f28b3aa3","2021-06-30 11:31:15","119.76.49.183","CWG เข้าสู่ระบบ.","52f2a5ca589fe4b36097dd5c55c4ac9c");
INSERT INTO logs VALUES("39c391d3f4d05bb7","2021-06-30 11:31:22","118.175.232.240","NEB เข้าสู่ระบบ.","3db564ba6fc573bad2628be5b7de4855");
INSERT INTO logs VALUES("428d65448563d375","2021-06-30 11:51:06","101.108.2.232","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("c01cf10b1f03f2b8","2021-06-30 16:47:19","1.47.3.14","T21 เข้าสู่ระบบ.","b17177683249bb2cda3472e14d984e60");
INSERT INTO logs VALUES("574dcef2cf26eb9b","2021-07-01 00:02:07","184.82.106.64","janejira เข้าสู่ระบบ.","11c0009be8f4e977c6998edce04c9b2e");
INSERT INTO logs VALUES("191762e319c75a40","2021-07-01 08:18:54","101.108.11.38","saowaruk เข้าสู่ระบบ.","5997108712eef9df6ecab22f1f3728f9");
INSERT INTO logs VALUES("80f43c6ffbe99620","2021-07-01 16:08:35","101.108.11.38","saowaruk เข้าสู่ระบบ.","5997108712eef9df6ecab22f1f3728f9");
INSERT INTO logs VALUES("ca839f8f5f150764","2021-07-01 19:45:23","223.24.188.180","SCT เข้าสู่ระบบ.","bfa7daa6736959ef0ec9b2ee01c1d656");
INSERT INTO logs VALUES("e0a32e8c6e013875","2021-07-02 09:03:55","1.10.250.127","saowaruk เข้าสู่ระบบ.","5997108712eef9df6ecab22f1f3728f9");
INSERT INTO logs VALUES("ac7674388cd28eb1","2021-07-02 15:31:42","1.10.250.127","saowaruk เข้าสู่ระบบ.","5997108712eef9df6ecab22f1f3728f9");
INSERT INTO logs VALUES("1b7a13a8f132550e","2021-07-03 11:21:50","171.97.42.208","CR3 เข้าสู่ระบบ.","b29017088b3135c435f9c7912ec2cdb2");
INSERT INTO logs VALUES("d87d9f21a594f31f","2021-07-03 11:49:26","58.8.116.129","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("4c595cd16e3850a7","2021-07-03 15:56:56","115.87.216.34","ICS เข้าสู่ระบบ.","79ba10e5305e95e757761317a07fca37");
INSERT INTO logs VALUES("ac8b8f7af05691b6","2021-07-04 12:26:02","61.90.57.71","CTW  เข้าสู่ระบบ.","cf4178eda791cfcbd3f20efe1a1ec35a");
INSERT INTO logs VALUES("81c38e19c69ce734","2021-07-04 12:41:04","124.120.11.120","saowaruk เข้าสู่ระบบ.","5997108712eef9df6ecab22f1f3728f9");
INSERT INTO logs VALUES("e36b26846788824b","2021-07-04 14:05:55","184.82.106.64","janejira เข้าสู่ระบบ.","11c0009be8f4e977c6998edce04c9b2e");
INSERT INTO logs VALUES("735a88a966ccb581","2021-07-04 15:23:49","125.25.11.144","SCQ เข้าสู่ระบบ.","9fe4987d685fcbff9b1a3011cdd12b35");
INSERT INTO logs VALUES("20ab65f8f03bb795","2021-07-05 08:21:13","1.10.250.127","saowaruk เข้าสู่ระบบ.","5997108712eef9df6ecab22f1f3728f9");
INSERT INTO logs VALUES("2f09733322e9f22f","2021-07-05 15:08:16","1.10.250.127","saowaruk เข้าสู่ระบบ.","5997108712eef9df6ecab22f1f3728f9");
INSERT INTO logs VALUES("e1fe406c7f32f68d","2021-07-05 16:47:23","171.6.93.192","CDC เข้าสู่ระบบ.","b496e28463b931118820246a08cf9826");
INSERT INTO logs VALUES("780e14e6eefc16f5","2021-07-05 16:57:35","171.6.93.192","CDC เข้าสู่ระบบ.","b496e28463b931118820246a08cf9826");
INSERT INTO logs VALUES("bbad95bf0b76e376","2021-07-05 16:59:33","1.10.250.127","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("71b2872e89a41401","2021-07-06 08:11:58","1.10.250.127","saowaruk เข้าสู่ระบบ.","5997108712eef9df6ecab22f1f3728f9");
INSERT INTO logs VALUES("2d5447fc3c5586fb","2021-07-06 12:56:46","49.230.139.124","CDC เข้าสู่ระบบ.","b496e28463b931118820246a08cf9826");
INSERT INTO logs VALUES("44dd71afb4fbe72a","2021-07-06 12:59:47","1.10.250.127","saowaruk เข้าสู่ระบบ.","5997108712eef9df6ecab22f1f3728f9");
INSERT INTO logs VALUES("c4f29228eed87630","2021-07-06 13:14:49","1.10.250.127","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("c7427371d44d9093","2021-07-06 15:15:48","1.10.250.127","saowaruk เข้าสู่ระบบ.","5997108712eef9df6ecab22f1f3728f9");
INSERT INTO logs VALUES("88a1f3c719ad4c07","2021-07-06 17:17:03","49.230.139.124","CDC เข้าสู่ระบบ.","b496e28463b931118820246a08cf9826");
INSERT INTO logs VALUES("5f69044aa3f20471","2021-07-06 18:07:16","1.46.0.82","saowaruk เข้าสู่ระบบ.","5997108712eef9df6ecab22f1f3728f9");
INSERT INTO logs VALUES("7951990c61e4a96c","2021-07-07 10:52:06","101.108.71.97","saowaruk เข้าสู่ระบบ.","5997108712eef9df6ecab22f1f3728f9");
INSERT INTO logs VALUES("8611be72180804ac","2021-07-07 12:23:37","125.24.139.234","NEB เข้าสู่ระบบ.","3db564ba6fc573bad2628be5b7de4855");
INSERT INTO logs VALUES("48c67b1ca5ca16d4","2021-07-07 12:28:11","1.46.130.116","ICS เข้าสู่ระบบ.","79ba10e5305e95e757761317a07fca37");
INSERT INTO logs VALUES("d80f9d53870a7eb0","2021-07-07 12:38:19","101.108.71.97","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("7b14b458b9deb215","2021-07-07 13:19:53","101.108.71.97","purchase เข้าสู่ระบบ.","d5b14c346b88725387c282ac7b851ad8");
INSERT INTO logs VALUES("b595984c675f3d35","2021-07-07 13:20:48","223.24.189.253","SV เข้าสู่ระบบ.","6134ff997b6f5c7e403dc701c7b2cec9");
INSERT INTO logs VALUES("c4b1a3f5efc86d27","2021-07-07 16:18:07","1.4.172.164","SCQ เข้าสู่ระบบ.","9fe4987d685fcbff9b1a3011cdd12b35");
INSERT INTO logs VALUES("ea6d9cbfbedee20b","2021-07-07 16:40:59","101.108.71.97","saowaruk เข้าสู่ระบบ.","5997108712eef9df6ecab22f1f3728f9");
INSERT INTO logs VALUES("847be81d02b3765f","2021-07-07 17:10:35","101.108.71.97","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("78efdbbfd5e88955","2021-07-08 08:29:14","184.22.97.125","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("7c62df0b412889d8","2021-07-08 08:46:28","184.22.97.125","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("f825c7f7a075cc77","2021-07-09 08:21:35","101.108.6.160","saowaruk เข้าสู่ระบบ.","5997108712eef9df6ecab22f1f3728f9");
INSERT INTO logs VALUES("02c457a5f3d352da","2021-07-09 10:11:37","184.22.97.125","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("9353e519032dc196","2021-07-09 10:49:26","171.97.42.208","CR3 เข้าสู่ระบบ.","b29017088b3135c435f9c7912ec2cdb2");
INSERT INTO logs VALUES("1a67833f6195ee14","2021-07-09 11:53:03","171.97.42.208","CR3 เข้าสู่ระบบ.","b29017088b3135c435f9c7912ec2cdb2");
INSERT INTO logs VALUES("5db29249cc397fc5","2021-07-09 11:55:18","171.97.42.208","CR3 ออกจากระบบ.","b29017088b3135c435f9c7912ec2cdb2");
INSERT INTO logs VALUES("ed7f9f1216c17f12","2021-07-09 11:55:26","171.97.42.208","CR3 เข้าสู่ระบบ.","b29017088b3135c435f9c7912ec2cdb2");
INSERT INTO logs VALUES("9375104eaaba4b68","2021-07-09 11:55:32","171.97.42.208","CR3 ออกจากระบบ.","b29017088b3135c435f9c7912ec2cdb2");
INSERT INTO logs VALUES("ec29a49daa247301","2021-07-09 11:55:37","171.97.42.208","CR3 เข้าสู่ระบบ.","b29017088b3135c435f9c7912ec2cdb2");
INSERT INTO logs VALUES("2af05cb7b908093f","2021-07-09 11:55:46","171.97.42.208","CR3 ออกจากระบบ.","b29017088b3135c435f9c7912ec2cdb2");
INSERT INTO logs VALUES("59634db917f4b820","2021-07-09 11:55:52","171.97.42.208","CR3 เข้าสู่ระบบ.","b29017088b3135c435f9c7912ec2cdb2");
INSERT INTO logs VALUES("a232c31b401ecb1e","2021-07-09 12:07:21","49.230.21.85","CR3 เข้าสู่ระบบ.","b29017088b3135c435f9c7912ec2cdb2");
INSERT INTO logs VALUES("3c0d8cec8be7b657","2021-07-11 13:47:56","171.97.19.150","CCW เข้าสู่ระบบ.","06ac11af0ac13b221a953bfb54ecaa92");
INSERT INTO logs VALUES("1efa561590323175","2021-07-11 13:57:56","49.228.202.108","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("97ee5ccb14052891","2021-07-11 14:06:29","49.228.202.108","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("717f855c72b12f18","2021-07-11 15:09:22","1.20.162.209","NGS เข้าสู่ระบบ.","6809f49f86586a97cb888adc3119668b");
INSERT INTO logs VALUES("ba1261c22e5a9fb4","2021-07-11 15:23:42","1.20.162.209","NGS ออกจากระบบ.","6809f49f86586a97cb888adc3119668b");
INSERT INTO logs VALUES("fefaba035ef7aa64","2021-07-11 15:53:19","49.228.202.108","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("eaaab2a4537ba5a5","2021-07-11 16:22:26","182.232.161.163","CDC เข้าสู่ระบบ.","b496e28463b931118820246a08cf9826");
INSERT INTO logs VALUES("52ef46157c6b21f2","2021-07-13 08:07:07","124.120.3.98","saowaruk เข้าสู่ระบบ.","5997108712eef9df6ecab22f1f3728f9");
INSERT INTO logs VALUES("eb75ea6fd6a05f2a","2021-07-14 09:25:39","124.120.10.112","saowaruk เข้าสู่ระบบ.","5997108712eef9df6ecab22f1f3728f9");
INSERT INTO logs VALUES("08ba87e49e57f1a4","2021-07-14 10:12:27","171.97.99.38","janejira เข้าสู่ระบบ.","11c0009be8f4e977c6998edce04c9b2e");
INSERT INTO logs VALUES("c30dedaffb5ca9c0","2021-07-14 10:51:47","101.108.8.91","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("7c56008ad06f6e5b","2021-07-14 12:02:05","171.99.152.73","finance เข้าสู่ระบบ.","ed6b1d41694cc31a1bc8a0f659d5faf7");
INSERT INTO logs VALUES("51dc384111e467eb","2021-07-14 13:34:19","124.120.213.30","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("a3785e4bbbe9ee56","2021-07-14 14:33:55","101.108.8.91","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("42fe8336864d0ac5","2021-07-15 11:18:05","110.171.21.233","CBN เข้าสู่ระบบ.","9aa946d6abfcb4cfc9ee258593eff00f");
INSERT INTO logs VALUES("b1798da2dbfa2f97","2021-07-15 11:27:06","49.228.202.108","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("658e33746c0916e7","2021-07-16 08:03:11","124.120.10.112","saowaruk เข้าสู่ระบบ.","5997108712eef9df6ecab22f1f3728f9");
INSERT INTO logs VALUES("b6acd44a24e650f9","2021-07-16 09:14:02","124.120.10.112","saowaruk เข้าสู่ระบบ.","5997108712eef9df6ecab22f1f3728f9");
INSERT INTO logs VALUES("5ec0f023759df3ce","2021-07-16 12:45:05","125.24.138.22","NEB เข้าสู่ระบบ.","3db564ba6fc573bad2628be5b7de4855");
INSERT INTO logs VALUES("40f30b52cd2f521e","2021-07-16 16:44:54","124.120.10.112"," ออกจากระบบ.","");
INSERT INTO logs VALUES("83e5e4b2db625c4c","2021-07-17 10:23:51","1.46.154.46","CLP เข้าสู่ระบบ.","fc9c93f00e53b47b7bf01b72cd6180bd");
INSERT INTO logs VALUES("90a55d164dd3e13c","2021-07-17 11:00:31","49.228.168.237","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("6a859ac99d432eab","2021-07-18 14:42:52","182.232.145.177","HR เข้าสู่ระบบ.","d3cea0a13419c7b7d226a432af757ca4");
INSERT INTO logs VALUES("6e919b28ec0d6c97","2021-07-19 08:17:14","124.120.10.112","saowaruk เข้าสู่ระบบ.","5997108712eef9df6ecab22f1f3728f9");
INSERT INTO logs VALUES("8b44af072bfee133","2021-07-19 08:41:28","111.223.34.153","finance เข้าสู่ระบบ.","ed6b1d41694cc31a1bc8a0f659d5faf7");
INSERT INTO logs VALUES("16a133760c981290","2021-07-19 08:44:40","49.228.168.237","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("ec875db23289d242","2021-07-19 08:46:56","49.228.168.237","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("90d5d0cb6bc6a622","2021-07-19 12:58:32","124.120.10.112","saowaruk เข้าสู่ระบบ.","5997108712eef9df6ecab22f1f3728f9");
INSERT INTO logs VALUES("fc2391e56a7d5265","2021-07-19 14:19:53","124.121.113.198","MBP เข้าสู่ระบบ.","e782c0270070c7ff34dc7984a3643741");
INSERT INTO logs VALUES("f606da8855d8b4e7","2021-07-19 16:21:55","124.120.10.112","saowaruk เข้าสู่ระบบ.","5997108712eef9df6ecab22f1f3728f9");
INSERT INTO logs VALUES("4ed8b6a487a9e29a","2021-07-21 15:02:48","101.108.71.91","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("d9bb3e388bf2dd80","2021-07-22 13:22:20","171.99.162.2","saowaruk เข้าสู่ระบบ.","5997108712eef9df6ecab22f1f3728f9");
INSERT INTO logs VALUES("922a2b3cd6623009","2021-07-22 13:37:01","171.6.158.121","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("943830b57bbb614e","2021-07-22 15:29:47","49.228.148.206","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("b6cfc2b2a3cff6fa","2021-07-23 08:32:59","171.99.162.2","saowaruk เข้าสู่ระบบ.","5997108712eef9df6ecab22f1f3728f9");
INSERT INTO logs VALUES("f9eb02b6d386bb2e","2021-07-24 09:23:36","27.55.81.82","SV เข้าสู่ระบบ.","6134ff997b6f5c7e403dc701c7b2cec9");
INSERT INTO logs VALUES("cd4ea75dac8b31af","2021-07-24 11:21:53","49.228.148.206","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("ee73d43ab201b462","2021-07-24 11:47:00","49.228.148.206","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("8393f39f92fe0083","2021-07-24 21:18:09","171.99.162.2","saowaruk เข้าสู่ระบบ.","5997108712eef9df6ecab22f1f3728f9");
INSERT INTO logs VALUES("cfcfd5c848ed2752","2021-07-29 08:49:03","101.108.15.220","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("7614e3571a1a3bb5","2021-07-29 10:43:27","49.230.134.81","HR เข้าสู่ระบบ.","d3cea0a13419c7b7d226a432af757ca4");
INSERT INTO logs VALUES("731a9913a0289ba8","2021-07-29 10:56:21","101.108.15.220","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("8ae92c5f4ebda291","2021-07-29 10:58:05","101.108.15.220","saowaruk เข้าสู่ระบบ.","5997108712eef9df6ecab22f1f3728f9");
INSERT INTO logs VALUES("4ad5c600531c5e99","2021-07-29 11:41:21","101.108.15.220","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("c664f602ec5e2098","2021-07-29 12:56:07","49.230.107.231","HR เข้าสู่ระบบ.","d3cea0a13419c7b7d226a432af757ca4");
INSERT INTO logs VALUES("19b4d6f83dad316c","2021-07-29 13:09:55","101.108.15.220","account เข้าสู่ระบบ.","3ae8086fb05d3435d3dcd9cd1565a454");
INSERT INTO logs VALUES("f8e8cfc3661ca7dc","2021-07-29 17:21:15","101.108.15.220","saowaruk ออกจากระบบ.","5997108712eef9df6ecab22f1f3728f9");
INSERT INTO logs VALUES("9daee61f76eaebbc","2021-07-30 08:32:24","171.100.25.184","saowaruk เข้าสู่ระบบ.","5997108712eef9df6ecab22f1f3728f9");
INSERT INTO logs VALUES("e3a58dc9ccb5f7a8","2021-08-03 08:50:09","171.99.162.221","saowaruk เข้าสู่ระบบ.","5997108712eef9df6ecab22f1f3728f9");
INSERT INTO logs VALUES("12950db4d292e643","2021-08-03 16:32:09","171.99.162.221","saowaruk เข้าสู่ระบบ.","5997108712eef9df6ecab22f1f3728f9");
INSERT INTO logs VALUES("fdbd9110e1ebcf40","2021-08-04 08:41:18","49.228.151.123","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("e263ccf386a08323","2021-08-04 13:02:17","182.232.197.147","CPK เข้าสู่ระบบ.","cec9ac90af27b74546e22910bdc5bfff");
INSERT INTO logs VALUES("73f469ae2b950b08","2021-08-04 13:07:06","182.232.197.147","CPK เข้าสู่ระบบ.","cec9ac90af27b74546e22910bdc5bfff");
INSERT INTO logs VALUES("02c909bc3fb6f03e","2021-08-04 13:39:51","49.228.151.123","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("78093c5378902ac4","2021-08-05 08:56:37","1.20.107.164","HR เข้าสู่ระบบ.","d3cea0a13419c7b7d226a432af757ca4");
INSERT INTO logs VALUES("a089d58bc9720459","2021-08-05 08:57:27","171.99.162.221","saowaruk เข้าสู่ระบบ.","5997108712eef9df6ecab22f1f3728f9");
INSERT INTO logs VALUES("bedd98ab065c3d65","2021-08-05 12:39:06","182.232.188.25","T21 เข้าสู่ระบบ.","b17177683249bb2cda3472e14d984e60");
INSERT INTO logs VALUES("2137d5bd66702ce3","2021-08-05 13:04:34","184.82.102.111","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("a89304956496aee4","2021-08-06 08:49:51","1.20.107.164","saowaruk เข้าสู่ระบบ.","5997108712eef9df6ecab22f1f3728f9");
INSERT INTO logs VALUES("8cb27a2dd9ad1a68","2021-08-06 10:30:49","1.20.107.164","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("fa2fce8a2c20621a","2021-08-06 11:35:59","1.20.107.164","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("7c9905c00b1eab5e","2021-08-06 11:39:22","1.20.107.164","saowaruk เข้าสู่ระบบ.","5997108712eef9df6ecab22f1f3728f9");
INSERT INTO logs VALUES("41f3cf2d229dc4b5","2021-08-09 09:08:48","182.232.139.69","marketing เข้าสู่ระบบ.","0049430d869cc1e24dfb88398666d959");
INSERT INTO logs VALUES("41f3cf2d229dc4b5","2021-08-09 09:08:48","182.232.139.69","marketing เข้าสู่ระบบ.","980b7ed37ca11aa01f35284afcad5dbb");
INSERT INTO logs VALUES("5aace25ef1efb10c","2021-08-09 09:12:17","49.228.149.27","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("ecccbf1b054370e2","2021-08-09 14:08:46","101.108.65.186","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("69d1b2cd30535a0a","2021-08-09 16:08:42","101.108.65.186","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("19b819c04947dbe2","2021-08-09 17:35:22","115.87.117.226","PMN เข้าสู่ระบบ.","696d924c3decaabd113b928b63cb8e9e");
INSERT INTO logs VALUES("a441a319470b9b6f","2021-08-09 17:39:55","49.228.149.27","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("b8e66a3ff3ec643c","2021-08-09 17:47:14","49.228.149.27","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("83a095ebb90a491c","2021-08-09 18:13:24","125.25.123.88","TMK เข้าสู่ระบบ.","451453af732f6b70835c9dcec5db3b93");
INSERT INTO logs VALUES("b063af43774f4477","2021-08-10 16:23:31","101.108.78.77","saowaruk เข้าสู่ระบบ.","5997108712eef9df6ecab22f1f3728f9");
INSERT INTO logs VALUES("34b8b5978af3d434","2021-08-10 16:27:45","101.108.78.77","saowaruk ออกจากระบบ.","5997108712eef9df6ecab22f1f3728f9");
INSERT INTO logs VALUES("4b34643a2f1080ee","2021-08-11 09:09:28","171.99.162.101","saowaruk เข้าสู่ระบบ.","5997108712eef9df6ecab22f1f3728f9");
INSERT INTO logs VALUES("d628cf1709da9849","2021-08-11 11:47:02","223.24.166.173","CRP เข้าสู่ระบบ.","9cc29e8c2b924de0fd3ef55737a159c0");
INSERT INTO logs VALUES("0b27f8e799aada75","2021-08-11 12:48:31","223.24.166.173","CRP เข้าสู่ระบบ.","9cc29e8c2b924de0fd3ef55737a159c0");
INSERT INTO logs VALUES("b6c28eebff881164","2021-08-11 13:11:48","115.87.222.27","ICS เข้าสู่ระบบ.","79ba10e5305e95e757761317a07fca37");
INSERT INTO logs VALUES("1f98e6aa19a98dc8","2021-08-11 13:16:45","49.228.149.27","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("3968b94b95ea8e7e","2021-08-11 15:10:28","49.228.186.213","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("bd22d79b693bc345","2021-08-11 15:34:26","49.228.149.27","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("d8ee99c92f432ddd","2021-08-11 15:35:32","171.99.162.101","saowaruk เข้าสู่ระบบ.","5997108712eef9df6ecab22f1f3728f9");
INSERT INTO logs VALUES("9ab8b38229ecdb97","2021-08-12 18:39:52","58.8.255.164","T21 เข้าสู่ระบบ.","b17177683249bb2cda3472e14d984e60");
INSERT INTO logs VALUES("a78d9d52853b5edf","2021-08-12 19:05:15","49.228.149.27","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("c7db284aff615a28","2021-08-12 19:41:59","49.228.149.27","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("a2b630bcf77a5bca","2021-08-13 08:54:43","58.8.77.152","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("a8ea5170306b561a","2021-08-13 09:00:28","58.8.77.152","CCW เข้าสู่ระบบ.","06ac11af0ac13b221a953bfb54ecaa92");
INSERT INTO logs VALUES("f7f86ac49dc5f954","2021-08-13 09:00:41","58.8.77.152","CWG เข้าสู่ระบบ.","52f2a5ca589fe4b36097dd5c55c4ac9c");
INSERT INTO logs VALUES("170a7de55c896669","2021-08-13 09:01:47","58.8.77.152","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("8dc7d602f6c62c6e","2021-08-13 10:06:54","58.8.77.152","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("82486c172bd60f23","2021-08-13 11:12:55","58.8.77.152","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("47d71ad48f24b107","2021-08-13 12:04:58","58.8.255.40","T21 เข้าสู่ระบบ.","b17177683249bb2cda3472e14d984e60");
INSERT INTO logs VALUES("4e9cdea1ea68002f","2021-08-13 12:11:46","49.228.149.27","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("26cc1d1c88693519","2021-08-13 12:28:36","125.24.166.82","HR เข้าสู่ระบบ.","d3cea0a13419c7b7d226a432af757ca4");
INSERT INTO logs VALUES("835efdffb32e7415","2021-08-13 12:51:43","58.8.77.152","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("2174e8abadbd85e9","2021-08-13 12:57:37","125.24.166.82","HR ออกจากระบบ.","d3cea0a13419c7b7d226a432af757ca4");
INSERT INTO logs VALUES("3ec7a427a16e8bf4","2021-08-13 13:33:33","49.228.149.27","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("8dafc2c702a1be28","2021-08-13 14:00:00","171.97.19.148","CCW เข้าสู่ระบบ.","06ac11af0ac13b221a953bfb54ecaa92");
INSERT INTO logs VALUES("131d9557455f1d4b","2021-08-13 14:00:19","171.97.19.148","CCW เข้าสู่ระบบ.","06ac11af0ac13b221a953bfb54ecaa92");
INSERT INTO logs VALUES("683c033c68490292","2021-08-13 14:04:58","49.228.149.27","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("9a4e243e53c7a606","2021-08-13 16:06:42","171.99.152.20","HR เข้าสู่ระบบ.","d3cea0a13419c7b7d226a432af757ca4");
INSERT INTO logs VALUES("616394022a1cbdd9","2021-08-13 16:19:37","49.228.149.27","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("bb063fdf7641963a","2021-08-14 11:47:13","184.22.85.171","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("ea3b5fef068ef931","2021-08-14 12:02:56","184.22.85.171","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("23d4249840b7b595","2021-08-14 14:27:44","125.24.76.206","SV เข้าสู่ระบบ.","6134ff997b6f5c7e403dc701c7b2cec9");
INSERT INTO logs VALUES("320992d15d7805d3","2021-08-14 14:33:13","184.22.85.171","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("4ee480688b28bb05","2021-08-14 14:35:44","171.100.25.166","saowaruk เข้าสู่ระบบ.","5997108712eef9df6ecab22f1f3728f9");
INSERT INTO logs VALUES("cc157439f6e7ff54","2021-08-14 16:41:30","184.22.85.171","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("239cba5bed7d242f","2021-08-14 21:23:47","184.82.234.95","HR เข้าสู่ระบบ.","d3cea0a13419c7b7d226a432af757ca4");
INSERT INTO logs VALUES("5a5bf78450f01f6c","2021-08-14 21:25:08","184.82.234.95","HR ออกจากระบบ.","d3cea0a13419c7b7d226a432af757ca4");
INSERT INTO logs VALUES("78069baa602163a6","2021-08-16 07:52:46","124.120.34.77","SV เข้าสู่ระบบ.","6134ff997b6f5c7e403dc701c7b2cec9");
INSERT INTO logs VALUES("b6f2028a9adf0582","2021-08-16 07:59:09","171.100.25.166","saowaruk เข้าสู่ระบบ.","5997108712eef9df6ecab22f1f3728f9");
INSERT INTO logs VALUES("9ecffa0b3c013480","2021-08-16 08:57:25","171.100.25.166","saowaruk เข้าสู่ระบบ.","5997108712eef9df6ecab22f1f3728f9");
INSERT INTO logs VALUES("2b1344681c0b3bb7","2021-08-16 09:29:29","58.8.77.152","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("bad301e650266afa","2021-08-16 10:04:40","101.108.5.13","SV เข้าสู่ระบบ.","6134ff997b6f5c7e403dc701c7b2cec9");
INSERT INTO logs VALUES("4935cf12d5297be0","2021-08-16 10:07:36","58.8.77.152","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("13ae644dba9df336","2021-08-16 12:04:27","184.22.85.171","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("cae1b7a7ead31fcf","2021-08-16 14:51:07","171.96.225.248","CLP เข้าสู่ระบบ.","fc9c93f00e53b47b7bf01b72cd6180bd");
INSERT INTO logs VALUES("8ef6864646328182","2021-08-16 14:56:28","171.100.25.166","saowaruk เข้าสู่ระบบ.","5997108712eef9df6ecab22f1f3728f9");
INSERT INTO logs VALUES("0a268a73ee8ef946","2021-08-16 14:57:29","58.8.77.152","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("8f66d273025ff8e5","2021-08-16 19:12:39","223.24.152.73","ZPE เข้าสู่ระบบ.","8af593251cd53494bf4f6cd658351815");
INSERT INTO logs VALUES("7d13f3926eb0fe8a","2021-08-16 19:20:24","223.24.190.58","ZPE เข้าสู่ระบบ.","8af593251cd53494bf4f6cd658351815");
INSERT INTO logs VALUES("7bf0287c048801d6","2021-08-16 19:42:06","58.8.77.152","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("77a69969a8544912","2021-08-17 08:12:24","171.100.25.166","saowaruk เข้าสู่ระบบ.","5997108712eef9df6ecab22f1f3728f9");
INSERT INTO logs VALUES("7c65c01903bc3658","2021-08-17 13:31:52","61.90.2.216","T21 เข้าสู่ระบบ.","b17177683249bb2cda3472e14d984e60");
INSERT INTO logs VALUES("fee7b3e41b0803db","2021-08-17 13:33:33","49.228.185.107","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("2dd4cc02c76dda53","2021-08-17 18:22:34","124.121.30.136","CCW เข้าสู่ระบบ.","06ac11af0ac13b221a953bfb54ecaa92");
INSERT INTO logs VALUES("0fbd3abd517b5e3b","2021-08-17 18:26:36","49.228.185.107","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("78ac23565b830ea4","2021-08-17 18:38:56","49.228.185.107","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("8bdc3ad5a6cd74c0","2021-08-18 08:00:56","49.230.224.62","SCT เข้าสู่ระบบ.","bfa7daa6736959ef0ec9b2ee01c1d656");
INSERT INTO logs VALUES("8d2d7a1b0c5b44a0","2021-08-18 08:01:25","49.230.224.62","SCP เข้าสู่ระบบ.","7611717e7dfb53c91a776dcd505f9802");
INSERT INTO logs VALUES("c746114c5ef8bf5a","2021-08-18 08:17:03","171.100.25.166","saowaruk เข้าสู่ระบบ.","5997108712eef9df6ecab22f1f3728f9");
INSERT INTO logs VALUES("b12bc936ed1cb7a8","2021-08-18 11:21:44","171.97.202.169","T21 เข้าสู่ระบบ.","b17177683249bb2cda3472e14d984e60");
INSERT INTO logs VALUES("6fb3ade6659476fe","2021-08-18 14:18:53","171.100.25.166","saowaruk เข้าสู่ระบบ.","5997108712eef9df6ecab22f1f3728f9");
INSERT INTO logs VALUES("7ec492e9cf33adc9","2021-08-18 14:19:17","115.87.222.66","ICS เข้าสู่ระบบ.","79ba10e5305e95e757761317a07fca37");
INSERT INTO logs VALUES("91bcec4b9f6dc159","2021-08-18 14:32:10","125.24.170.241","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("fab9500412580b4b","2021-08-18 15:01:44","171.100.25.166","saowaruk เข้าสู่ระบบ.","5997108712eef9df6ecab22f1f3728f9");
INSERT INTO logs VALUES("9a11849356ee25aa","2021-08-18 15:03:22","58.8.77.152","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("a6014f7595aa8d87","2021-08-18 15:05:02","125.24.170.241","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("f4f231823ee21a93","2021-08-18 15:07:11","58.8.77.152","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("0508b9dee023563d","2021-08-18 15:48:34","119.76.34.37","admin เข้าสู่ระบบ.","6ccdcc01b4cbc496cab3ed0c7fb20cac");
INSERT INTO logs VALUES("33c6984fef8466e1","2021-08-18 15:48:48","119.76.34.37","admin ออกจากระบบ.","6ccdcc01b4cbc496cab3ed0c7fb20cac");
INSERT INTO logs VALUES("613c47bd9abc30c0","2021-08-18 16:02:24","119.76.34.37","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("3e7857e6c3a349a9","2021-08-18 16:07:10","119.76.34.37","superadmin ออกจากระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("583f1fffbf8b31ff","2021-08-19 09:30:19","101.108.99.143","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("60a5df2280057df2","2021-08-19 10:33:14","58.11.55.19","CR3 เข้าสู่ระบบ.","b29017088b3135c435f9c7912ec2cdb2");
INSERT INTO logs VALUES("48eb48aafe7ac6f5","2021-08-19 10:36:18","58.11.55.19","CR3 เข้าสู่ระบบ.","b29017088b3135c435f9c7912ec2cdb2");
INSERT INTO logs VALUES("cea46ea5c64dab56","2021-08-19 10:46:19","58.11.55.19","CR3 เข้าสู่ระบบ.","b29017088b3135c435f9c7912ec2cdb2");
INSERT INTO logs VALUES("d3d07f7740b0d79a","2021-08-19 13:25:56","58.11.80.201","saowaruk เข้าสู่ระบบ.","5997108712eef9df6ecab22f1f3728f9");
INSERT INTO logs VALUES("fb4acace78542a19","2021-08-19 13:35:14","58.11.80.201","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("2340b61fc3e73891","2021-08-19 14:26:39","125.24.167.175","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("03cebcce6e36e9d2","2021-08-19 14:27:41","58.11.80.201","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("ec481b539e874c6e","2021-08-19 14:31:19","125.24.167.175","HR เข้าสู่ระบบ.","d3cea0a13419c7b7d226a432af757ca4");
INSERT INTO logs VALUES("c084b78eebe0957a","2021-08-19 14:33:18","125.24.167.175","HR ออกจากระบบ.","d3cea0a13419c7b7d226a432af757ca4");
INSERT INTO logs VALUES("fe88667f22f113ee","2021-08-19 14:33:23","184.82.103.240","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("f4beda029df7eb5b","2021-08-19 14:39:23","125.24.167.175","superadmin ออกจากระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("4cd545b0fcd2e669","2021-08-19 14:39:27","125.24.167.175","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("8789a484150bbc10","2021-08-19 15:14:38","125.24.167.175","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("09996782ed4b2920","2021-08-19 15:16:20","223.24.158.11","SV เข้าสู่ระบบ.","6134ff997b6f5c7e403dc701c7b2cec9");
INSERT INTO logs VALUES("2e601558d946a402","2021-08-19 15:18:10","125.24.167.175","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("f84391eca27c462d","2021-08-19 17:13:24","113.53.123.108","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("58fb9af5f9b33ccf","2021-08-20 09:10:22","171.100.25.166","saowaruk เข้าสู่ระบบ.","5997108712eef9df6ecab22f1f3728f9");
INSERT INTO logs VALUES("0fc155d54c8ca8a7","2021-08-20 09:34:13","119.76.1.254","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("0ee71318de675658","2021-08-20 11:04:23","49.228.187.11","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("07d87da5ee149708","2021-08-20 12:07:59","49.228.187.11","pattapee เข้าสู่ระบบ.","f21ada1d50ad6673ce1efb578513ead6");
INSERT INTO logs VALUES("421174757964a1ce","2021-08-20 12:55:52","119.76.34.37","admin เข้าสู่ระบบ.","6ccdcc01b4cbc496cab3ed0c7fb20cac");
INSERT INTO logs VALUES("d428dbd3be61a37d","2021-08-20 12:56:06","119.76.34.37","admin ออกจากระบบ.","6ccdcc01b4cbc496cab3ed0c7fb20cac");
INSERT INTO logs VALUES("7e9546f9734781d7","2021-08-20 17:02:00","171.100.25.166","saowaruk ออกจากระบบ.","5997108712eef9df6ecab22f1f3728f9");
INSERT INTO logs VALUES("08ca0caa8af38b12","2021-08-20 22:08:25","119.76.1.254","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("e4a02efa6c5f1b23","2021-08-20 22:08:37","119.76.1.254","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("ce7b5fba593c5b20","2021-08-21 00:24:23","119.76.1.254","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("b9e36dd82eb9572e","2021-08-21 01:09:44","119.76.1.254","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("37ca27c7cd6282a8","2021-08-21 01:17:32","119.76.1.254","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("db3605011f2f5a23","2021-08-21 01:59:59","119.76.1.254","superadmin ออกจากระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("0cb10a775ad73b3f","2021-08-21 02:00:03","119.76.1.254","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");



# Dump of logs_keep 
# Dump DATE : 21-Aug-2021

DROP TABLE IF EXISTS logs_keep;
CREATE TABLE logs_keep (
  ls_key char(150) NOT NULL,
  ls_text varchar(150) NOT NULL,
  ls_user varchar(150) NOT NULL,
  ls_date timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



INSERT INTO logs_keep VALUES("6c3b376a40c8ab7c","ค้นหารายการแยกตามอุปกรณ์","ce63f18f7cf0a712fd4a2f47bc9ae14c","2020-12-23 03:20:28");
INSERT INTO logs_keep VALUES("d1b1557b2c8975bc","ออกรายงานสินทรัพย์ IT","ce63f18f7cf0a712fd4a2f47bc9ae14c","2020-12-23 03:20:34");
INSERT INTO logs_keep VALUES("d9a24340c40cf91b","ออกรายงานสินทรัพย์ IT","ce63f18f7cf0a712fd4a2f47bc9ae14c","2020-12-24 00:43:13");
INSERT INTO logs_keep VALUES("5c746f571d6b8415","ค้นหารายการที่ใช้งานอยู่","ce63f18f7cf0a712fd4a2f47bc9ae14c","2020-12-30 08:31:02");
INSERT INTO logs_keep VALUES("98f04f9e53009b2f","ค้นหารายการที่ใช้งานอยู่","ce63f18f7cf0a712fd4a2f47bc9ae14c","2020-12-30 08:31:05");
INSERT INTO logs_keep VALUES("8e65bc2a9ee1420e","ค้นหารายการที่ใช้งานอยู่","ce63f18f7cf0a712fd4a2f47bc9ae14c","2021-01-13 00:44:06");
INSERT INTO logs_keep VALUES("ae85fc23e9cfb042","ออกรายงานแจ้งซ่อม","9c087e62260bb920a27f22951ccb8e6e","2021-01-13 01:26:37");
INSERT INTO logs_keep VALUES("fed196a8bb3edfb1","ออกรายงานแจ้งซ่อม","9c087e62260bb920a27f22951ccb8e6e","2021-01-13 01:28:14");
INSERT INTO logs_keep VALUES("e3e943c47a97f848","ออกรายงานแจ้งซ่อม","ce63f18f7cf0a712fd4a2f47bc9ae14c","2021-01-13 13:58:44");
INSERT INTO logs_keep VALUES("5d3f8784ed09c7f2","ค้นหารายการที่ใช้งานอยู่","11c0009be8f4e977c6998edce04c9b2e","2021-01-13 14:17:23");
INSERT INTO logs_keep VALUES("7dd3ab8cabe29a8b","ออกรายงานแจ้งซ่อม","ce63f18f7cf0a712fd4a2f47bc9ae14c","2021-01-13 15:48:27");
INSERT INTO logs_keep VALUES("b32590fde6bc922a","ค้นหารายการที่ใช้งานอยู่","ce63f18f7cf0a712fd4a2f47bc9ae14c","2021-01-13 15:49:27");
INSERT INTO logs_keep VALUES("8809876aeaba5308","ออกรายงานสินทรัพย์ IT","ce63f18f7cf0a712fd4a2f47bc9ae14c","2021-01-13 15:51:33");
INSERT INTO logs_keep VALUES("a694495ec6fb9b30","ออกรายงานแจ้งซ่อม","ce63f18f7cf0a712fd4a2f47bc9ae14c","2021-01-13 15:53:23");
INSERT INTO logs_keep VALUES("abf6e9a9e23c2849","ค้นหารายการที่ใช้งานอยู่","ce63f18f7cf0a712fd4a2f47bc9ae14c","2021-01-13 15:54:00");
INSERT INTO logs_keep VALUES("3c2d8fe7c4e66d08","ค้นหารายการที่ใช้งานอยู่","11c0009be8f4e977c6998edce04c9b2e","2021-01-13 16:16:06");
INSERT INTO logs_keep VALUES("c6d2f3d64ecb7c51","ออกรายงานสินทรัพย์ IT","ce63f18f7cf0a712fd4a2f47bc9ae14c","2021-01-13 16:20:22");
INSERT INTO logs_keep VALUES("9481e626867ebf97","ออกรายงานแจ้งซ่อม","ce63f18f7cf0a712fd4a2f47bc9ae14c","2021-01-13 17:14:55");
INSERT INTO logs_keep VALUES("4aeb0ab06ab3bf74","ค้นหารายการแยกตามอุปกรณ์","ce63f18f7cf0a712fd4a2f47bc9ae14c","2021-01-14 09:21:12");
INSERT INTO logs_keep VALUES("b468c1580b5e7906","ออกรายงานแจ้งซ่อม","ce63f18f7cf0a712fd4a2f47bc9ae14c","2021-01-17 16:21:29");
INSERT INTO logs_keep VALUES("84fa192a32e95d14","ออกรายงานแจ้งซ่อม","ce63f18f7cf0a712fd4a2f47bc9ae14c","2021-01-17 16:28:49");
INSERT INTO logs_keep VALUES("ab61829533e5aeb9","ออกรายงานแจ้งซ่อม","ce63f18f7cf0a712fd4a2f47bc9ae14c","2021-01-17 16:28:57");
INSERT INTO logs_keep VALUES("b3e80244f61bd293","ออกรายงานแจ้งซ่อม","ce63f18f7cf0a712fd4a2f47bc9ae14c","2021-01-17 16:29:00");
INSERT INTO logs_keep VALUES("cfd1eed6f259298d","ออกรายงานแจ้งซ่อม","ce63f18f7cf0a712fd4a2f47bc9ae14c","2021-01-17 16:29:07");
INSERT INTO logs_keep VALUES("2a86d950b6787d71","ออกรายงานแจ้งซ่อม","ce63f18f7cf0a712fd4a2f47bc9ae14c","2021-01-17 16:29:15");
INSERT INTO logs_keep VALUES("739293ff26830599","ออกรายงานแจ้งซ่อม","ce63f18f7cf0a712fd4a2f47bc9ae14c","2021-01-17 16:31:10");
INSERT INTO logs_keep VALUES("dfb7b6d95a124d66","ออกรายงานแจ้งซ่อม","ce63f18f7cf0a712fd4a2f47bc9ae14c","2021-01-17 16:31:14");
INSERT INTO logs_keep VALUES("23f74cb512bbd5ed","ออกรายงานแจ้งซ่อม","ce63f18f7cf0a712fd4a2f47bc9ae14c","2021-01-17 16:31:18");
INSERT INTO logs_keep VALUES("4f7a53a8f8046679","ออกรายงานแจ้งซ่อม","ce63f18f7cf0a712fd4a2f47bc9ae14c","2021-01-17 16:31:31");
INSERT INTO logs_keep VALUES("57f070f53c8e89c4","ออกรายงานแจ้งซ่อม","ce63f18f7cf0a712fd4a2f47bc9ae14c","2021-01-17 16:32:21");
INSERT INTO logs_keep VALUES("5c1115ac9054f83c","ออกรายงานแจ้งซ่อม","ce63f18f7cf0a712fd4a2f47bc9ae14c","2021-01-17 16:32:27");
INSERT INTO logs_keep VALUES("36b2ac4707f40cc0","ออกรายงานแจ้งซ่อม","ce63f18f7cf0a712fd4a2f47bc9ae14c","2021-01-17 16:32:30");
INSERT INTO logs_keep VALUES("9cb27ec4d4bf6ece","ออกรายงานแจ้งซ่อม","ce63f18f7cf0a712fd4a2f47bc9ae14c","2021-01-17 16:32:33");
INSERT INTO logs_keep VALUES("e4f151f8cfee596c","ออกรายงานแจ้งซ่อม","ce63f18f7cf0a712fd4a2f47bc9ae14c","2021-01-17 16:33:18");
INSERT INTO logs_keep VALUES("b22ab3ead9b4b784","ออกรายงานแจ้งซ่อม","ce63f18f7cf0a712fd4a2f47bc9ae14c","2021-01-17 16:33:21");
INSERT INTO logs_keep VALUES("a0025a9398db692b","ออกรายงานแจ้งซ่อม","ce63f18f7cf0a712fd4a2f47bc9ae14c","2021-01-17 16:33:48");
INSERT INTO logs_keep VALUES("1103eb63368dfa5c","ออกรายงานแจ้งซ่อม","ce63f18f7cf0a712fd4a2f47bc9ae14c","2021-01-17 16:39:43");
INSERT INTO logs_keep VALUES("d4e1cd4822302c9e","ออกรายงานสินทรัพย์ IT","ce63f18f7cf0a712fd4a2f47bc9ae14c","2021-01-20 16:11:34");
INSERT INTO logs_keep VALUES("39cd0b9f66299f1a","ค้นหารายการที่ใช้งานอยู่","ce63f18f7cf0a712fd4a2f47bc9ae14c","2021-01-20 16:11:47");
INSERT INTO logs_keep VALUES("1f3dcde16e1c30e1","ออกรายงานสินทรัพย์ IT","ce63f18f7cf0a712fd4a2f47bc9ae14c","2021-01-20 16:11:55");
INSERT INTO logs_keep VALUES("ce723a1e854ece11","ออกรายงานสินทรัพย์ IT","ce63f18f7cf0a712fd4a2f47bc9ae14c","2021-01-20 16:12:02");
INSERT INTO logs_keep VALUES("9754f943881b3044","ค้นหารายการแยกตามอุปกรณ์","ce63f18f7cf0a712fd4a2f47bc9ae14c","2021-01-20 16:14:07");
INSERT INTO logs_keep VALUES("f932f60c53f8ac2f","ออกรายงานสินทรัพย์ IT","ce63f18f7cf0a712fd4a2f47bc9ae14c","2021-01-20 16:23:24");
INSERT INTO logs_keep VALUES("6e6146a4926af798","ออกรายงานแจ้งซ่อม","ce63f18f7cf0a712fd4a2f47bc9ae14c","2021-01-20 16:46:13");
INSERT INTO logs_keep VALUES("53ddf84db722f8f7","ค้นหารายการที่ใช้งานอยู่","ce63f18f7cf0a712fd4a2f47bc9ae14c","2021-01-20 17:39:09");
INSERT INTO logs_keep VALUES("3f1f698c411742b8","ออกรายงานแจ้งซ่อม","ce63f18f7cf0a712fd4a2f47bc9ae14c","2021-01-20 18:36:18");
INSERT INTO logs_keep VALUES("233f6429f3247c13","ค้นหารายการแยกตามอุปกรณ์","ce63f18f7cf0a712fd4a2f47bc9ae14c","2021-01-21 09:43:47");
INSERT INTO logs_keep VALUES("73c155b49a4fe72a","ค้นหารายการแยกตามอุปกรณ์","ce63f18f7cf0a712fd4a2f47bc9ae14c","2021-01-21 10:06:22");
INSERT INTO logs_keep VALUES("21caac92209ece0d","ค้นหารายการแยกตามอุปกรณ์","ce63f18f7cf0a712fd4a2f47bc9ae14c","2021-01-21 10:26:48");
INSERT INTO logs_keep VALUES("8a49a018c4a30195","ค้นหารายการแยกตามอุปกรณ์","ce63f18f7cf0a712fd4a2f47bc9ae14c","2021-01-21 10:40:55");
INSERT INTO logs_keep VALUES("55ed8265db4c60b1","ค้นหารายการแยกตามอุปกรณ์","ce63f18f7cf0a712fd4a2f47bc9ae14c","2021-01-21 10:45:35");
INSERT INTO logs_keep VALUES("8e5f0adc53617c63","ออกรายงานแจ้งซ่อม","ce63f18f7cf0a712fd4a2f47bc9ae14c","2021-01-24 16:44:26");
INSERT INTO logs_keep VALUES("1d6c202a7f6369cb","ออกรายงานสินทรัพย์ IT","ce63f18f7cf0a712fd4a2f47bc9ae14c","2021-01-24 16:51:31");
INSERT INTO logs_keep VALUES("ad71eb94c70fa4b8","ออกรายงานแจ้งซ่อม","ce63f18f7cf0a712fd4a2f47bc9ae14c","2021-01-24 16:51:44");
INSERT INTO logs_keep VALUES("4827b7a21cfcc2db","ค้นหารายการที่ใช้งานอยู่","ce63f18f7cf0a712fd4a2f47bc9ae14c","2021-01-25 11:26:55");
INSERT INTO logs_keep VALUES("82cd839c8695ee0b","ค้นหารายการที่ใช้งานอยู่","ce63f18f7cf0a712fd4a2f47bc9ae14c","2021-01-25 11:27:25");
INSERT INTO logs_keep VALUES("302dc302e20e5752","ค้นหารายการแยกตามอุปกรณ์","ce63f18f7cf0a712fd4a2f47bc9ae14c","2021-01-25 11:27:28");
INSERT INTO logs_keep VALUES("428bf43486384311","ค้นหารายการที่ใช้งานอยู่","ce63f18f7cf0a712fd4a2f47bc9ae14c","2021-01-25 11:27:50");
INSERT INTO logs_keep VALUES("9a5da87f438ba1c2","ค้นหารายการแยกตามอุปกรณ์","ce63f18f7cf0a712fd4a2f47bc9ae14c","2021-01-25 11:42:01");
INSERT INTO logs_keep VALUES("25049665dbebb80f","ออกรายงานสินทรัพย์ IT","ce63f18f7cf0a712fd4a2f47bc9ae14c","2021-01-25 11:42:05");
INSERT INTO logs_keep VALUES("f0ef0e963ae7530f","ออกรายงานแจ้งซ่อม","ce63f18f7cf0a712fd4a2f47bc9ae14c","2021-01-25 18:11:25");
INSERT INTO logs_keep VALUES("12d7e2b037864ace","ออกรายงานแจ้งซ่อม","ce63f18f7cf0a712fd4a2f47bc9ae14c","2021-01-25 18:11:51");
INSERT INTO logs_keep VALUES("af3b32244bc6d250","ออกรายงานแจ้งซ่อม","ce63f18f7cf0a712fd4a2f47bc9ae14c","2021-01-25 18:28:00");
INSERT INTO logs_keep VALUES("130c4bcb5b6f42af","ออกรายงานแจ้งซ่อม","ce63f18f7cf0a712fd4a2f47bc9ae14c","2021-01-25 18:29:49");
INSERT INTO logs_keep VALUES("5ce4ab39eb7f39a1","ออกรายงานแจ้งซ่อม","ce63f18f7cf0a712fd4a2f47bc9ae14c","2021-01-25 18:45:37");
INSERT INTO logs_keep VALUES("ee0a98d7db9d9385","ค้นหารายการแยกตามอุปกรณ์","ce63f18f7cf0a712fd4a2f47bc9ae14c","2021-01-25 18:56:44");
INSERT INTO logs_keep VALUES("a2ba946f493c03fd","ค้นหารายการแยกตามอุปกรณ์","ce63f18f7cf0a712fd4a2f47bc9ae14c","2021-01-25 18:57:05");
INSERT INTO logs_keep VALUES("34cb56b47cbcc629","ค้นหารายการแยกตามอุปกรณ์","ce63f18f7cf0a712fd4a2f47bc9ae14c","2021-01-25 19:01:56");
INSERT INTO logs_keep VALUES("e46c9b382a232ad2","ออกรายงานสินทรัพย์ IT","ce63f18f7cf0a712fd4a2f47bc9ae14c","2021-01-25 19:02:00");
INSERT INTO logs_keep VALUES("3e64a839991d9c88","ค้นหารายการแยกตามอุปกรณ์","ce63f18f7cf0a712fd4a2f47bc9ae14c","2021-01-26 13:06:24");
INSERT INTO logs_keep VALUES("bee43bd6d4d7384a","ค้นหารายการแยกตามอุปกรณ์","ce63f18f7cf0a712fd4a2f47bc9ae14c","2021-01-26 13:06:40");
INSERT INTO logs_keep VALUES("8a2bd453ca409f63","ค้นหารายการแยกตามอุปกรณ์","ce63f18f7cf0a712fd4a2f47bc9ae14c","2021-01-26 13:06:47");
INSERT INTO logs_keep VALUES("5c314228dca18e89","ออกรายงานแจ้งซ่อม","ce63f18f7cf0a712fd4a2f47bc9ae14c","2021-01-26 13:10:10");
INSERT INTO logs_keep VALUES("f5bddc9c499e9e6a","ออกรายงานแจ้งซ่อม","ce63f18f7cf0a712fd4a2f47bc9ae14c","2021-01-26 13:59:18");
INSERT INTO logs_keep VALUES("f5bf3c0fab9e3084","ออกรายงานแจ้งซ่อม","ce63f18f7cf0a712fd4a2f47bc9ae14c","2021-01-26 13:59:22");
INSERT INTO logs_keep VALUES("b8e759a32e996d10","ออกรายงานแจ้งซ่อม","ce63f18f7cf0a712fd4a2f47bc9ae14c","2021-01-26 13:59:27");
INSERT INTO logs_keep VALUES("d69de654a58b7fbd","ออกรายงานแจ้งซ่อม","ce63f18f7cf0a712fd4a2f47bc9ae14c","2021-01-26 14:57:39");
INSERT INTO logs_keep VALUES("12af6074d72ce717","ออกรายงานแจ้งซ่อม","ce63f18f7cf0a712fd4a2f47bc9ae14c","2021-01-26 14:58:16");
INSERT INTO logs_keep VALUES("9ae31a0743e065ef","ค้นหารายการที่ใช้งานอยู่","ce63f18f7cf0a712fd4a2f47bc9ae14c","2021-01-26 15:14:40");
INSERT INTO logs_keep VALUES("c62d491f38f2e972","ออกรายงานสินทรัพย์ IT","ce63f18f7cf0a712fd4a2f47bc9ae14c","2021-01-26 15:16:19");
INSERT INTO logs_keep VALUES("c7322d468d081a0b","ค้นหารายการแยกตามอุปกรณ์","ce63f18f7cf0a712fd4a2f47bc9ae14c","2021-01-26 15:27:15");
INSERT INTO logs_keep VALUES("eeab3e891f53a3ff","ค้นหารายการที่ใช้งานอยู่","ce63f18f7cf0a712fd4a2f47bc9ae14c","2021-01-26 15:28:34");
INSERT INTO logs_keep VALUES("1ac700271f03546c","ค้นหารายการแยกตามอุปกรณ์","ce63f18f7cf0a712fd4a2f47bc9ae14c","2021-01-26 15:31:30");
INSERT INTO logs_keep VALUES("b51796494320275e","ค้นหารายการแยกตามอุปกรณ์","ce63f18f7cf0a712fd4a2f47bc9ae14c","2021-01-26 15:32:00");
INSERT INTO logs_keep VALUES("fe47bb12eab287ed","ออกรายงานสินทรัพย์ IT","ce63f18f7cf0a712fd4a2f47bc9ae14c","2021-01-26 15:36:16");
INSERT INTO logs_keep VALUES("2cfd1c4bab936565","ออกรายงานสินทรัพย์ IT","ce63f18f7cf0a712fd4a2f47bc9ae14c","2021-01-26 15:38:28");
INSERT INTO logs_keep VALUES("d13681b0a18ab0b2","ออกรายงานสินทรัพย์ IT","ce63f18f7cf0a712fd4a2f47bc9ae14c","2021-01-26 15:40:27");
INSERT INTO logs_keep VALUES("aeb6850cc9c0cdae","ออกรายงานสินทรัพย์ IT","ce63f18f7cf0a712fd4a2f47bc9ae14c","2021-01-26 15:42:18");
INSERT INTO logs_keep VALUES("774e5715f83bd9e3","ค้นหารายการแยกตามอุปกรณ์","16485085fc8bb978628a63f51cf7e085","2021-01-26 15:44:59");
INSERT INTO logs_keep VALUES("d311b5d8a817f7cb","ค้นหารายการแยกตามอุปกรณ์","16485085fc8bb978628a63f51cf7e085","2021-01-26 15:45:21");
INSERT INTO logs_keep VALUES("7556d0bbc4065a0c","ออกรายงานสินทรัพย์ IT","16485085fc8bb978628a63f51cf7e085","2021-01-26 15:45:45");
INSERT INTO logs_keep VALUES("51bc988957b2696f","ค้นหารายการแยกตามอุปกรณ์","ce63f18f7cf0a712fd4a2f47bc9ae14c","2021-01-27 13:09:29");
INSERT INTO logs_keep VALUES("2938960e19cf23d6","ค้นหารายการแยกตามอุปกรณ์","ce63f18f7cf0a712fd4a2f47bc9ae14c","2021-01-27 14:35:40");
INSERT INTO logs_keep VALUES("826c139c99ef1b65","ออกรายงานแจ้งซ่อม","ce63f18f7cf0a712fd4a2f47bc9ae14c","2021-01-27 18:33:47");
INSERT INTO logs_keep VALUES("75582cd733b5f8db","ออกรายงานสินทรัพย์ IT","ce63f18f7cf0a712fd4a2f47bc9ae14c","2021-01-27 18:35:06");
INSERT INTO logs_keep VALUES("d18bd9c404900038","ออกรายงานแจ้งซ่อม","ce63f18f7cf0a712fd4a2f47bc9ae14c","2021-01-28 15:02:04");
INSERT INTO logs_keep VALUES("68aefec3512884b6","ออกรายงานแจ้งซ่อม","ce63f18f7cf0a712fd4a2f47bc9ae14c","2021-01-28 18:11:22");
INSERT INTO logs_keep VALUES("4ddf7d585d37b396","ออกรายงานแจ้งซ่อม","ce63f18f7cf0a712fd4a2f47bc9ae14c","2021-01-28 18:22:51");
INSERT INTO logs_keep VALUES("d1f758b8631ca19b","ออกรายงานแจ้งซ่อม","ce63f18f7cf0a712fd4a2f47bc9ae14c","2021-02-01 10:36:45");
INSERT INTO logs_keep VALUES("f25437d2efc16781","ค้นหารายการที่ใช้งานอยู่","ce63f18f7cf0a712fd4a2f47bc9ae14c","2021-02-01 10:37:18");
INSERT INTO logs_keep VALUES("1a86958519ed9253","ออกรายงานแจ้งซ่อม","ce63f18f7cf0a712fd4a2f47bc9ae14c","2021-02-02 14:06:06");
INSERT INTO logs_keep VALUES("95d0fd17c2538016","ออกรายงานแจ้งซ่อม","ce63f18f7cf0a712fd4a2f47bc9ae14c","2021-02-02 14:06:11");
INSERT INTO logs_keep VALUES("e790fde983275f04","ค้นหารายการแยกตามอุปกรณ์","ce63f18f7cf0a712fd4a2f47bc9ae14c","2021-02-04 02:48:09");
INSERT INTO logs_keep VALUES("3a0283c82638c5c5","ค้นหารายการที่ใช้งานอยู่","ce63f18f7cf0a712fd4a2f47bc9ae14c","2021-02-04 02:49:02");
INSERT INTO logs_keep VALUES("7d1614b307b85b0c","ออกรายงานแจ้งซ่อม","ce63f18f7cf0a712fd4a2f47bc9ae14c","2021-02-13 22:51:18");
INSERT INTO logs_keep VALUES("9ceac343700010c2","ออกรายงานแจ้งซ่อม","ce63f18f7cf0a712fd4a2f47bc9ae14c","2021-02-13 22:52:00");
INSERT INTO logs_keep VALUES("a8c24dde837cbc9e","ค้นหารายการที่ใช้งานอยู่","ce63f18f7cf0a712fd4a2f47bc9ae14c","2021-02-13 23:06:05");
INSERT INTO logs_keep VALUES("a7ff771958dffa12","ออกรายงานสินทรัพย์ IT","ce63f18f7cf0a712fd4a2f47bc9ae14c","2021-02-13 23:06:11");
INSERT INTO logs_keep VALUES("2f8a2e2c5949ba68","ค้นหารายการแยกตามอุปกรณ์","ce63f18f7cf0a712fd4a2f47bc9ae14c","2021-02-13 23:07:18");
INSERT INTO logs_keep VALUES("44984866435c9210","ออกรายงานสินทรัพย์ IT","ce63f18f7cf0a712fd4a2f47bc9ae14c","2021-02-13 23:07:45");
INSERT INTO logs_keep VALUES("4512232c0ae1a8f6","ค้นหารายการที่ใช้งานอยู่","ce63f18f7cf0a712fd4a2f47bc9ae14c","2021-02-13 23:11:17");
INSERT INTO logs_keep VALUES("80053c9e6d1a9ef7","ค้นหารายการที่ใช้งานอยู่","ce63f18f7cf0a712fd4a2f47bc9ae14c","2021-02-13 23:11:52");
INSERT INTO logs_keep VALUES("2e0914fa41881d14","ออกรายงานสินทรัพย์ IT","ce63f18f7cf0a712fd4a2f47bc9ae14c","2021-02-13 23:14:14");
INSERT INTO logs_keep VALUES("85379e72be0fc365","ออกรายงานแจ้งซ่อม","ce63f18f7cf0a712fd4a2f47bc9ae14c","2021-02-14 19:56:52");
INSERT INTO logs_keep VALUES("327c2495ae0dd06f","ออกรายงานแจ้งซ่อม","ce63f18f7cf0a712fd4a2f47bc9ae14c","2021-02-14 20:05:15");
INSERT INTO logs_keep VALUES("df92a3fc631d143f","ออกรายงานแจ้งซ่อม","ce63f18f7cf0a712fd4a2f47bc9ae14c","2021-02-14 20:12:26");
INSERT INTO logs_keep VALUES("6c0aef02e28c0275","ค้นหารายการแยกตามอุปกรณ์","ce63f18f7cf0a712fd4a2f47bc9ae14c","2021-02-14 20:28:32");
INSERT INTO logs_keep VALUES("975dc46301c8e61f","ค้นหารายการที่ใช้งานอยู่","ce63f18f7cf0a712fd4a2f47bc9ae14c","2021-02-14 22:15:50");
INSERT INTO logs_keep VALUES("cc6296f99d648ab4","ออกรายงานแจ้งซ่อม","ce63f18f7cf0a712fd4a2f47bc9ae14c","2021-02-14 22:43:18");
INSERT INTO logs_keep VALUES("d795b424ce5ef47c","ออกรายงานแจ้งซ่อม","ce63f18f7cf0a712fd4a2f47bc9ae14c","2021-02-15 15:04:59");
INSERT INTO logs_keep VALUES("89746ee28aab6a37","ออกรายงานแจ้งซ่อม","ce63f18f7cf0a712fd4a2f47bc9ae14c","2021-03-01 14:42:37");
INSERT INTO logs_keep VALUES("3554ae5dca82208f","ออกรายงานแจ้งซ่อม","ce63f18f7cf0a712fd4a2f47bc9ae14c","2021-03-01 23:08:27");
INSERT INTO logs_keep VALUES("6ff62b463a761c71","ค้นหารายการที่ใช้งานอยู่","ce63f18f7cf0a712fd4a2f47bc9ae14c","2021-03-01 23:09:32");
INSERT INTO logs_keep VALUES("0b3ad6ffb892097e","ออกรายงานแจ้งซ่อม","ce63f18f7cf0a712fd4a2f47bc9ae14c","2021-03-01 23:09:53");
INSERT INTO logs_keep VALUES("5184da3e59c7d786","ออกรายงานแจ้งซ่อม","ce63f18f7cf0a712fd4a2f47bc9ae14c","2021-03-02 22:34:34");
INSERT INTO logs_keep VALUES("5ed4d0d695362d24","ออกรายงานแจ้งซ่อม","ce63f18f7cf0a712fd4a2f47bc9ae14c","2021-03-02 22:34:53");
INSERT INTO logs_keep VALUES("de5a386b5925eca5","ออกรายงานแจ้งซ่อม","ce63f18f7cf0a712fd4a2f47bc9ae14c","2021-03-02 22:34:57");
INSERT INTO logs_keep VALUES("16d891236fa95420","ออกรายงานแจ้งซ่อม","ce63f18f7cf0a712fd4a2f47bc9ae14c","2021-03-02 22:35:56");
INSERT INTO logs_keep VALUES("17ff0259117259bb","ออกรายงานแจ้งซ่อม","ce63f18f7cf0a712fd4a2f47bc9ae14c","2021-03-02 22:47:02");
INSERT INTO logs_keep VALUES("96b585f0258e790f","ออกรายงานแจ้งซ่อม","ce63f18f7cf0a712fd4a2f47bc9ae14c","2021-03-02 23:18:23");
INSERT INTO logs_keep VALUES("45f74baa8546880c","ออกรายงานแจ้งซ่อม","11c0009be8f4e977c6998edce04c9b2e","2021-03-03 22:40:59");
INSERT INTO logs_keep VALUES("b7aff691a92b9fd8","ค้นหารายการที่ใช้งานอยู่","11c0009be8f4e977c6998edce04c9b2e","2021-03-04 11:07:25");
INSERT INTO logs_keep VALUES("029d0784e6d8adfe","ออกรายงานแจ้งซ่อม","ce63f18f7cf0a712fd4a2f47bc9ae14c","2021-03-07 22:54:25");
INSERT INTO logs_keep VALUES("198f167a0a4e4eef","ออกรายงานแจ้งซ่อม","5997108712eef9df6ecab22f1f3728f9","2021-03-09 15:37:24");
INSERT INTO logs_keep VALUES("e820b1cfb3259c8b","ออกรายงานแจ้งซ่อม","ce63f18f7cf0a712fd4a2f47bc9ae14c","2021-03-23 23:27:51");
INSERT INTO logs_keep VALUES("aa64b0d4997f71ab","ออกรายงานแจ้งซ่อม","ce63f18f7cf0a712fd4a2f47bc9ae14c","2021-03-30 22:16:12");
INSERT INTO logs_keep VALUES("82a967bea8f53888","ออกรายงานแจ้งซ่อม","ce63f18f7cf0a712fd4a2f47bc9ae14c","2021-03-30 22:16:26");
INSERT INTO logs_keep VALUES("ac85d94a81e7a1b7","ออกรายงานแจ้งซ่อม","ce63f18f7cf0a712fd4a2f47bc9ae14c","2021-03-30 22:16:57");
INSERT INTO logs_keep VALUES("2dc1fe1e552785d3","ออกรายงานแจ้งซ่อม","ce63f18f7cf0a712fd4a2f47bc9ae14c","2021-04-16 14:24:05");
INSERT INTO logs_keep VALUES("fb3d47a21b586f1e","ออกรายงานแจ้งซ่อม","ce63f18f7cf0a712fd4a2f47bc9ae14c","2021-04-16 14:24:42");
INSERT INTO logs_keep VALUES("65b86dbcf15a2601","ออกรายงานแจ้งซ่อม","ce63f18f7cf0a712fd4a2f47bc9ae14c","2021-04-16 14:24:46");
INSERT INTO logs_keep VALUES("ae48aef6a331fb7d","ออกรายงานแจ้งซ่อม","ce63f18f7cf0a712fd4a2f47bc9ae14c","2021-04-16 14:24:59");
INSERT INTO logs_keep VALUES("c128744c761d92e9","ออกรายงานแจ้งซ่อม","ce63f18f7cf0a712fd4a2f47bc9ae14c","2021-05-06 15:25:43");
INSERT INTO logs_keep VALUES("ee7857c36dbbf322","ออกรายงานแจ้งซ่อม","ce63f18f7cf0a712fd4a2f47bc9ae14c","2021-05-06 15:25:59");
INSERT INTO logs_keep VALUES("d817b50fe8697460","ออกรายงานแจ้งซ่อม","ce63f18f7cf0a712fd4a2f47bc9ae14c","2021-05-17 13:51:08");
INSERT INTO logs_keep VALUES("ad461e1269052b32","ออกรายงานแจ้งซ่อม","ce63f18f7cf0a712fd4a2f47bc9ae14c","2021-05-17 13:51:18");
INSERT INTO logs_keep VALUES("bea726aa9bffaefb","ออกรายงานแจ้งซ่อม","f21ada1d50ad6673ce1efb578513ead6","2021-05-24 11:59:08");
INSERT INTO logs_keep VALUES("eb69e53cc66c15fc","ออกรายงานแจ้งซ่อม","ce63f18f7cf0a712fd4a2f47bc9ae14c","2021-06-21 10:08:42");
INSERT INTO logs_keep VALUES("e44a748b71d3f0d6","ออกรายงานแจ้งซ่อม","ce63f18f7cf0a712fd4a2f47bc9ae14c","2021-06-21 10:09:29");
INSERT INTO logs_keep VALUES("292c9c0e1964aa3b","ออกรายงานแจ้งซ่อม","","2021-06-21 11:32:25");
INSERT INTO logs_keep VALUES("e1dbcc12402d77ee","ออกรายงานแจ้งซ่อม","ce63f18f7cf0a712fd4a2f47bc9ae14c","2021-06-21 11:32:55");
INSERT INTO logs_keep VALUES("59d5867aa12cc323","ออกรายงานแจ้งซ่อม","ce63f18f7cf0a712fd4a2f47bc9ae14c","2021-06-29 10:26:07");
INSERT INTO logs_keep VALUES("22ab3462b2a79bcd","ออกรายงานแจ้งซ่อม","ce63f18f7cf0a712fd4a2f47bc9ae14c","2021-08-06 11:36:24");
INSERT INTO logs_keep VALUES("90c65fe336af50e1","ออกรายงานแจ้งซ่อม","ce63f18f7cf0a712fd4a2f47bc9ae14c","2021-08-06 11:36:53");
INSERT INTO logs_keep VALUES("20ce72584ea8a96d","ออกรายงานแจ้งซ่อม","ce63f18f7cf0a712fd4a2f47bc9ae14c","2021-08-06 11:37:24");
INSERT INTO logs_keep VALUES("7b6fa807481fc547","ออกรายงานแจ้งซ่อม","ce63f18f7cf0a712fd4a2f47bc9ae14c","2021-08-09 16:08:51");
INSERT INTO logs_keep VALUES("cf8a9c5501392ffc","ออกรายงานแจ้งซ่อม","ce63f18f7cf0a712fd4a2f47bc9ae14c","2021-08-09 16:09:16");
INSERT INTO logs_keep VALUES("1888b9c417a977cc","ออกรายงานแจ้งซ่อม","5997108712eef9df6ecab22f1f3728f9","2021-08-18 15:10:00");
INSERT INTO logs_keep VALUES("8d83e01cd0f08e6e","ออกรายงานแจ้งซ่อม","ce63f18f7cf0a712fd4a2f47bc9ae14c","2021-08-19 13:47:19");
INSERT INTO logs_keep VALUES("19d1718d8b645235","ออกรายงานแจ้งซ่อม","ce63f18f7cf0a712fd4a2f47bc9ae14c","2021-08-19 13:48:18");
INSERT INTO logs_keep VALUES("7cb8b67b35a560d4","ออกรายงานแจ้งซ่อม","ce63f18f7cf0a712fd4a2f47bc9ae14c","2021-08-19 17:13:37");
INSERT INTO logs_keep VALUES("d23e8eb3e66d921d","ออกรายงานแจ้งซ่อม","ce63f18f7cf0a712fd4a2f47bc9ae14c","2021-08-20 09:53:16");
INSERT INTO logs_keep VALUES("3161a8b81c68f5c0","ออกรายงานแจ้งซ่อม","ce63f18f7cf0a712fd4a2f47bc9ae14c","2021-08-20 22:21:01");
INSERT INTO logs_keep VALUES("eb07b3b7508b3d84","ออกรายงานแจ้งซ่อม","ce63f18f7cf0a712fd4a2f47bc9ae14c","2021-08-20 22:21:05");
INSERT INTO logs_keep VALUES("c887b2266a166116","ออกรายงานแจ้งซ่อม","ce63f18f7cf0a712fd4a2f47bc9ae14c","2021-08-21 00:25:08");
INSERT INTO logs_keep VALUES("b62fd07dd4fef99a","ออกรายงานแจ้งซ่อม","ce63f18f7cf0a712fd4a2f47bc9ae14c","2021-08-21 00:25:53");
INSERT INTO logs_keep VALUES("8fc1c05dd8bcc83a","ออกรายงานแจ้งซ่อม","ce63f18f7cf0a712fd4a2f47bc9ae14c","2021-08-21 00:56:20");
INSERT INTO logs_keep VALUES("bde5db5f832ec12a","ออกรายงานแจ้งซ่อม","ce63f18f7cf0a712fd4a2f47bc9ae14c","2021-08-21 01:10:04");
INSERT INTO logs_keep VALUES("d5e505588b611502","ออกรายงานแจ้งซ่อม","ce63f18f7cf0a712fd4a2f47bc9ae14c","2021-08-21 01:12:25");
INSERT INTO logs_keep VALUES("5f4218e9fc324e86","ออกรายงานแจ้งซ่อม","ce63f18f7cf0a712fd4a2f47bc9ae14c","2021-08-21 01:17:44");
INSERT INTO logs_keep VALUES("c2f17dd90a28ebc4","ออกรายงานแจ้งซ่อม","ce63f18f7cf0a712fd4a2f47bc9ae14c","2021-08-21 01:19:00");
INSERT INTO logs_keep VALUES("9723cd9aada27199","ออกรายงานแจ้งซ่อม","ce63f18f7cf0a712fd4a2f47bc9ae14c","2021-08-21 01:19:58");
INSERT INTO logs_keep VALUES("2e0c56cfcd58a80c","ออกรายงานแจ้งซ่อม","ce63f18f7cf0a712fd4a2f47bc9ae14c","2021-08-21 01:20:18");
INSERT INTO logs_keep VALUES("fba8425b052c6861","ออกรายงานแจ้งซ่อม","ce63f18f7cf0a712fd4a2f47bc9ae14c","2021-08-21 01:25:27");
INSERT INTO logs_keep VALUES("a09d6d6b278ed195","ออกรายงานแจ้งซ่อม","ce63f18f7cf0a712fd4a2f47bc9ae14c","2021-08-21 01:26:04");
INSERT INTO logs_keep VALUES("d8129c795a9f0bcc","ออกรายงานแจ้งซ่อม","ce63f18f7cf0a712fd4a2f47bc9ae14c","2021-08-21 01:32:57");



# Dump of members_prefix 
# Dump DATE : 21-Aug-2021

DROP TABLE IF EXISTS members_prefix;
CREATE TABLE members_prefix (
  prefix_code int(3) unsigned NOT NULL AUTO_INCREMENT,
  prefix_key varchar(32) NOT NULL,
  prefix_title varchar(64) NOT NULL,
  prefix_status tinyint(1) NOT NULL,
  prefix_insert timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (prefix_code)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;



INSERT INTO members_prefix VALUES(1,"00d3ee50b62c10ee1f590819a045ea47","นาย",1,"2019-01-04 15:22:28");
INSERT INTO members_prefix VALUES(2,"2f9f2c0fc106a86ea7cb3bca1a28de00","นางสาว",1,"2019-01-04 15:24:28");
INSERT INTO members_prefix VALUES(3,"b69fcedf741f32260fb2323fe8fdc9dc","นาง",1,"2019-01-04 15:26:28");
INSERT INTO members_prefix VALUES(4,"c50c44364721dd2fd78c9809ba63348b","สาขา",1,"2019-04-20 16:39:01");
INSERT INTO members_prefix VALUES(5,"07e6dad4c35626e2eef6879f9e6bc224","Mr.",1,"2019-09-25 14:31:01");
INSERT INTO members_prefix VALUES(6,"7bb3cfcdc10f0830609626871f48a2e1","Miss.",1,"2019-09-25 14:31:15");
INSERT INTO members_prefix VALUES(7,"92fffc8038fb8082d8f3286cc95d68e3","ว่าง",2,"2020-01-28 16:13:04");
INSERT INTO members_prefix VALUES(8,"7f183ddcb3abf3cefdda95a434ba0d3a"," -",2,"2020-02-05 10:52:45");
INSERT INTO members_prefix VALUES(9,"0dcd6b158f5fe76beab48231d58fa603"," T21",2,"2021-01-25 11:49:45");
INSERT INTO members_prefix VALUES(10,"4ebb0c932140323025ee33b92707c2e9"," CR9",2,"2021-01-25 11:49:52");
INSERT INTO members_prefix VALUES(11,"3f0eaf4eeb013a1e3f1e4bfce0cf2e1d","ฝ่าย",1,"2021-01-26 15:09:28");
INSERT INTO members_prefix VALUES(12,"9122a4bd7ba6193852a5e854477fa3eb","แผนก",1,"2021-01-26 15:09:36");
INSERT INTO members_prefix VALUES(13,"7b3b03f1ac6e479a36b2f7d21a48cad1","CWG",2,"2021-02-15 00:12:55");
INSERT INTO members_prefix VALUES(14,"e6f8ec5ba9b52d980b3fc9da87a5300e","CLP",2,"2021-02-15 00:13:02");



# Dump of menus 
# Dump DATE : 21-Aug-2021

DROP TABLE IF EXISTS menus;
CREATE TABLE menus (
  menu_key char(32) NOT NULL,
  menu_icon varchar(256) NOT NULL,
  menu_name varchar(128) NOT NULL COMMENT '<span class="pull-right"><span class="badge" id="card_count"></span></span>',
  menu_case varchar(128) NOT NULL,
  menu_link varchar(256) NOT NULL,
  menu_status tinyint(1) NOT NULL,
  menu_sorting int(11) NOT NULL,
  PRIMARY KEY (menu_key)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



INSERT INTO menus VALUES("21adef826d326d4bae44eb0c9e19b8b1","fa-laptop-medical","แจ้งซ่อมฝ่ายสารสนเทศ","service","?p=service",1,2);
INSERT INTO menus VALUES("2309e0cdb2c541bf7cb8ef0dee7b7eba","fa-cogs","ตั้งค่า","setting","?p=setting",1,98);
INSERT INTO menus VALUES("295744c466c17b46170f88b5c1b9104d","fa-address-card","รายการสินทรัพย์ IT","asset_it","?p=asset_it",1,3);
INSERT INTO menus VALUES("385daecfdae3b8adbd528effed4d0440","fa-chart-bar","กราฟแสดงจำนวนงาน","report","?p=report",1,5);
INSERT INTO menus VALUES("a16043256ea5ca0ea86995e2b69ec238","fa-home","หน้าแรก","","index.php",1,1);
INSERT INTO menus VALUES("c6c8729b45d1fec563f8453c16ff03b8","fa-sign-out-alt","ออกจากระบบ","logout","../core/logout.core.php",1,99);
INSERT INTO menus VALUES("f1344bc0fb9c5594fa0e3d3f37a56957","fa-users","พนักงาน","employee","?p=employee",1,4);



# Dump of os_system 
# Dump DATE : 21-Aug-2021

DROP TABLE IF EXISTS os_system;
CREATE TABLE os_system (
  id int(2) NOT NULL,
  os_name varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;






# Dump of problem_comment 
# Dump DATE : 21-Aug-2021

DROP TABLE IF EXISTS problem_comment;
CREATE TABLE problem_comment (
  ID int(6) NOT NULL AUTO_INCREMENT,
  ticket varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  admin_update varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  card_status varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  comment varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  price varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  date datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (ID)
) ENGINE=InnoDB AUTO_INCREMENT=788 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



INSERT INTO problem_comment VALUES(1,"IT2021-02-18-W01","11c0009be8f4e977c6998edce04c9b2e","befb5e146e599a9876757fb18ce5fa2e","ขอตรวจสอบให้ เวลา 14.00 น.","0.00","2021-02-18 13:16:21");
INSERT INTO problem_comment VALUES(2,"IT2021-02-18-W01","11c0009be8f4e977c6998edce04c9b2e","befb5e146e599a9876757fb18ce5fa2e",NULL,"0.00","2021-02-18 13:22:05");
INSERT INTO problem_comment VALUES(3,"IT2021-02-18-W01","11c0009be8f4e977c6998edce04c9b2e","befb5e146e599a9876757fb18ce5fa2e","แนะนำให้สาขากดปุ่มสามเหลี่ยมตามรูปที่แนบนี้ค่ะ ค้างไว้ 5 วิ จนเครื่องกระพริบค่ะ","0.00","2021-02-18 13:46:21");
INSERT INTO problem_comment VALUES(4,"IT2021-02-18-W02","ce63f18f7cf0a712fd4a2f47bc9ae14c","befb5e146e599a9876757fb18ce5fa2e","กำลังผสานงานดำเนินการเปิดระบบติดตั้งให้","0.00","2021-02-18 16:06:58");
INSERT INTO problem_comment VALUES(5,"IT2021-02-18-W01","11c0009be8f4e977c6998edce04c9b2e","9ba0f256a5f620136568c6b47dcb24bd","จะจัดส่งเครื่องสำรองที่โกดัง wh รามให้","0.00","2021-02-18 18:45:28");
INSERT INTO problem_comment VALUES(6,"IT2021-02-18-W03","11c0009be8f4e977c6998edce04c9b2e","2e34609794290a770cb0349119d78d21","ลงโปรแกรมเรียบร้อย","0.00","2021-02-18 18:48:18");
INSERT INTO problem_comment VALUES(7,"IT2021-02-18-W02","ce63f18f7cf0a712fd4a2f47bc9ae14c","2e34609794290a770cb0349119d78d21","ดำเนินการเสร็จสิ้น","0.00","2021-02-19 13:18:53");
INSERT INTO problem_comment VALUES(8,"IT2021-02-19-W04","ce63f18f7cf0a712fd4a2f47bc9ae14c","2e34609794290a770cb0349119d78d21","แก้ไขเรียบร้อย","0.00","2021-02-19 13:27:46");
INSERT INTO problem_comment VALUES(9,"IT2021-02-19-W05","ce63f18f7cf0a712fd4a2f47bc9ae14c","befb5e146e599a9876757fb18ce5fa2e","รบกวนสาขาส่ง Anydesk ให้ในไลน์หน่อยค่ะ","0.00","2021-02-19 15:09:48");
INSERT INTO problem_comment VALUES(10,"IT2021-02-18-W01","ce63f18f7cf0a712fd4a2f47bc9ae14c","27e87048f9283b6e13347df4388c98e9","กำลังจัดส่งเครื่องสำรองไปให้ คาดว่าจะถึง 20/02/64","0.00","2021-02-19 15:20:07");
INSERT INTO problem_comment VALUES(11,"IT2021-02-20-W06","11c0009be8f4e977c6998edce04c9b2e","befb5e146e599a9876757fb18ce5fa2e","กำลังตรวจเช็ค","0.00","2021-02-20 11:26:29");
INSERT INTO problem_comment VALUES(12,"IT2021-02-20-W06","11c0009be8f4e977c6998edce04c9b2e","befb5e146e599a9876757fb18ce5fa2e","กำลังดาวน์โหลด คาดว่าใช้เวลา 1-2 ชม ค่ะ","0.00","2021-02-20 11:35:09");
INSERT INTO problem_comment VALUES(13,"IT2021-02-18-W01","11c0009be8f4e977c6998edce04c9b2e","02b5a3574052961b5336356a9a634d05","เนื่องจากปริ้นเตอร์ สาขา SCT สามารถใช้งานได้ปกติเจ้าหน้าที่ ขอคืนเครื่อง 
*IT แจ้งให้สาขาโอนย้ายส่งต่อให้ CBN","0.00","2021-02-20 11:44:42");
INSERT INTO problem_comment VALUES(14,"IT2021-02-18-W01","11c0009be8f4e977c6998edce04c9b2e","2e34609794290a770cb0349119d78d21","สามารถใช้งานได้ปกติ","0.00","2021-02-20 11:45:26");
INSERT INTO problem_comment VALUES(15,"IT2021-02-19-W05","11c0009be8f4e977c6998edce04c9b2e","9ba0f256a5f620136568c6b47dcb24bd","จัดส่งเครื่องสำรอง เนื่องจากเครื่องปริ้นสาขามีปัญหาน้ำหมึกพิมพ์ไม่ออก 

*เครื่องสำรองจะถูกโอนจากสาขา SCP ไป CBN","0.00","2021-02-20 11:58:16");
INSERT INTO problem_comment VALUES(16,"IT2021-02-20-W07","11c0009be8f4e977c6998edce04c9b2e","befb5e146e599a9876757fb18ce5fa2e","IT ขอตรวจสอบเบื้องต้น ช่วง 15.00 น และจะดำเนินการตรวจสอบแบบละเอียดวันจันทร์  22/02/64","0.00","2021-02-20 13:42:14");
INSERT INTO problem_comment VALUES(17,"IT2021-02-20-W06","11c0009be8f4e977c6998edce04c9b2e","2e34609794290a770cb0349119d78d21","กล้อง CH2 บริเวณเค้าเตอร์ 07.00-10.00น. 20/02/64 https://youtube.com/playlist?list=PL2SabMptMPay3XxWjucO9pXUv-tEHHJGA","0.00","2021-02-20 15:39:19");
INSERT INTO problem_comment VALUES(18,"IT2021-02-21-W08","11c0009be8f4e977c6998edce04c9b2e","befb5e146e599a9876757fb18ce5fa2e","เนื่องจาก10.55-11.00น.​ ลูกค้าคอมเพลนว่าหน้าร้านไม่มีคิว​ และทางร้านเปิด11.00น.​ ลูกค้ามา10.45น.​ แต่ว่า​  อยากเห็นกล้องที่ส่องไปหน้าเพื่อให้เห็นว่า​ ลูกค้ามีการต่อแถวไหม​  มีคิวที่มาก่อนไหม​  เพื่อยืนยันในห้องคอมเพลนครับ","0.00","2021-02-21 13:18:58");
INSERT INTO problem_comment VALUES(19,"IT2021-02-21-W08","11c0009be8f4e977c6998edce04c9b2e","2e34609794290a770cb0349119d78d21","เรียบร้อย 21/02/64 10.55-11.00 น.  ลิ้งค์ https://youtu.be/gmF1htiyVNI","0.00","2021-02-21 13:42:42");
INSERT INTO problem_comment VALUES(20,"IT2021-02-22-W09","f21ada1d50ad6673ce1efb578513ead6","befb5e146e599a9876757fb18ce5fa2e",NULL,"0.00","2021-02-22 10:03:51");
INSERT INTO problem_comment VALUES(21,"IT2021-02-22-W09","ce63f18f7cf0a712fd4a2f47bc9ae14c","befb5e146e599a9876757fb18ce5fa2e","ตรวจสอบเครื่องเบื้องต้น Driver ไม่ตอบสนอง","0.00","2021-02-22 11:13:03");
INSERT INTO problem_comment VALUES(22,"IT2021-02-22-W10","11c0009be8f4e977c6998edce04c9b2e","2e34609794290a770cb0349119d78d21","ปรับระบบหลังบ้านและให้ทดสอบการใช้งาน","0.00","2021-02-22 11:16:45");
INSERT INTO problem_comment VALUES(23,"IT2021-02-22-W12","f21ada1d50ad6673ce1efb578513ead6","befb5e146e599a9876757fb18ce5fa2e","กำลังแจ้งเจ้าหน้าที่ เพื่อดำเนินการแก้ไข","0.00","2021-02-22 17:42:13");
INSERT INTO problem_comment VALUES(24,"IT2021-02-22-W11","f21ada1d50ad6673ce1efb578513ead6","2e34609794290a770cb0349119d78d21","แก้ไขแล้วครับ","0.00","2021-02-22 18:07:32");
INSERT INTO problem_comment VALUES(25,"IT2021-02-22-W13","11c0009be8f4e977c6998edce04c9b2e","2e34609794290a770cb0349119d78d21","Update เรียบร้อยค่ะ","0.00","2021-02-22 23:48:49");
INSERT INTO problem_comment VALUES(26,"IT2021-02-23-W14","f21ada1d50ad6673ce1efb578513ead6","2e34609794290a770cb0349119d78d21","Sync Cloudสาขา T21ให้เรียบร้อยครับ","0.00","2021-02-23 12:08:23");
INSERT INTO problem_comment VALUES(27,"IT2021-02-23-W15","f21ada1d50ad6673ce1efb578513ead6","befb5e146e599a9876757fb18ce5fa2e","จะดำเนินการแจ้งเรื่องให้ช่างครับ","0.00","2021-02-23 16:38:00");
INSERT INTO problem_comment VALUES(28,"IT2021-02-23-W16","f21ada1d50ad6673ce1efb578513ead6","2e34609794290a770cb0349119d78d21","กล้องไม่เสียนะครับ ดูได้ปกติ","0.00","2021-02-23 17:11:14");
INSERT INTO problem_comment VALUES(29,"IT2021-02-19-W05","ce63f18f7cf0a712fd4a2f47bc9ae14c","968d42cbf280bc3c26103d31955bae59","รอเครื่องที่เสียส่งกลับมา HO","0.00","2021-02-23 21:59:07");
INSERT INTO problem_comment VALUES(30,"IT2021-02-20-W07","ce63f18f7cf0a712fd4a2f47bc9ae14c","27e87048f9283b6e13347df4388c98e9","รอส่งเครื่องสำรองเพื่อไปสลับทำเครื่องสาขามาล้างเครื่องใหม่","0.00","2021-02-23 22:00:53");
INSERT INTO problem_comment VALUES(31,"IT2021-02-22-W09","ce63f18f7cf0a712fd4a2f47bc9ae14c","5cafc78523f4f5e4812f9545b2ba5ae7","เครื่องปรื้นไม่ตอบสนอง ผู้ใช้งานประสงค์จะใช้งานผ่านไร้สาย ขอดำเนินการตรวจสอบเพิ่มเติมอีกครั้ง","0.00","2021-02-23 22:02:37");
INSERT INTO problem_comment VALUES(32,"IT2021-02-22-W12","ce63f18f7cf0a712fd4a2f47bc9ae14c","2e34609794290a770cb0349119d78d21","ดำเนินการแก้ไขเรียบร้อย","0.00","2021-02-23 22:05:10");
INSERT INTO problem_comment VALUES(33,"IT2021-02-24-W17","f21ada1d50ad6673ce1efb578513ead6","befb5e146e599a9876757fb18ce5fa2e","กำลังตรวจสอบครับ","0.00","2021-02-24 09:16:18");
INSERT INTO problem_comment VALUES(34,"IT2021-02-24-W18","f21ada1d50ad6673ce1efb578513ead6","2e34609794290a770cb0349119d78d21","แก้ไขเรียบร้อยครับ","0.00","2021-02-24 17:06:53");
INSERT INTO problem_comment VALUES(35,"IT2021-02-25-W19","f21ada1d50ad6673ce1efb578513ead6","befb5e146e599a9876757fb18ce5fa2e","กำลังแก้ไขครับ","0.00","2021-02-25 09:58:04");
INSERT INTO problem_comment VALUES(36,"IT2021-02-25-W19","f21ada1d50ad6673ce1efb578513ead6","2e34609794290a770cb0349119d78d21","เรียบร้อยครับ","0.00","2021-02-25 10:16:28");
INSERT INTO problem_comment VALUES(37,"IT2021-02-25-W20","f21ada1d50ad6673ce1efb578513ead6","befb5e146e599a9876757fb18ce5fa2e","กำลังส่งเรื่องให้ช่างแก้ไขครับ","0.00","2021-02-25 14:24:23");
INSERT INTO problem_comment VALUES(38,"IT2021-02-25-W20","11c0009be8f4e977c6998edce04c9b2e","befb5e146e599a9876757fb18ce5fa2e","เรื่องให้ทางช่างตรวจสอบแล้วค่ะ ต้องรอช่างเข้าเช็คจุดสัญญาณให้ งานเกี่ยวกับสายภายใน","0.00","2021-02-26 18:54:48");
INSERT INTO problem_comment VALUES(39,"IT2021-02-24-W17","11c0009be8f4e977c6998edce04c9b2e","27e87048f9283b6e13347df4388c98e9","รอขนส่งมารับเครื่องสำรอง เนื่องจากวันพุธ ขนส่งเข้ามา ho ไม่ได้แจ้ง it จึงส่งเครื่องล่าช้า","0.00","2021-02-26 18:56:36");
INSERT INTO problem_comment VALUES(40,"IT2021-02-19-W05","11c0009be8f4e977c6998edce04c9b2e","02b5a3574052961b5336356a9a634d05","สาขาส่งคืน วันที่ 20/02/64 ส่งไป Ho","0.00","2021-02-26 19:06:02");
INSERT INTO problem_comment VALUES(41,"IT2021-02-19-W05","11c0009be8f4e977c6998edce04c9b2e","2e34609794290a770cb0349119d78d21","เครื่องปริ้นสาขาใช่ได้ปกติเรียบร้อย","0.00","2021-02-26 19:06:40");
INSERT INTO problem_comment VALUES(42,"IT2021-02-22-W09","11c0009be8f4e977c6998edce04c9b2e","2e34609794290a770cb0349119d78d21","เรียบร้อย","0.00","2021-02-26 19:07:03");
INSERT INTO problem_comment VALUES(43,"IT2021-02-23-W15","11c0009be8f4e977c6998edce04c9b2e","57995055c28df9e82476a54f852bd214","IT เปิดงานต่อไปทางช่างให้แล้วค่ะ ขออนุญาตปิดงาน","0.00","2021-02-26 19:08:21");
INSERT INTO problem_comment VALUES(44,"IT2021-02-20-W07","11c0009be8f4e977c6998edce04c9b2e","27e87048f9283b6e13347df4388c98e9","ขนส่งล่าช้าจะได้รอบขนส่งวันจันทร์ที่ 01/03/63","0.00","2021-02-26 19:10:18");
INSERT INTO problem_comment VALUES(45,"IT2021-02-27-W21","11c0009be8f4e977c6998edce04c9b2e","3b2bd9e319992d5b63bfbbd7301b6882","รอสั่งซื้ออุปกรณ์","0.00","2021-02-27 12:16:31");
INSERT INTO problem_comment VALUES(46,"IT2021-02-27-W21","f21ada1d50ad6673ce1efb578513ead6","2e34609794290a770cb0349119d78d21","ได้ครับแล้วครับผม","0.00","2021-02-27 12:17:24");
INSERT INTO problem_comment VALUES(47,"IT2021-02-28-W23","11c0009be8f4e977c6998edce04c9b2e","befb5e146e599a9876757fb18ce5fa2e","สาขาลองปัดแอพค่ะ","0.00","2021-02-28 10:27:29");
INSERT INTO problem_comment VALUES(48,"IT2021-02-28-W24","ce63f18f7cf0a712fd4a2f47bc9ae14c","befb5e146e599a9876757fb18ce5fa2e","เจ้าหน้าที่กำลังติดต่อดำเนินการ ช่วงเย็นเพื่อขอ Update App แก้ไขปัญหาค่ะ  01/03/2564","0.00","2021-03-01 09:53:04");
INSERT INTO problem_comment VALUES(49,"IT2021-03-01-W01","f21ada1d50ad6673ce1efb578513ead6","befb5e146e599a9876757fb18ce5fa2e","ไอที กำลังRemoteเข้าไปครับ","0.00","2021-03-01 11:43:27");
INSERT INTO problem_comment VALUES(50,"IT2021-03-01-W01","f21ada1d50ad6673ce1efb578513ead6","2e34609794290a770cb0349119d78d21",NULL,"0.00","2021-03-01 12:26:49");
INSERT INTO problem_comment VALUES(51,"IT2021-02-27-W22","f21ada1d50ad6673ce1efb578513ead6","57995055c28df9e82476a54f852bd214","ส่งงานต่อให้ช่างแล้วครับ","0.00","2021-03-01 14:24:39");
INSERT INTO problem_comment VALUES(52,"IT2021-03-01-W02","f21ada1d50ad6673ce1efb578513ead6","befb5e146e599a9876757fb18ce5fa2e","เจ้าหน้าดำเนินการแก้ไขในช่วงกลางคืนครับ","0.00","2021-03-01 17:06:33");
INSERT INTO problem_comment VALUES(53,"IT2021-03-01-W03","f21ada1d50ad6673ce1efb578513ead6","968d42cbf280bc3c26103d31955bae59","ส่งเครื่องให้เรียบร้อยครับ","0.00","2021-03-01 19:57:38");
INSERT INTO problem_comment VALUES(54,"IT2021-03-01-W04","f21ada1d50ad6673ce1efb578513ead6","2e34609794290a770cb0349119d78d21","ติดตั้งให้เรียบร้อยครับ","0.00","2021-03-01 20:09:28");
INSERT INTO problem_comment VALUES(55,"IT2021-02-24-W17","f21ada1d50ad6673ce1efb578513ead6","968d42cbf280bc3c26103d31955bae59","กำลังดำเนินการส่งอุปกรณ์ครับ","0.00","2021-03-02 09:03:39");
INSERT INTO problem_comment VALUES(56,"IT2021-02-20-W07","f21ada1d50ad6673ce1efb578513ead6","968d42cbf280bc3c26103d31955bae59","กำลังดำเนินการส่งอุปกรณ์","0.00","2021-03-02 09:03:51");
INSERT INTO problem_comment VALUES(57,"IT2021-03-02-W05","f21ada1d50ad6673ce1efb578513ead6","47ea92cfc142a08b40abe2ddbf8837a8","เปลี่ยนHDDให้ครับ","0.00","2021-03-02 09:23:33");
INSERT INTO problem_comment VALUES(58,"IT2021-03-02-W05","f21ada1d50ad6673ce1efb578513ead6","2e34609794290a770cb0349119d78d21","เปลี่ยนHDDและติดตั้งOSใหม่เรียบร้อย","0.00","2021-03-02 13:55:06");
INSERT INTO problem_comment VALUES(59,"IT2021-03-02-W06","f21ada1d50ad6673ce1efb578513ead6","befb5e146e599a9876757fb18ce5fa2e","กำลังตรวจสอบ","0.00","2021-03-02 14:04:20");
INSERT INTO problem_comment VALUES(60,"IT2021-03-02-W06","f21ada1d50ad6673ce1efb578513ead6","2e34609794290a770cb0349119d78d21","แก้ไขแล้ว","0.00","2021-03-02 14:06:06");
INSERT INTO problem_comment VALUES(61,"IT2021-03-02-W07","ce63f18f7cf0a712fd4a2f47bc9ae14c","2e34609794290a770cb0349119d78d21","เรียบร้อยค่ะ","0.00","2021-03-02 14:08:03");
INSERT INTO problem_comment VALUES(62,"IT2021-03-02-W11","f21ada1d50ad6673ce1efb578513ead6","befb5e146e599a9876757fb18ce5fa2e","กำลังตั้งค่า","0.00","2021-03-03 08:32:17");
INSERT INTO problem_comment VALUES(63,"IT2021-03-02-W11","f21ada1d50ad6673ce1efb578513ead6","2e34609794290a770cb0349119d78d21","เรียบร้อย","0.00","2021-03-03 08:59:32");
INSERT INTO problem_comment VALUES(64,"IT2021-03-02-W09","ce63f18f7cf0a712fd4a2f47bc9ae14c","befb5e146e599a9876757fb18ce5fa2e","ขอดำเนินการตรวจสอบค่ะ","0.00","2021-03-03 09:35:48");
INSERT INTO problem_comment VALUES(65,"IT2021-03-02-W10","11c0009be8f4e977c6998edce04c9b2e","befb5e146e599a9876757fb18ce5fa2e","เดี๋ยวจัดส่งให้นะคะ","0.00","2021-03-03 09:52:37");
INSERT INTO problem_comment VALUES(66,"IT2021-03-03-W12","f21ada1d50ad6673ce1efb578513ead6","2e34609794290a770cb0349119d78d21","เรียบร้อยครับ","0.00","2021-03-03 10:17:29");
INSERT INTO problem_comment VALUES(67,"IT2021-03-03-W15","f21ada1d50ad6673ce1efb578513ead6","57995055c28df9e82476a54f852bd214","-","0.00","2021-03-03 11:52:25");
INSERT INTO problem_comment VALUES(68,"IT2021-03-03-W14","f21ada1d50ad6673ce1efb578513ead6","befb5e146e599a9876757fb18ce5fa2e","กำลังตรวจสอบ","0.00","2021-03-03 11:53:42");
INSERT INTO problem_comment VALUES(69,"IT2021-03-03-W16","f21ada1d50ad6673ce1efb578513ead6","befb5e146e599a9876757fb18ce5fa2e","กำลังตรวจสอบ","0.00","2021-03-03 11:54:02");
INSERT INTO problem_comment VALUES(70,"IT2021-03-03-W16","f21ada1d50ad6673ce1efb578513ead6","2e34609794290a770cb0349119d78d21","SyncCloudเรียบร้อย","0.00","2021-03-03 12:27:03");
INSERT INTO problem_comment VALUES(71,"IT2021-03-03-W14","f21ada1d50ad6673ce1efb578513ead6","2e34609794290a770cb0349119d78d21","SyncCloudเรียบร้อย","0.00","2021-03-03 13:23:40");
INSERT INTO problem_comment VALUES(72,"IT2021-02-20-W07","ce63f18f7cf0a712fd4a2f47bc9ae14c","5cafc78523f4f5e4812f9545b2ba5ae7","ต้องรอสาขาส่งเครื่องที่เสียกลับ","0.00","2021-03-03 13:38:21");
INSERT INTO problem_comment VALUES(73,"IT2021-03-03-W13","f21ada1d50ad6673ce1efb578513ead6","befb5e146e599a9876757fb18ce5fa2e","ทำงานส่งเรื่องต่อให้Prosoftแล้ว","0.00","2021-03-03 13:40:54");
INSERT INTO problem_comment VALUES(74,"IT2021-03-01-W03","f21ada1d50ad6673ce1efb578513ead6","47ea92cfc142a08b40abe2ddbf8837a8","1.อาการคือ HDDเสียซึ่งข้อมูลไม่สามารถกู้คืนได้
","0.00","2021-03-03 14:40:03");
INSERT INTO problem_comment VALUES(75,"IT2021-03-01-W03","f21ada1d50ad6673ce1efb578513ead6","2e34609794290a770cb0349119d78d21","เปลี่ยนHDDใหม่และติดตั้งOSเรียบร้อย
*สาขาสามารถติดต่อรับเครื่องได้","0.00","2021-03-03 14:43:29");
INSERT INTO problem_comment VALUES(76,"IT2021-03-01-W02","f21ada1d50ad6673ce1efb578513ead6","2e34609794290a770cb0349119d78d21","เจ้าหน้าที่ปรับปรุงแก้ไขเรียนบร้อย วันที่2/3/64","0.00","2021-03-03 14:45:51");
INSERT INTO problem_comment VALUES(77,"IT2021-02-24-W17","f21ada1d50ad6673ce1efb578513ead6","2e34609794290a770cb0349119d78d21","แจ้งพี่ญาเรียบร้อย
สาขาสามรถรับNotebookสำลองได้","0.00","2021-03-03 14:48:31");
INSERT INTO problem_comment VALUES(78,"IT2021-03-03-W17","f21ada1d50ad6673ce1efb578513ead6","2e34609794290a770cb0349119d78d21","ล็อคโหมดSleep","0.00","2021-03-03 15:06:19");
INSERT INTO problem_comment VALUES(79,"IT2021-03-03-W18","f21ada1d50ad6673ce1efb578513ead6","befb5e146e599a9876757fb18ce5fa2e","กำลังแจ้งDell","0.00","2021-03-03 17:04:11");
INSERT INTO problem_comment VALUES(80,"IT2021-03-03-W19","f21ada1d50ad6673ce1efb578513ead6","befb5e146e599a9876757fb18ce5fa2e","เบื้องต้นจะRemoteตรวจครับ","0.00","2021-03-03 18:11:58");
INSERT INTO problem_comment VALUES(81,"IT2021-02-25-W20","11c0009be8f4e977c6998edce04c9b2e","47ea92cfc142a08b40abe2ddbf8837a8","ช่างเข้างานคืนนี้ค่ะ","0.00","2021-03-03 22:09:00");
INSERT INTO problem_comment VALUES(82,"IT2021-02-28-W23","11c0009be8f4e977c6998edce04c9b2e","2e34609794290a770cb0349119d78d21","เจ้าหน้าที่ Food แจเง update version ทุกสาขาพร้อมกัน","0.00","2021-03-03 22:13:51");
INSERT INTO problem_comment VALUES(83,"IT2021-02-28-W24","11c0009be8f4e977c6998edce04c9b2e","2e34609794290a770cb0349119d78d21","เจ้าหน้าที่ Update แอพแก้ไขอาการค้างช้า","0.00","2021-03-03 22:17:53");
INSERT INTO problem_comment VALUES(84,"IT2021-03-02-W08","11c0009be8f4e977c6998edce04c9b2e","141f76f3b648cd1d8d21cceed6b3b418","กำลังตรวจเช็คและแก้ไขค่ะ","0.00","2021-03-03 22:21:04");
INSERT INTO problem_comment VALUES(85,"IT2021-03-02-W09","11c0009be8f4e977c6998edce04c9b2e","2e34609794290a770cb0349119d78d21","แก้ไขเรียค่ะ","0.00","2021-03-03 22:23:42");
INSERT INTO problem_comment VALUES(86,"IT2021-03-02-W08","11c0009be8f4e977c6998edce04c9b2e","141f76f3b648cd1d8d21cceed6b3b418","แนะนำการกดค่ะ","0.00","2021-03-03 22:29:12");
INSERT INTO problem_comment VALUES(87,"IT2021-03-02-W08","11c0009be8f4e977c6998edce04c9b2e","2e34609794290a770cb0349119d78d21","ทดลองกดตามคลิปนะคะ มาเพิ่มคือกดเพิ่มตามจำนวนลูกค้า แล้วก็ปรับให้ปริ้นออกบาร์น้ำแล้วค่ะ","0.00","2021-03-03 22:31:47");
INSERT INTO problem_comment VALUES(88,"IT2021-03-03-W18","11c0009be8f4e977c6998edce04c9b2e","f2c50a9a3e802c7be809f7f506b2b46a","รอเจ้าหน้าที่ติดต่อเปลี่ยนอะไหล่เครื่องคอมพิวเตอร์","0.00","2021-03-03 22:34:32");
INSERT INTO problem_comment VALUES(89,"IT2021-03-02-W10","11c0009be8f4e977c6998edce04c9b2e","5cafc78523f4f5e4812f9545b2ba5ae7","ติดส่งแผ่นซีดีตามรอบขนส่ง วันศุกร์นี้ค่ะ","0.00","2021-03-03 22:37:49");
INSERT INTO problem_comment VALUES(90,"IT2021-03-04-W20","11c0009be8f4e977c6998edce04c9b2e","befb5e146e599a9876757fb18ce5fa2e","ขอตรวจสอบฟอร์มหลังบ้าน จะแจ้งกลับ 10.00","0.00","2021-03-04 09:19:37");
INSERT INTO problem_comment VALUES(91,"IT2021-03-04-W21","ce63f18f7cf0a712fd4a2f47bc9ae14c","141f76f3b648cd1d8d21cceed6b3b418","กำลังตรวจสอบระบบการเชื่อมต่อ","0.00","2021-03-04 10:08:56");
INSERT INTO problem_comment VALUES(92,"IT2021-03-04-W21","11c0009be8f4e977c6998edce04c9b2e","2e34609794290a770cb0349119d78d21","ปรับตั้งค่าเรียบร้อย","0.00","2021-03-04 10:45:24");
INSERT INTO problem_comment VALUES(93,"IT2021-03-04-W22","11c0009be8f4e977c6998edce04c9b2e","2e34609794290a770cb0349119d78d21","ดำเนินการแก้ไขเสร็จเรียบร้อย","0.00","2021-03-04 10:45:57");
INSERT INTO problem_comment VALUES(94,"IT2021-03-04-W20","11c0009be8f4e977c6998edce04c9b2e","2e34609794290a770cb0349119d78d21","ดำเนินการแก้ไขเรียบร้อยแล้วค่ะ","0.00","2021-03-04 10:46:49");
INSERT INTO problem_comment VALUES(95,"IT2021-03-03-W13","f21ada1d50ad6673ce1efb578513ead6","5cafc78523f4f5e4812f9545b2ba5ae7",NULL,"0.00","2021-03-04 14:50:41");
INSERT INTO problem_comment VALUES(96,"IT2021-03-03-W18","f21ada1d50ad6673ce1efb578513ead6","47ea92cfc142a08b40abe2ddbf8837a8","เจ้าหน้าที่Dellนัดเข้าแก้ไข วันจันทร์ที่ 8/3/64","0.00","2021-03-05 11:44:49");
INSERT INTO problem_comment VALUES(97,"IT2021-03-03-W19","f21ada1d50ad6673ce1efb578513ead6","5cafc78523f4f5e4812f9545b2ba5ae7","รอเครื่องสำรองจากสาขาอื่นส่งกลับ","0.00","2021-03-05 11:47:30");
INSERT INTO problem_comment VALUES(98,"IT2021-03-05-W23","f21ada1d50ad6673ce1efb578513ead6","befb5e146e599a9876757fb18ce5fa2e",NULL,"0.00","2021-03-05 14:50:03");
INSERT INTO problem_comment VALUES(99,"IT2021-03-05-W23","f21ada1d50ad6673ce1efb578513ead6","2e34609794290a770cb0349119d78d21","ติดตั้งเรียบร้อยครับ","0.00","2021-03-05 14:50:33");
INSERT INTO problem_comment VALUES(100,"IT2021-02-25-W20","ce63f18f7cf0a712fd4a2f47bc9ae14c","2e34609794290a770cb0349119d78d21","ช่างแจ้งไม้ทับสายโทรศัพท์","0.00","2021-03-05 15:00:55");
INSERT INTO problem_comment VALUES(101,"IT2021-03-02-W10","f21ada1d50ad6673ce1efb578513ead6","2e34609794290a770cb0349119d78d21","ฝากลุงให้นำไปส่งที่สาขาแล้ว","0.00","2021-03-05 15:01:20");
INSERT INTO problem_comment VALUES(102,"IT2021-03-06-W25","11c0009be8f4e977c6998edce04c9b2e","57995055c28df9e82476a54f852bd214","สาขาแจ้งผิด","0.00","2021-03-06 11:47:45");
INSERT INTO problem_comment VALUES(103,"IT2021-03-07-W28","f21ada1d50ad6673ce1efb578513ead6","befb5e146e599a9876757fb18ce5fa2e",NULL,"0.00","2021-03-07 19:18:50");
INSERT INTO problem_comment VALUES(104,"IT2021-03-07-W29","11c0009be8f4e977c6998edce04c9b2e","2e34609794290a770cb0349119d78d21","เรียบร้อย","0.00","2021-03-07 21:36:22");
INSERT INTO problem_comment VALUES(105,"IT2021-03-07-W28","f21ada1d50ad6673ce1efb578513ead6","2e34609794290a770cb0349119d78d21","ใช้งานได้ปกติ","0.00","2021-03-08 10:26:15");
INSERT INTO problem_comment VALUES(106,"IT2021-03-03-W18","f21ada1d50ad6673ce1efb578513ead6","2e34609794290a770cb0349119d78d21","ช่างDellเข้าแก้ไขเรียบร้อยแล้ว","0.00","2021-03-08 10:32:47");
INSERT INTO problem_comment VALUES(107,"IT2021-03-09-W30","f21ada1d50ad6673ce1efb578513ead6","befb5e146e599a9876757fb18ce5fa2e","เจ้าหน้าที่จะRemoteและทดสอบสัญญาณ","0.00","2021-03-09 13:27:33");
INSERT INTO problem_comment VALUES(108,"IT2021-03-09-W30","f21ada1d50ad6673ce1efb578513ead6","2e34609794290a770cb0349119d78d21","อินเตอร์เน็ตอาจจะช้าเป็นบางช่วง","0.00","2021-03-09 13:35:50");
INSERT INTO problem_comment VALUES(109,"IT2021-03-06-W26","5997108712eef9df6ecab22f1f3728f9","2e34609794290a770cb0349119d78d21",NULL,"0.00","2021-03-09 15:15:38");
INSERT INTO problem_comment VALUES(110,"IT2021-03-05-W24","5997108712eef9df6ecab22f1f3728f9","befb5e146e599a9876757fb18ce5fa2e","*กำลังติดต่อเจ้าหน้าที่เพื่อแก้ไขปัญหา","0.00","2021-03-09 15:25:40");
INSERT INTO problem_comment VALUES(111,"IT2021-03-06-W27","5997108712eef9df6ecab22f1f3728f9","57995055c28df9e82476a54f852bd214","*เจ้าหน้าที่ดำเนินการแก้ไขแล้วตั้งแต่ วันที่ 09/03/2021","0.00","2021-03-09 15:30:28");
INSERT INTO problem_comment VALUES(112,"IT2021-03-09-W32","f21ada1d50ad6673ce1efb578513ead6","befb5e146e599a9876757fb18ce5fa2e",NULL,"0.00","2021-03-09 21:37:57");
INSERT INTO problem_comment VALUES(113,"IT2021-03-09-W32","f21ada1d50ad6673ce1efb578513ead6","2e34609794290a770cb0349119d78d21","แก้ไขเรียบร้อย
  เกิดจากถูกลากไปใส่โฟล์เดอร์Promotion","0.00","2021-03-09 21:43:18");
INSERT INTO problem_comment VALUES(114,"IT2021-03-09-W31","f21ada1d50ad6673ce1efb578513ead6","befb5e146e599a9876757fb18ce5fa2e","กำลังตรวจสอบ","0.00","2021-03-10 12:17:11");
INSERT INTO problem_comment VALUES(115,"IT2021-03-09-W31","f21ada1d50ad6673ce1efb578513ead6","f2c50a9a3e802c7be809f7f506b2b46a","รอแบตเตอรี","1,750.00","2021-03-10 17:13:29");
INSERT INTO problem_comment VALUES(116,"IT2021-03-10-W33","f21ada1d50ad6673ce1efb578513ead6","befb5e146e599a9876757fb18ce5fa2e","เจ้าหน้าที่จะRemoteเพื่อติดตั้ง","0.00","2021-03-10 18:49:11");
INSERT INTO problem_comment VALUES(117,"IT2021-03-11-W34","5997108712eef9df6ecab22f1f3728f9","befb5e146e599a9876757fb18ce5fa2e",NULL,"0.00","2021-03-11 14:37:48");
INSERT INTO problem_comment VALUES(118,"IT2021-03-11-W34","5997108712eef9df6ecab22f1f3728f9","befb5e146e599a9876757fb18ce5fa2e","*กำลังติดต่อเจ้าหน้าที่เพื่อแก้ไขปัญหา","0.00","2021-03-11 14:38:22");
INSERT INTO problem_comment VALUES(119,"IT2021-03-10-W33","","2e34609794290a770cb0349119d78d21","ติดตั้งDriver Printerแล้ว","0.00","2021-03-11 15:12:58");
INSERT INTO problem_comment VALUES(120,"IT2021-03-11-W34","f21ada1d50ad6673ce1efb578513ead6","2e34609794290a770cb0349119d78d21","Sync Cloudแล้ว","0.00","2021-03-11 15:37:45");
INSERT INTO problem_comment VALUES(121,"IT2021-03-12-W36","f21ada1d50ad6673ce1efb578513ead6","befb5e146e599a9876757fb18ce5fa2e",NULL,"0.00","2021-03-12 09:21:59");
INSERT INTO problem_comment VALUES(122,"IT2021-03-12-W37","5997108712eef9df6ecab22f1f3728f9","befb5e146e599a9876757fb18ce5fa2e","เจ้าหน้าที่จะรีโมทเข้าไปแก้ไข","0.00","2021-03-12 13:25:08");
INSERT INTO problem_comment VALUES(123,"IT2021-03-12-W38","23ae8fd2022f767f5c90728825132b90","befb5e146e599a9876757fb18ce5fa2e","กำลังดำเนินการแก้ไขค่ะ","0.00","2021-03-12 15:34:42");
INSERT INTO problem_comment VALUES(124,"IT2021-03-12-W37","5997108712eef9df6ecab22f1f3728f9","2e34609794290a770cb0349119d78d21","ซิงค์ Cloud เรียบร้อยแล้ว","0.00","2021-03-12 15:40:31");
INSERT INTO problem_comment VALUES(125,"IT2021-03-12-W38","23ae8fd2022f767f5c90728825132b90","2e34609794290a770cb0349119d78d21","ดำเนินการเรียบร้อย","0.00","2021-03-12 15:41:16");
INSERT INTO problem_comment VALUES(126,"IT2021-03-12-W39","5997108712eef9df6ecab22f1f3728f9","befb5e146e599a9876757fb18ce5fa2e","clould กำลังซิงค์","0.00","2021-03-12 15:47:59");
INSERT INTO problem_comment VALUES(127,"IT2021-03-12-W39","5997108712eef9df6ecab22f1f3728f9","2e34609794290a770cb0349119d78d21","ดำเนินการเรียบร้อย","0.00","2021-03-12 17:02:57");
INSERT INTO problem_comment VALUES(128,"IT2021-03-12-W35","f21ada1d50ad6673ce1efb578513ead6","befb5e146e599a9876757fb18ce5fa2e",NULL,"0.00","2021-03-12 17:11:53");
INSERT INTO problem_comment VALUES(129,"IT2021-03-13-W40","5997108712eef9df6ecab22f1f3728f9","befb5e146e599a9876757fb18ce5fa2e","แจ้งจนท.เพื่อรีบดำเนินการแก้ไขปัญหา","0.00","2021-03-13 15:41:19");
INSERT INTO problem_comment VALUES(130,"IT2021-03-13-W41","f21ada1d50ad6673ce1efb578513ead6","57995055c28df9e82476a54f852bd214","ซ้ำครับ","0.00","2021-03-13 16:58:30");
INSERT INTO problem_comment VALUES(131,"IT2021-03-14-W43","f21ada1d50ad6673ce1efb578513ead6","befb5e146e599a9876757fb18ce5fa2e",NULL,"0.00","2021-03-14 12:52:06");
INSERT INTO problem_comment VALUES(132,"IT2021-03-14-W43","f21ada1d50ad6673ce1efb578513ead6","2e34609794290a770cb0349119d78d21","แก้ไขแล้วครับ","0.00","2021-03-14 13:05:58");
INSERT INTO problem_comment VALUES(133,"IT2021-03-14-W44","f21ada1d50ad6673ce1efb578513ead6","befb5e146e599a9876757fb18ce5fa2e","จะดำเนินการแจ้งศูนย์บริการTrue Internetเพื่อเปลี่ยนRouterให้ครับ","0.00","2021-03-14 18:34:12");
INSERT INTO problem_comment VALUES(134,"IT2021-03-14-W44","5997108712eef9df6ecab22f1f3728f9","f2c50a9a3e802c7be809f7f506b2b46a","รอช่างTrueเข้าเปลี่ยนRouter","0.00","2021-03-15 09:48:29");
INSERT INTO problem_comment VALUES(135,"IT2021-03-15-W45","f21ada1d50ad6673ce1efb578513ead6","befb5e146e599a9876757fb18ce5fa2e",NULL,"0.00","2021-03-15 10:50:39");
INSERT INTO problem_comment VALUES(136,"IT2021-03-15-W45","f21ada1d50ad6673ce1efb578513ead6","2e34609794290a770cb0349119d78d21",NULL,"0.00","2021-03-15 10:51:38");
INSERT INTO problem_comment VALUES(137,"IT2021-03-05-W24","5997108712eef9df6ecab22f1f3728f9","2e34609794290a770cb0349119d78d21",NULL,"0.00","2021-03-15 14:17:40");
INSERT INTO problem_comment VALUES(138,"IT2021-03-15-W46","5997108712eef9df6ecab22f1f3728f9","befb5e146e599a9876757fb18ce5fa2e","กำลังดำเนินการแก้ไข","0.00","2021-03-15 14:19:38");
INSERT INTO problem_comment VALUES(139,"IT2021-03-15-W46","5997108712eef9df6ecab22f1f3728f9","5cafc78523f4f5e4812f9545b2ba5ae7","สาขา T21 ไม่กดซิงค์Clould","0.00","2021-03-15 14:51:20");
INSERT INTO problem_comment VALUES(140,"IT2021-03-15-W47","5997108712eef9df6ecab22f1f3728f9","2e34609794290a770cb0349119d78d21",NULL,"0.00","2021-03-15 17:24:56");
INSERT INTO problem_comment VALUES(141,"IT2021-03-14-W44","f21ada1d50ad6673ce1efb578513ead6","2e34609794290a770cb0349119d78d21","ช่างTrueติดตั้งRouterเรียบร้อย","0.00","2021-03-15 17:55:19");
INSERT INTO problem_comment VALUES(142,"IT2021-03-12-W35","f21ada1d50ad6673ce1efb578513ead6","2e34609794290a770cb0349119d78d21","Add Printer เรียบร้อยแล้ว","0.00","2021-03-16 15:08:08");
INSERT INTO problem_comment VALUES(143,"IT2021-03-16-W48","f21ada1d50ad6673ce1efb578513ead6","2e34609794290a770cb0349119d78d21",NULL,"0.00","2021-03-16 15:09:05");
INSERT INTO problem_comment VALUES(144,"IT2021-03-15-W46","f21ada1d50ad6673ce1efb578513ead6","2e34609794290a770cb0349119d78d21",NULL,"0.00","2021-03-16 15:49:20");
INSERT INTO problem_comment VALUES(145,"IT2021-03-16-W50","11c0009be8f4e977c6998edce04c9b2e","57995055c28df9e82476a54f852bd214","*รบกวนขอเหตุผลการดูกล้องค่ะ","0.00","2021-03-16 17:08:25");
INSERT INTO problem_comment VALUES(146,"IT2021-03-13-W42","f21ada1d50ad6673ce1efb578513ead6","befb5e146e599a9876757fb18ce5fa2e","ดำเนินการแจ้งช่างให้นำสายขึ้นไว้บนฝ้าแล้ว","0.00","2021-03-16 21:46:13");
INSERT INTO problem_comment VALUES(147,"IT2021-03-16-W51","5997108712eef9df6ecab22f1f3728f9","befb5e146e599a9876757fb18ce5fa2e","กำลังดำเนินการ","0.00","2021-03-17 08:25:27");
INSERT INTO problem_comment VALUES(148,"IT2021-03-16-W51","5997108712eef9df6ecab22f1f3728f9","2e34609794290a770cb0349119d78d21","กล้อง  CH01
https://youtu.be/R2zLtoR3Flc
กล้อง CH03
https://youtu.be/b0hheEQzrLs
กล้อง CH05
https://youtu.be/Zjk7CxetN90
","0.00","2021-03-17 11:31:40");
INSERT INTO problem_comment VALUES(149,"IT2021-03-17-W52","5997108712eef9df6ecab22f1f3728f9","befb5e146e599a9876757fb18ce5fa2e","จนท.กำลังดำเนินการ","0.00","2021-03-17 14:03:42");
INSERT INTO problem_comment VALUES(150,"IT2021-03-17-W52","5997108712eef9df6ecab22f1f3728f9","2e34609794290a770cb0349119d78d21","ดึงกล้องเสร็จเรียบร้อย","0.00","2021-03-17 16:48:01");
INSERT INTO problem_comment VALUES(151,"IT2021-03-17-W53","f21ada1d50ad6673ce1efb578513ead6","befb5e146e599a9876757fb18ce5fa2e",NULL,"0.00","2021-03-17 16:56:20");
INSERT INTO problem_comment VALUES(152,"IT2021-03-17-W53","f21ada1d50ad6673ce1efb578513ead6","2e34609794290a770cb0349119d78d21","ติดตั้งเรียบร้อยแล้ว","0.00","2021-03-17 17:51:45");
INSERT INTO problem_comment VALUES(153,"IT2021-03-17-W54","f21ada1d50ad6673ce1efb578513ead6","141f76f3b648cd1d8d21cceed6b3b418","ไอทีได้แจ้งTrue Internetแล้วช่างจะเข้าแก้ไขในวันที่ 19/3/64","0.00","2021-03-17 18:09:08");
INSERT INTO problem_comment VALUES(154,"IT2021-02-20-W07","ce63f18f7cf0a712fd4a2f47bc9ae14c","2e34609794290a770cb0349119d78d21","ส่งคืนเรียบร้อย","0.00","2021-03-18 13:14:14");
INSERT INTO problem_comment VALUES(155,"IT2021-03-03-W13","ce63f18f7cf0a712fd4a2f47bc9ae14c","befb5e146e599a9876757fb18ce5fa2e","ตรวจสอบแก้ไขเรียบร้อยค่ะ","0.00","2021-03-18 13:21:51");
INSERT INTO problem_comment VALUES(156,"IT2021-03-03-W13","ce63f18f7cf0a712fd4a2f47bc9ae14c","befb5e146e599a9876757fb18ce5fa2e","ปัญหาเกิดจากการเชื่อมต่อ Internet ค่ะ","0.00","2021-03-18 13:22:56");
INSERT INTO problem_comment VALUES(157,"IT2021-03-03-W13","ce63f18f7cf0a712fd4a2f47bc9ae14c","2e34609794290a770cb0349119d78d21",NULL,"0.00","2021-03-18 13:23:16");
INSERT INTO problem_comment VALUES(158,"IT2021-03-12-W36","ce63f18f7cf0a712fd4a2f47bc9ae14c","2e34609794290a770cb0349119d78d21",NULL,"0.00","2021-03-18 13:33:28");
INSERT INTO problem_comment VALUES(159,"IT2021-03-17-W54","ce63f18f7cf0a712fd4a2f47bc9ae14c","2e34609794290a770cb0349119d78d21","ดำเนินการเสร็จสิ้น","0.00","2021-03-18 14:27:24");
INSERT INTO problem_comment VALUES(160,"IT2021-03-18-W56","ce63f18f7cf0a712fd4a2f47bc9ae14c","befb5e146e599a9876757fb18ce5fa2e","ส่งเรื่องตรวจสอบกับศูนย์บริการ","0.00","2021-03-18 14:28:48");
INSERT INTO problem_comment VALUES(161,"IT2021-03-17-W55","ce63f18f7cf0a712fd4a2f47bc9ae14c","57995055c28df9e82476a54f852bd214","แจ้งผิดเว็บ เนื่องจากเป็นงานฝั่งช่าง","0.00","2021-03-18 14:31:15");
INSERT INTO problem_comment VALUES(162,"IT2021-03-16-W49","5997108712eef9df6ecab22f1f3728f9","2e34609794290a770cb0349119d78d21",NULL,"0.00","2021-03-18 17:31:27");
INSERT INTO problem_comment VALUES(163,"IT2021-03-09-W31","f21ada1d50ad6673ce1efb578513ead6","47ea92cfc142a08b40abe2ddbf8837a8","รอเครื่องเพื่อเปลี่ยนอะไหล่","1,750.00","2021-03-18 22:50:02");
INSERT INTO problem_comment VALUES(164,"IT2021-03-18-W57","f21ada1d50ad6673ce1efb578513ead6","57995055c28df9e82476a54f852bd214","แจ้งซ้ำ","0.00","2021-03-18 22:50:59");
INSERT INTO problem_comment VALUES(165,"IT2021-03-19-W58","f21ada1d50ad6673ce1efb578513ead6","2e34609794290a770cb0349119d78d21","แก้ไขระบบอินเตอร์เน็ตแล้ว","0.00","2021-03-19 12:23:42");
INSERT INTO problem_comment VALUES(166,"IT2021-03-18-W56","f21ada1d50ad6673ce1efb578513ead6","2e34609794290a770cb0349119d78d21",NULL,"0.00","2021-03-19 12:24:03");
INSERT INTO problem_comment VALUES(167,"IT2021-03-19-W59","11c0009be8f4e977c6998edce04c9b2e","2e34609794290a770cb0349119d78d21",NULL,"0.00","2021-03-19 19:24:55");
INSERT INTO problem_comment VALUES(168,"IT2021-03-20-W60","11c0009be8f4e977c6998edce04c9b2e","2e34609794290a770cb0349119d78d21","แก้ไขเสร็จเรียบร้อย","0.00","2021-03-20 16:59:32");
INSERT INTO problem_comment VALUES(169,"IT2021-03-21-W61","5997108712eef9df6ecab22f1f3728f9","27e87048f9283b6e13347df4388c98e9",NULL,"0.00","2021-03-22 11:21:34");
INSERT INTO problem_comment VALUES(170,"IT2021-03-09-W31","f21ada1d50ad6673ce1efb578513ead6","2e34609794290a770cb0349119d78d21","เปลี่ยนเรียบร้อยแล้ว","1,750.00","2021-03-22 11:31:33");
INSERT INTO problem_comment VALUES(171,"IT2021-03-21-W61","f21ada1d50ad6673ce1efb578513ead6","968d42cbf280bc3c26103d31955bae59",NULL,"0.00","2021-03-22 17:13:12");
INSERT INTO problem_comment VALUES(172,"IT2021-03-23-W63","5997108712eef9df6ecab22f1f3728f9","2e34609794290a770cb0349119d78d21","เจ้าหน้าที่ได้ทำการตรวจสอบและแก้ไขเรียบร้อย","0.00","2021-03-23 09:18:24");
INSERT INTO problem_comment VALUES(173,"IT2021-03-23-W64","f21ada1d50ad6673ce1efb578513ead6","befb5e146e599a9876757fb18ce5fa2e","เกิดจากWindows10 Updateครับ
เจ้าหน้าที่จะรีโมทแก้ไขให้ครับ","0.00","2021-03-23 14:18:51");
INSERT INTO problem_comment VALUES(174,"IT2021-03-21-W61","f21ada1d50ad6673ce1efb578513ead6","141f76f3b648cd1d8d21cceed6b3b418",NULL,"0.00","2021-03-23 14:21:24");
INSERT INTO problem_comment VALUES(175,"IT2021-03-23-W64","f21ada1d50ad6673ce1efb578513ead6","2e34609794290a770cb0349119d78d21","แก้ไขเรียบร้อยแล้ว","0.00","2021-03-23 14:49:17");
INSERT INTO problem_comment VALUES(176,"IT2021-03-23-W65","23ae8fd2022f767f5c90728825132b90","befb5e146e599a9876757fb18ce5fa2e","ดำเนินการแคปส่งรูปเรียบร้อยแล้วค่ะ","0.00","2021-03-23 15:34:32");
INSERT INTO problem_comment VALUES(177,"IT2021-03-22-W62","23ae8fd2022f767f5c90728825132b90","befb5e146e599a9876757fb18ce5fa2e","ส่งเรื่องให้เจ้าหน้ากราฟฟิกดำเนินการสร้างรูป","0.00","2021-03-23 15:36:29");
INSERT INTO problem_comment VALUES(178,"IT2021-03-23-W66","f21ada1d50ad6673ce1efb578513ead6","befb5e146e599a9876757fb18ce5fa2e","จะตรวจสอบในระบบCloudให้ครับ","0.00","2021-03-23 17:12:15");
INSERT INTO problem_comment VALUES(179,"IT2021-03-23-W66","f21ada1d50ad6673ce1efb578513ead6","2e34609794290a770cb0349119d78d21","แก้ไขแล้วครับ","0.00","2021-03-23 17:40:41");
INSERT INTO problem_comment VALUES(180,"IT2021-03-24-W67","5997108712eef9df6ecab22f1f3728f9","befb5e146e599a9876757fb18ce5fa2e","เจ้าหน้าที่กำลังดำเนินการแก้ไข","0.00","2021-03-24 08:45:51");
INSERT INTO problem_comment VALUES(181,"IT2021-03-24-W67","5997108712eef9df6ecab22f1f3728f9","5cafc78523f4f5e4812f9545b2ba5ae7","ทางเจ้าหน้าที่ได้ทำการตอบสอบข้อมูลดังกล่าวแล้ว เบื้องต้นไม่พบข้อมูลตามที่แจ้งมา ให้ทางสาขาทำการอัพโหลดข้อมูลลงใหม่อีกครั้ง","0.00","2021-03-24 13:19:47");
INSERT INTO problem_comment VALUES(182,"IT2021-03-24-W68","f21ada1d50ad6673ce1efb578513ead6","befb5e146e599a9876757fb18ce5fa2e",NULL,"0.00","2021-03-24 14:54:00");
INSERT INTO problem_comment VALUES(183,"IT2021-03-22-W62","23ae8fd2022f767f5c90728825132b90","befb5e146e599a9876757fb18ce5fa2e","ขอเลื่อนเนื่องจากเจ้าหน้าที่ติดงานด่วน","0.00","2021-03-24 16:25:14");
INSERT INTO problem_comment VALUES(184,"IT2021-03-23-W65","23ae8fd2022f767f5c90728825132b90","2e34609794290a770cb0349119d78d21",NULL,"0.00","2021-03-24 16:28:52");
INSERT INTO problem_comment VALUES(185,"IT2021-03-24-W68","f21ada1d50ad6673ce1efb578513ead6","2e34609794290a770cb0349119d78d21","เข้าไปแก้ไขแล้วครับ","0.00","2021-03-25 12:41:02");
INSERT INTO problem_comment VALUES(186,"IT2021-03-13-W40","f21ada1d50ad6673ce1efb578513ead6","2e34609794290a770cb0349119d78d21","เก็บเรียบร้อยแล้ว","0.00","2021-03-25 12:43:18");
INSERT INTO problem_comment VALUES(187,"IT2021-03-13-W42","f21ada1d50ad6673ce1efb578513ead6","2e34609794290a770cb0349119d78d21",NULL,"0.00","2021-03-25 12:43:42");
INSERT INTO problem_comment VALUES(188,"IT2021-03-25-W69","f21ada1d50ad6673ce1efb578513ead6","5cafc78523f4f5e4812f9545b2ba5ae7","ให้หน้าร้านสาขา MBP อัพโหลดเข้าCloudอีกครั้ง","0.00","2021-03-25 15:30:45");
INSERT INTO problem_comment VALUES(189,"IT2021-03-21-W61","f21ada1d50ad6673ce1efb578513ead6","f2c50a9a3e802c7be809f7f506b2b46a",NULL,"0.00","2021-03-25 17:09:06");
INSERT INTO problem_comment VALUES(190,"IT2021-03-21-W61","f21ada1d50ad6673ce1efb578513ead6","47ea92cfc142a08b40abe2ddbf8837a8","ส่งเครื่องไปWHแล้ว หากเครื่องถึงสาขาให้ส่งเครื่องสำลองกลับทันทีครับ","0.00","2021-03-26 10:18:06");
INSERT INTO problem_comment VALUES(191,"IT2021-03-26-W70","f21ada1d50ad6673ce1efb578513ead6","befb5e146e599a9876757fb18ce5fa2e",NULL,"0.00","2021-03-26 10:52:15");
INSERT INTO problem_comment VALUES(192,"IT2021-03-26-W77","f21ada1d50ad6673ce1efb578513ead6","141f76f3b648cd1d8d21cceed6b3b418",NULL,"0.00","2021-03-26 22:41:48");
INSERT INTO problem_comment VALUES(193,"IT2021-03-26-W77","f21ada1d50ad6673ce1efb578513ead6","2e34609794290a770cb0349119d78d21",NULL,"0.00","2021-03-26 22:42:15");
INSERT INTO problem_comment VALUES(194,"IT2021-03-27-W80","f21ada1d50ad6673ce1efb578513ead6","141f76f3b648cd1d8d21cceed6b3b418",NULL,"0.00","2021-03-27 14:30:32");
INSERT INTO problem_comment VALUES(195,"IT2021-03-29-W82","f21ada1d50ad6673ce1efb578513ead6","befb5e146e599a9876757fb18ce5fa2e",NULL,"0.00","2021-03-29 09:29:41");
INSERT INTO problem_comment VALUES(196,"IT2021-03-29-W82","f21ada1d50ad6673ce1efb578513ead6","141f76f3b648cd1d8d21cceed6b3b418","ไอทีได้ส่งเมลไปให้ทางบริษัท Microsoft เพื่อ Activate อาจใช้เวลา 48 ชม.","0.00","2021-03-29 09:44:40");
INSERT INTO problem_comment VALUES(197,"IT2021-03-27-W79","23ae8fd2022f767f5c90728825132b90","2e34609794290a770cb0349119d78d21",NULL,"0.00","2021-03-29 10:28:09");
INSERT INTO problem_comment VALUES(198,"IT2021-03-26-W76","23ae8fd2022f767f5c90728825132b90","2e34609794290a770cb0349119d78d21",NULL,"0.00","2021-03-29 10:29:02");
INSERT INTO problem_comment VALUES(199,"IT2021-03-26-W71","23ae8fd2022f767f5c90728825132b90","2e34609794290a770cb0349119d78d21",NULL,"0.00","2021-03-29 10:29:32");
INSERT INTO problem_comment VALUES(200,"IT2021-03-26-W72","23ae8fd2022f767f5c90728825132b90","2e34609794290a770cb0349119d78d21",NULL,"0.00","2021-03-29 10:30:05");
INSERT INTO problem_comment VALUES(201,"IT2021-03-26-W73","23ae8fd2022f767f5c90728825132b90","2e34609794290a770cb0349119d78d21",NULL,"0.00","2021-03-29 10:30:33");
INSERT INTO problem_comment VALUES(202,"IT2021-03-26-W74","23ae8fd2022f767f5c90728825132b90","2e34609794290a770cb0349119d78d21",NULL,"0.00","2021-03-29 10:30:55");
INSERT INTO problem_comment VALUES(203,"IT2021-03-26-W75","23ae8fd2022f767f5c90728825132b90","2e34609794290a770cb0349119d78d21",NULL,"0.00","2021-03-29 10:31:21");
INSERT INTO problem_comment VALUES(204,"IT2021-03-27-W80","f21ada1d50ad6673ce1efb578513ead6","2e34609794290a770cb0349119d78d21",NULL,"0.00","2021-03-29 12:22:11");
INSERT INTO problem_comment VALUES(205,"IT2021-03-26-W70","f21ada1d50ad6673ce1efb578513ead6","2e34609794290a770cb0349119d78d21",NULL,"0.00","2021-03-29 12:23:04");
INSERT INTO problem_comment VALUES(206,"IT2021-03-27-W81","ce63f18f7cf0a712fd4a2f47bc9ae14c","2e34609794290a770cb0349119d78d21","*แก้ไขเรียบร้อย","0.00","2021-03-29 17:58:09");
INSERT INTO problem_comment VALUES(207,"IT2021-03-29-W82","f21ada1d50ad6673ce1efb578513ead6","2e34609794290a770cb0349119d78d21",NULL,"0.00","2021-03-30 10:18:00");
INSERT INTO problem_comment VALUES(208,"IT2021-03-26-W78","f21ada1d50ad6673ce1efb578513ead6","2e34609794290a770cb0349119d78d21",NULL,"0.00","2021-03-30 10:19:36");
INSERT INTO problem_comment VALUES(209,"IT2021-03-31-W83","f21ada1d50ad6673ce1efb578513ead6","befb5e146e599a9876757fb18ce5fa2e",NULL,"0.00","2021-03-31 09:39:16");
INSERT INTO problem_comment VALUES(210,"IT2021-03-31-W83","f21ada1d50ad6673ce1efb578513ead6","2e34609794290a770cb0349119d78d21",NULL,"0.00","2021-03-31 10:01:39");
INSERT INTO problem_comment VALUES(211,"IT2021-03-31-W86","5997108712eef9df6ecab22f1f3728f9","befb5e146e599a9876757fb18ce5fa2e",NULL,"0.00","2021-03-31 16:58:10");
INSERT INTO problem_comment VALUES(212,"IT2021-03-31-W86","f21ada1d50ad6673ce1efb578513ead6","2e34609794290a770cb0349119d78d21",NULL,"0.00","2021-04-01 07:59:35");
INSERT INTO problem_comment VALUES(213,"IT2021-03-24-W67","f21ada1d50ad6673ce1efb578513ead6","2e34609794290a770cb0349119d78d21",NULL,"0.00","2021-04-01 08:01:00");
INSERT INTO problem_comment VALUES(214,"IT2021-03-25-W69","f21ada1d50ad6673ce1efb578513ead6","2e34609794290a770cb0349119d78d21",NULL,"0.00","2021-04-01 08:01:21");
INSERT INTO problem_comment VALUES(215,"IT2021-03-21-W61","f21ada1d50ad6673ce1efb578513ead6","2e34609794290a770cb0349119d78d21",NULL,"0.00","2021-04-01 08:01:57");
INSERT INTO problem_comment VALUES(216,"IT2021-04-01-W03","5997108712eef9df6ecab22f1f3728f9","befb5e146e599a9876757fb18ce5fa2e",NULL,"0.00","2021-04-01 13:26:14");
INSERT INTO problem_comment VALUES(217,"IT2021-03-31-W84","ce63f18f7cf0a712fd4a2f47bc9ae14c","2e34609794290a770cb0349119d78d21","แก้ไขเรียบร้อยค่ะ","0.00","2021-04-01 13:46:55");
INSERT INTO problem_comment VALUES(218,"IT2021-03-31-W87","f21ada1d50ad6673ce1efb578513ead6","2e34609794290a770cb0349119d78d21","ติดตั้งแล้วครับ","0.00","2021-04-01 13:48:50");
INSERT INTO problem_comment VALUES(219,"IT2021-03-31-W85","ce63f18f7cf0a712fd4a2f47bc9ae14c","2e34609794290a770cb0349119d78d21","เรียบร้อยค่ะ","0.00","2021-04-01 13:49:12");
INSERT INTO problem_comment VALUES(220,"IT2021-03-03-W19","ce63f18f7cf0a712fd4a2f47bc9ae14c","57995055c28df9e82476a54f852bd214","*เจ้าหน้าที่ขอดำเนินการเข้าหน้างาน","0.00","2021-04-01 13:52:21");
INSERT INTO problem_comment VALUES(221,"IT2021-04-01-W03","f21ada1d50ad6673ce1efb578513ead6","befb5e146e599a9876757fb18ce5fa2e",NULL,"0.00","2021-04-01 13:53:46");
INSERT INTO problem_comment VALUES(222,"IT2021-04-01-W02","23ae8fd2022f767f5c90728825132b90","2e34609794290a770cb0349119d78d21",NULL,"0.00","2021-04-01 13:54:32");
INSERT INTO problem_comment VALUES(223,"IT2021-04-01-W03","f21ada1d50ad6673ce1efb578513ead6","2e34609794290a770cb0349119d78d21",NULL,"0.00","2021-04-01 13:57:05");
INSERT INTO problem_comment VALUES(224,"IT2021-04-01-W01","f21ada1d50ad6673ce1efb578513ead6","141f76f3b648cd1d8d21cceed6b3b418",NULL,"0.00","2021-04-01 13:59:06");
INSERT INTO problem_comment VALUES(225,"IT2021-04-01-W01","f21ada1d50ad6673ce1efb578513ead6","2e34609794290a770cb0349119d78d21",NULL,"0.00","2021-04-01 17:05:10");
INSERT INTO problem_comment VALUES(226,"IT2021-04-01-W04","f21ada1d50ad6673ce1efb578513ead6","befb5e146e599a9876757fb18ce5fa2e",NULL,"0.00","2021-04-01 17:06:21");
INSERT INTO problem_comment VALUES(227,"IT2021-04-01-W05","23ae8fd2022f767f5c90728825132b90","2e34609794290a770cb0349119d78d21",NULL,"0.00","2021-04-01 19:50:31");
INSERT INTO problem_comment VALUES(228,"IT2021-04-01-W04","f21ada1d50ad6673ce1efb578513ead6","2e34609794290a770cb0349119d78d21",NULL,"0.00","2021-04-02 11:48:49");
INSERT INTO problem_comment VALUES(229,"IT2021-04-02-W11","f21ada1d50ad6673ce1efb578513ead6","befb5e146e599a9876757fb18ce5fa2e",NULL,"0.00","2021-04-02 12:00:33");
INSERT INTO problem_comment VALUES(230,"IT2021-04-02-W11","f21ada1d50ad6673ce1efb578513ead6","2e34609794290a770cb0349119d78d21",NULL,"0.00","2021-04-02 12:05:50");
INSERT INTO problem_comment VALUES(231,"IT2021-04-02-W15","f21ada1d50ad6673ce1efb578513ead6","befb5e146e599a9876757fb18ce5fa2e",NULL,"0.00","2021-04-02 13:28:25");
INSERT INTO problem_comment VALUES(232,"IT2021-04-02-W15","f21ada1d50ad6673ce1efb578513ead6","2e34609794290a770cb0349119d78d21",NULL,"0.00","2021-04-02 13:31:10");
INSERT INTO problem_comment VALUES(233,"IT2021-04-02-W10","f21ada1d50ad6673ce1efb578513ead6","befb5e146e599a9876757fb18ce5fa2e",NULL,"0.00","2021-04-02 13:33:43");
INSERT INTO problem_comment VALUES(234,"IT2021-04-02-W09","f21ada1d50ad6673ce1efb578513ead6","2e34609794290a770cb0349119d78d21",NULL,"0.00","2021-04-02 14:21:36");
INSERT INTO problem_comment VALUES(235,"IT2021-04-02-W10","f21ada1d50ad6673ce1efb578513ead6","2e34609794290a770cb0349119d78d21",NULL,"0.00","2021-04-02 14:22:11");
INSERT INTO problem_comment VALUES(236,"IT2021-04-02-W08","f21ada1d50ad6673ce1efb578513ead6","befb5e146e599a9876757fb18ce5fa2e",NULL,"0.00","2021-04-02 14:22:34");
INSERT INTO problem_comment VALUES(237,"IT2021-04-02-W08","f21ada1d50ad6673ce1efb578513ead6","befb5e146e599a9876757fb18ce5fa2e","แก้ไขเรียบร้อย","0.00","2021-04-02 14:25:06");
INSERT INTO problem_comment VALUES(238,"IT2021-04-02-W08","f21ada1d50ad6673ce1efb578513ead6","2e34609794290a770cb0349119d78d21",NULL,"0.00","2021-04-02 14:25:19");
INSERT INTO problem_comment VALUES(239,"IT2021-04-02-W17","f21ada1d50ad6673ce1efb578513ead6","befb5e146e599a9876757fb18ce5fa2e",NULL,"0.00","2021-04-02 15:04:46");
INSERT INTO problem_comment VALUES(240,"IT2021-04-02-W17","f21ada1d50ad6673ce1efb578513ead6","141f76f3b648cd1d8d21cceed6b3b418",NULL,"0.00","2021-04-02 15:05:02");
INSERT INTO problem_comment VALUES(241,"IT2021-04-02-W16","23ae8fd2022f767f5c90728825132b90","2e34609794290a770cb0349119d78d21",NULL,"0.00","2021-04-02 15:07:27");
INSERT INTO problem_comment VALUES(242,"IT2021-04-02-W14","23ae8fd2022f767f5c90728825132b90","2e34609794290a770cb0349119d78d21",NULL,"0.00","2021-04-02 15:08:17");
INSERT INTO problem_comment VALUES(243,"IT2021-04-02-W18","11c0009be8f4e977c6998edce04c9b2e","2e34609794290a770cb0349119d78d21","ปรับเมนูเรียบร้อย","0.00","2021-04-04 17:03:45");
INSERT INTO problem_comment VALUES(244,"IT2021-03-31-W88","11c0009be8f4e977c6998edce04c9b2e","befb5e146e599a9876757fb18ce5fa2e","กำลังทยอยใส่ข้อมูล","0.00","2021-04-04 17:05:44");
INSERT INTO problem_comment VALUES(245,"IT2021-03-31-W88","11c0009be8f4e977c6998edce04c9b2e","f2c50a9a3e802c7be809f7f506b2b46a","เนื่องจากระบบจ่ายไฟอุปกรณ์เสีย อยู่ขั้นตอนการสั่งซื้ออะไหล่ค่ะ","0.00","2021-04-04 17:08:50");
INSERT INTO problem_comment VALUES(246,"IT2021-03-22-W62","11c0009be8f4e977c6998edce04c9b2e","befb5e146e599a9876757fb18ce5fa2e","กำลังทยอยอัพรูปเข้าระบบค่ะ","0.00","2021-04-04 17:10:06");
INSERT INTO problem_comment VALUES(247,"IT2021-04-01-W06","11c0009be8f4e977c6998edce04c9b2e","2e34609794290a770cb0349119d78d21","ปรับส่วนลดเรียบร้อยค่ะ","0.00","2021-04-04 17:38:15");
INSERT INTO problem_comment VALUES(248,"IT2021-04-02-W12","11c0009be8f4e977c6998edce04c9b2e","2e34609794290a770cb0349119d78d21","แก้ไขชื่อเรียบร้อยค่ะ","0.00","2021-04-04 17:43:36");
INSERT INTO problem_comment VALUES(249,"IT2021-04-02-W13","11c0009be8f4e977c6998edce04c9b2e","141f76f3b648cd1d8d21cceed6b3b418","กำลังตรวจสอบค่ะ","0.00","2021-04-04 17:48:24");
INSERT INTO problem_comment VALUES(250,"IT2021-04-02-W17","11c0009be8f4e977c6998edce04c9b2e","2e34609794290a770cb0349119d78d21","แก้ไขเสร็จสิ้น ปัญหาเกิดช่วงปรับปรุงระบบ IT","0.00","2021-04-04 17:52:43");
INSERT INTO problem_comment VALUES(251,"IT2021-04-01-W07","11c0009be8f4e977c6998edce04c9b2e","2e34609794290a770cb0349119d78d21","ตั้ง","0.00","2021-04-04 17:55:17");
INSERT INTO problem_comment VALUES(252,"IT2021-04-04-W20","11c0009be8f4e977c6998edce04c9b2e","2e34609794290a770cb0349119d78d21","เพิ่มเรียบร้อยค่ะ","0.00","2021-04-04 19:19:47");
INSERT INTO problem_comment VALUES(253,"IT2021-04-05-W21","f21ada1d50ad6673ce1efb578513ead6","befb5e146e599a9876757fb18ce5fa2e","ขออนุญาติรีโมท(vnc)","0.00","2021-04-05 08:51:27");
INSERT INTO problem_comment VALUES(254,"IT2021-04-05-W21","f21ada1d50ad6673ce1efb578513ead6","57995055c28df9e82476a54f852bd214","ใช้งานได้ปกติ","0.00","2021-04-05 08:57:40");
INSERT INTO problem_comment VALUES(255,"IT2021-03-31-W88","f21ada1d50ad6673ce1efb578513ead6","47ea92cfc142a08b40abe2ddbf8837a8",NULL,"0.00","2021-04-05 14:45:37");
INSERT INTO problem_comment VALUES(256,"IT2021-04-05-W22","23ae8fd2022f767f5c90728825132b90","2e34609794290a770cb0349119d78d21",NULL,"0.00","2021-04-05 14:50:45");
INSERT INTO problem_comment VALUES(257,"IT2021-03-22-W62","23ae8fd2022f767f5c90728825132b90","2e34609794290a770cb0349119d78d21",NULL,"0.00","2021-04-05 14:54:06");
INSERT INTO problem_comment VALUES(258,"IT2021-04-02-W19","5997108712eef9df6ecab22f1f3728f9","befb5e146e599a9876757fb18ce5fa2e","แจ้งทางร้านให้ส่งโทรศัพท์พร้อมกล่องอุปกรณ์กลับมาที่ HO แล้วทางเจ้าหน้าที่จะทำการส่งเคลมให้","0.00","2021-04-05 16:32:46");
INSERT INTO problem_comment VALUES(259,"IT2021-04-05-W23","5997108712eef9df6ecab22f1f3728f9","57995055c28df9e82476a54f852bd214","เจ้าหน้าที่ฝ่ายบุคคลแจ้งให้ยกเลิก","0.00","2021-04-05 17:11:37");
INSERT INTO problem_comment VALUES(260,"IT2021-04-02-W19","5997108712eef9df6ecab22f1f3728f9","5cafc78523f4f5e4812f9545b2ba5ae7","อยู่ระหว่างรอสาขาส่งเครื่องกลับมาที่ IT","0.00","2021-04-06 14:56:40");
INSERT INTO problem_comment VALUES(261,"IT2021-04-06-W25","f21ada1d50ad6673ce1efb578513ead6","befb5e146e599a9876757fb18ce5fa2e",NULL,"0.00","2021-04-06 17:30:16");
INSERT INTO problem_comment VALUES(262,"IT2021-04-06-W25","f21ada1d50ad6673ce1efb578513ead6","2e34609794290a770cb0349119d78d21","แก้ไขแล้ว","0.00","2021-04-06 17:30:52");
INSERT INTO problem_comment VALUES(263,"IT2021-04-07-W28","f21ada1d50ad6673ce1efb578513ead6","befb5e146e599a9876757fb18ce5fa2e",NULL,"0.00","2021-04-07 09:12:59");
INSERT INTO problem_comment VALUES(264,"IT2021-04-07-W28","f21ada1d50ad6673ce1efb578513ead6","2e34609794290a770cb0349119d78d21","แก้ไขแล้ว","0.00","2021-04-07 09:25:47");
INSERT INTO problem_comment VALUES(265,"IT2021-04-05-W24","5997108712eef9df6ecab22f1f3728f9","befb5e146e599a9876757fb18ce5fa2e","กำลังดำเนินการแก้ไข","0.00","2021-04-07 10:52:06");
INSERT INTO problem_comment VALUES(266,"IT2021-04-06-W27","23ae8fd2022f767f5c90728825132b90","2e34609794290a770cb0349119d78d21",NULL,"0.00","2021-04-07 11:01:03");
INSERT INTO problem_comment VALUES(267,"IT2021-04-05-W24","5997108712eef9df6ecab22f1f3728f9","2e34609794290a770cb0349119d78d21",NULL,"0.00","2021-04-07 13:05:33");
INSERT INTO problem_comment VALUES(268,"IT2021-04-07-W30","f21ada1d50ad6673ce1efb578513ead6","27e87048f9283b6e13347df4388c98e9","ฝากเครื่องสำรองไปกับลุง ครับผม","0.00","2021-04-07 17:36:47");
INSERT INTO problem_comment VALUES(269,"IT2021-04-07-W31","f21ada1d50ad6673ce1efb578513ead6","befb5e146e599a9876757fb18ce5fa2e",NULL,"0.00","2021-04-07 20:41:21");
INSERT INTO problem_comment VALUES(270,"IT2021-04-07-W31","f21ada1d50ad6673ce1efb578513ead6","2e34609794290a770cb0349119d78d21","แก้ไขแล้วครับ","0.00","2021-04-07 21:06:47");
INSERT INTO problem_comment VALUES(271,"IT2021-04-07-W29","5997108712eef9df6ecab22f1f3728f9","befb5e146e599a9876757fb18ce5fa2e","กำลังดำเนินการแก้ไข เหลือดึงข้อมูลของวันที่ 30","0.00","2021-04-08 08:25:59");
INSERT INTO problem_comment VALUES(272,"IT2021-04-08-W32","5997108712eef9df6ecab22f1f3728f9","befb5e146e599a9876757fb18ce5fa2e","เจ้าหน้าที่กำลังเร่งแก้ไขอยู่ คาดว่าจะกลับมาใช้ได้ตอนประมาณ 15.30น.","0.00","2021-04-08 13:12:30");
INSERT INTO problem_comment VALUES(273,"IT2021-04-07-W29","5997108712eef9df6ecab22f1f3728f9","2e34609794290a770cb0349119d78d21","กู้ข้อมูลเสร็จเรียนร้อย","0.00","2021-04-08 13:51:54");
INSERT INTO problem_comment VALUES(274,"IT2021-04-08-W33","f21ada1d50ad6673ce1efb578513ead6","141f76f3b648cd1d8d21cceed6b3b418",NULL,"0.00","2021-04-08 14:20:08");
INSERT INTO problem_comment VALUES(275,"IT2021-04-08-W34","f21ada1d50ad6673ce1efb578513ead6","befb5e146e599a9876757fb18ce5fa2e",NULL,"0.00","2021-04-08 14:21:48");
INSERT INTO problem_comment VALUES(276,"IT2021-04-08-W34","f21ada1d50ad6673ce1efb578513ead6","2e34609794290a770cb0349119d78d21","เรียบร้อยแล้วครับ","0.00","2021-04-08 14:33:05");
INSERT INTO problem_comment VALUES(277,"IT2021-04-06-W26","ce63f18f7cf0a712fd4a2f47bc9ae14c","2e34609794290a770cb0349119d78d21","แก้ไขเสร็จเรียบร้อยค่ะ","0.00","2021-04-08 14:50:29");
INSERT INTO problem_comment VALUES(278,"IT2021-04-08-W35","f21ada1d50ad6673ce1efb578513ead6","2e34609794290a770cb0349119d78d21","Add ให้แล้วครับ","0.00","2021-04-08 15:08:49");
INSERT INTO problem_comment VALUES(279,"IT2021-04-08-W33","f21ada1d50ad6673ce1efb578513ead6","47ea92cfc142a08b40abe2ddbf8837a8","ช่างทรูจะเข้าแก้ไขในวันที่9/4/64ครับ","0.00","2021-04-08 15:50:24");
INSERT INTO problem_comment VALUES(280,"IT2021-04-08-W32","5997108712eef9df6ecab22f1f3728f9","2e34609794290a770cb0349119d78d21",NULL,"0.00","2021-04-08 17:09:44");
INSERT INTO problem_comment VALUES(281,"IT2021-04-09-W38","11c0009be8f4e977c6998edce04c9b2e","2e34609794290a770cb0349119d78d21","Email: noberest.004@gmail.com
Pass : Cr9123456","0.00","2021-04-09 10:59:46");
INSERT INTO problem_comment VALUES(282,"IT2021-04-07-W30","11c0009be8f4e977c6998edce04c9b2e","968d42cbf280bc3c26103d31955bae59","สาขาได้รับเครื่องสำรองเรียบร้อย","0.00","2021-04-09 11:02:46");
INSERT INTO problem_comment VALUES(283,"IT2021-04-09-W37","f21ada1d50ad6673ce1efb578513ead6","befb5e146e599a9876757fb18ce5fa2e",NULL,"0.00","2021-04-09 12:23:44");
INSERT INTO problem_comment VALUES(284,"IT2021-04-09-W37","f21ada1d50ad6673ce1efb578513ead6","2e34609794290a770cb0349119d78d21","แก้ไขเรียบร้อยครับ","0.00","2021-04-09 12:40:45");
INSERT INTO problem_comment VALUES(285,"IT2021-04-07-W30","f21ada1d50ad6673ce1efb578513ead6","f2c50a9a3e802c7be809f7f506b2b46a","ต้องเปลี่ยน อุปกรณ์บันทึกข้อมูล(HDD)","0.00","2021-04-09 14:05:20");
INSERT INTO problem_comment VALUES(286,"IT2021-04-08-W36","5997108712eef9df6ecab22f1f3728f9","2e34609794290a770cb0349119d78d21",NULL,"0.00","2021-04-09 16:02:57");
INSERT INTO problem_comment VALUES(287,"IT2021-04-10-W40","11c0009be8f4e977c6998edce04c9b2e","141f76f3b648cd1d8d21cceed6b3b418","วันที่ 10/4/64 เวลาประมาณ 8.00-10.00 น.","0.00","2021-04-10 10:25:16");
INSERT INTO problem_comment VALUES(288,"IT2021-04-12-W44","5997108712eef9df6ecab22f1f3728f9","befb5e146e599a9876757fb18ce5fa2e","เจ้าหน้าที่แก้ไขให้เรียบร้อยแล้ว ลองเข้าอีกทีนะคะ","0.00","2021-04-12 10:53:28");
INSERT INTO problem_comment VALUES(289,"IT2021-04-10-W42","11c0009be8f4e977c6998edce04c9b2e","2e34609794290a770cb0349119d78d21","ดำเนินการเรียบร้อย","0.00","2021-04-12 13:38:45");
INSERT INTO problem_comment VALUES(290,"IT2021-03-31-W88","11c0009be8f4e977c6998edce04c9b2e","47ea92cfc142a08b40abe2ddbf8837a8","เนื่องจากติดวันหยุดทำให้คิวช่างเข้าหน้างานไม่ได้ จึงขอเลื่อนคิวกำหนดงาน 12/04/2021","0.00","2021-04-12 13:41:13");
INSERT INTO problem_comment VALUES(291,"IT2021-04-10-W43","5997108712eef9df6ecab22f1f3728f9","befb5e146e599a9876757fb18ce5fa2e",NULL,"0.00","2021-04-12 13:49:58");
INSERT INTO problem_comment VALUES(292,"IT2021-04-10-W41","11c0009be8f4e977c6998edce04c9b2e","2e34609794290a770cb0349119d78d21","เรียบร้อยค่ะ","0.00","2021-04-12 13:54:40");
INSERT INTO problem_comment VALUES(293,"IT2021-04-12-W44","11c0009be8f4e977c6998edce04c9b2e","57995055c28df9e82476a54f852bd214","เนื่องจากใช้งานได้ปกติ","0.00","2021-04-12 13:57:05");
INSERT INTO problem_comment VALUES(294,"IT2021-04-10-W40","11c0009be8f4e977c6998edce04c9b2e","2e34609794290a770cb0349119d78d21","เรียบร้อยค่ะ","0.00","2021-04-12 14:14:49");
INSERT INTO problem_comment VALUES(295,"IT2021-04-10-W43","5997108712eef9df6ecab22f1f3728f9","2e34609794290a770cb0349119d78d21",NULL,"0.00","2021-04-12 17:04:10");
INSERT INTO problem_comment VALUES(296,"IT2021-04-09-W39","f21ada1d50ad6673ce1efb578513ead6","befb5e146e599a9876757fb18ce5fa2e",NULL,"0.00","2021-04-12 18:00:09");
INSERT INTO problem_comment VALUES(297,"IT2021-04-08-W33","5997108712eef9df6ecab22f1f3728f9","2e34609794290a770cb0349119d78d21",NULL,"0.00","2021-04-13 15:44:06");
INSERT INTO problem_comment VALUES(298,"IT2021-04-08-W33","","2e34609794290a770cb0349119d78d21",NULL,"0.00","2021-04-14 08:13:20");
INSERT INTO problem_comment VALUES(299,"IT2021-04-14-W47","11c0009be8f4e977c6998edce04c9b2e","2e34609794290a770cb0349119d78d21","แก้ไขระบบเรียบร้อย","0.00","2021-04-14 12:58:45");
INSERT INTO problem_comment VALUES(300,"IT2021-04-13-W46","11c0009be8f4e977c6998edce04c9b2e","5cafc78523f4f5e4812f9545b2ba5ae7","กำลังปิดปรับปรุงระบบเมลล์","0.00","2021-04-14 12:59:28");
INSERT INTO problem_comment VALUES(301,"IT2021-04-14-W48","f21ada1d50ad6673ce1efb578513ead6","5cafc78523f4f5e4812f9545b2ba5ae7","เนื่องจาก ระบบหลังบ้านทำการปรับปรุง","0.00","2021-04-15 09:41:19");
INSERT INTO problem_comment VALUES(302,"IT2021-04-12-W45","f21ada1d50ad6673ce1efb578513ead6","2e34609794290a770cb0349119d78d21","เจ้าหน้าได้ปรับปรุงแล้ว","0.00","2021-04-15 16:33:44");
INSERT INTO problem_comment VALUES(303,"IT2021-04-16-W50","5997108712eef9df6ecab22f1f3728f9","befb5e146e599a9876757fb18ce5fa2e",NULL,"0.00","2021-04-16 11:20:42");
INSERT INTO problem_comment VALUES(304,"IT2021-04-16-W51","ce63f18f7cf0a712fd4a2f47bc9ae14c","2e34609794290a770cb0349119d78d21","ดำเนินการเรียบร้อย","0.00","2021-04-16 13:34:43");
INSERT INTO problem_comment VALUES(305,"IT2021-04-09-W39","f21ada1d50ad6673ce1efb578513ead6","2e34609794290a770cb0349119d78d21","แก้ไขsyncปกติแล้ว","0.00","2021-04-16 13:38:07");
INSERT INTO problem_comment VALUES(306,"IT2021-04-15-W49","ce63f18f7cf0a712fd4a2f47bc9ae14c","141f76f3b648cd1d8d21cceed6b3b418","ตรวจสอบพบไฟล์ซ้ำใสระบบ","0.00","2021-04-16 13:41:08");
INSERT INTO problem_comment VALUES(307,"IT2021-04-02-W13","11c0009be8f4e977c6998edce04c9b2e","57995055c28df9e82476a54f852bd214","แก้ไขในระบบไม่ได้","0.00","2021-04-16 13:55:46");
INSERT INTO problem_comment VALUES(308,"IT2021-04-16-W50","5997108712eef9df6ecab22f1f3728f9","2e34609794290a770cb0349119d78d21",NULL,"0.00","2021-04-16 14:27:51");
INSERT INTO problem_comment VALUES(309,"IT2021-04-15-W49","5997108712eef9df6ecab22f1f3728f9","2e34609794290a770cb0349119d78d21",NULL,"0.00","2021-04-16 15:46:39");
INSERT INTO problem_comment VALUES(310,"IT2021-04-16-W52","5997108712eef9df6ecab22f1f3728f9","141f76f3b648cd1d8d21cceed6b3b418",NULL,"0.00","2021-04-16 15:47:55");
INSERT INTO problem_comment VALUES(311,"IT2021-04-19-W56","5997108712eef9df6ecab22f1f3728f9","befb5e146e599a9876757fb18ce5fa2e",NULL,"0.00","2021-04-19 09:34:39");
INSERT INTO problem_comment VALUES(312,"IT2021-04-19-W56","5997108712eef9df6ecab22f1f3728f9","2e34609794290a770cb0349119d78d21",NULL,"0.00","2021-04-19 09:34:49");
INSERT INTO problem_comment VALUES(313,"IT2021-04-19-W55","11c0009be8f4e977c6998edce04c9b2e","2e34609794290a770cb0349119d78d21","เรียบร้อย","0.00","2021-04-19 10:34:53");
INSERT INTO problem_comment VALUES(314,"IT2021-03-31-W88","11c0009be8f4e977c6998edce04c9b2e","47ea92cfc142a08b40abe2ddbf8837a8","รอคิวช่าเข้าตรวจสอบกล้องแคชเชียร์ และโซนอื่นๆ วันที่ 20/04/64","0.00","2021-04-19 10:41:29");
INSERT INTO problem_comment VALUES(315,"IT2021-04-19-W57","","befb5e146e599a9876757fb18ce5fa2e",NULL,"0.00","2021-04-19 12:16:43");
INSERT INTO problem_comment VALUES(316,"IT2021-04-19-W57","5997108712eef9df6ecab22f1f3728f9","2e34609794290a770cb0349119d78d21",NULL,"0.00","2021-04-19 12:16:58");
INSERT INTO problem_comment VALUES(317,"IT2021-04-19-W58","5997108712eef9df6ecab22f1f3728f9","befb5e146e599a9876757fb18ce5fa2e",NULL,"0.00","2021-04-19 14:56:59");
INSERT INTO problem_comment VALUES(318,"IT2021-04-19-W58","5997108712eef9df6ecab22f1f3728f9","2e34609794290a770cb0349119d78d21",NULL,"0.00","2021-04-19 14:57:09");
INSERT INTO problem_comment VALUES(319,"IT2021-04-19-W54","f21ada1d50ad6673ce1efb578513ead6","befb5e146e599a9876757fb18ce5fa2e",NULL,"0.00","2021-04-19 16:13:24");
INSERT INTO problem_comment VALUES(320,"IT2021-04-19-W54","f21ada1d50ad6673ce1efb578513ead6","2e34609794290a770cb0349119d78d21",NULL,"0.00","2021-04-19 16:13:38");
INSERT INTO problem_comment VALUES(321,"IT2021-04-16-W52","f21ada1d50ad6673ce1efb578513ead6","2e34609794290a770cb0349119d78d21",NULL,"0.00","2021-04-19 17:12:23");
INSERT INTO problem_comment VALUES(322,"IT2021-04-02-W19","5997108712eef9df6ecab22f1f3728f9","141f76f3b648cd1d8d21cceed6b3b418","เจ้าหน้าที่ได้รับโทรศัพท์แล้ว ตอนนี้อยู่ในขั้นทดสอบเครื่อง ว่ามีอาการแบบที่ทางร้านแจ้งไหม ถ้ามีอาการแบบที่ทางร้านแจ้ง เจ้าหน้าที่จะดำเนินการในขั้นต่อไป ","0.00","2021-04-20 10:47:54");
INSERT INTO problem_comment VALUES(323,"IT2021-04-19-W59","f21ada1d50ad6673ce1efb578513ead6","befb5e146e599a9876757fb18ce5fa2e",NULL,"0.00","2021-04-20 11:37:06");
INSERT INTO problem_comment VALUES(324,"IT2021-04-19-W59","f21ada1d50ad6673ce1efb578513ead6","2e34609794290a770cb0349119d78d21",NULL,"0.00","2021-04-20 11:37:21");
INSERT INTO problem_comment VALUES(325,"IT2021-04-07-W30","f21ada1d50ad6673ce1efb578513ead6","47ea92cfc142a08b40abe2ddbf8837a8",NULL,"0.00","2021-04-20 16:34:33");
INSERT INTO problem_comment VALUES(326,"IT2021-04-20-W60","f21ada1d50ad6673ce1efb578513ead6","befb5e146e599a9876757fb18ce5fa2e",NULL,"0.00","2021-04-20 17:11:57");
INSERT INTO problem_comment VALUES(327,"IT2021-04-20-W60","f21ada1d50ad6673ce1efb578513ead6","27e87048f9283b6e13347df4388c98e9",NULL,"0.00","2021-04-21 08:35:48");
INSERT INTO problem_comment VALUES(328,"IT2021-04-14-W48","11c0009be8f4e977c6998edce04c9b2e","befb5e146e599a9876757fb18ce5fa2e","ตอนนี้ปรับปรุงระบบเรียบร้อยค่ะ","0.00","2021-04-21 09:33:37");
INSERT INTO problem_comment VALUES(329,"IT2021-04-13-W46","11c0009be8f4e977c6998edce04c9b2e","5cafc78523f4f5e4812f9545b2ba5ae7","ปรับปรุงระบบเรียบร้อย","0.00","2021-04-21 09:35:18");
INSERT INTO problem_comment VALUES(330,"IT2021-04-13-W46","11c0009be8f4e977c6998edce04c9b2e","2e34609794290a770cb0349119d78d21",NULL,"0.00","2021-04-21 09:35:39");
INSERT INTO problem_comment VALUES(331,"IT2021-04-21-W61","5997108712eef9df6ecab22f1f3728f9","befb5e146e599a9876757fb18ce5fa2e",NULL,"0.00","2021-04-21 11:15:29");
INSERT INTO problem_comment VALUES(332,"IT2021-04-21-W62","f21ada1d50ad6673ce1efb578513ead6","befb5e146e599a9876757fb18ce5fa2e",NULL,"0.00","2021-04-21 11:30:47");
INSERT INTO problem_comment VALUES(333,"IT2021-04-21-W62","f21ada1d50ad6673ce1efb578513ead6","2e34609794290a770cb0349119d78d21",NULL,"0.00","2021-04-21 11:30:59");
INSERT INTO problem_comment VALUES(334,"IT2021-04-21-W61","f21ada1d50ad6673ce1efb578513ead6","2e34609794290a770cb0349119d78d21","ติดตั้งแล้ว","0.00","2021-04-21 11:31:18");
INSERT INTO problem_comment VALUES(335,"IT2021-04-21-W63","f21ada1d50ad6673ce1efb578513ead6","befb5e146e599a9876757fb18ce5fa2e",NULL,"0.00","2021-04-21 17:59:45");
INSERT INTO problem_comment VALUES(336,"IT2021-04-21-W63","f21ada1d50ad6673ce1efb578513ead6","2e34609794290a770cb0349119d78d21","เรียบร้อย","0.00","2021-04-21 18:58:54");
INSERT INTO problem_comment VALUES(337,"IT2021-04-21-W64","5997108712eef9df6ecab22f1f3728f9","befb5e146e599a9876757fb18ce5fa2e",NULL,"0.00","2021-04-22 08:31:07");
INSERT INTO problem_comment VALUES(338,"IT2021-04-21-W64","5997108712eef9df6ecab22f1f3728f9","2e34609794290a770cb0349119d78d21",NULL,"0.00","2021-04-22 09:16:01");
INSERT INTO problem_comment VALUES(339,"IT2021-04-22-W67","11c0009be8f4e977c6998edce04c9b2e","2e34609794290a770cb0349119d78d21","086-3277999 รหัสค่ะ","0.00","2021-04-22 12:31:33");
INSERT INTO problem_comment VALUES(340,"IT2021-04-22-W68","5997108712eef9df6ecab22f1f3728f9","5cafc78523f4f5e4812f9545b2ba5ae7","แนะนำให้ทางร้านเช็คทำความสะอาด หาผ้าซับ จนกว่าหมึกที่เติมล้นออกมา จะหมดเพราะทางร้านได้แจ้งว่า ได้ทำการเติมหมึกจนล้น จึงทำให้มีหมึกซึมออกมา  หากได้ทำตามคำแนะนำที่ไอทีบอกไปแล้ว แต่หมึกยังไหลอยู่ ให้แจ้งกลับมาในระบบอีกครั้ง","0.00","2021-04-22 14:31:14");
INSERT INTO problem_comment VALUES(341,"IT2021-04-22-W65","5997108712eef9df6ecab22f1f3728f9","befb5e146e599a9876757fb18ce5fa2e",NULL,"0.00","2021-04-22 14:31:54");
INSERT INTO problem_comment VALUES(342,"IT2021-04-22-W66","5997108712eef9df6ecab22f1f3728f9","befb5e146e599a9876757fb18ce5fa2e",NULL,"0.00","2021-04-22 14:33:25");
INSERT INTO problem_comment VALUES(343,"IT2021-04-22-W66","5997108712eef9df6ecab22f1f3728f9","2e34609794290a770cb0349119d78d21",NULL,"0.00","2021-04-22 14:33:45");
INSERT INTO problem_comment VALUES(344,"IT2021-04-22-W70","11c0009be8f4e977c6998edce04c9b2e","2e34609794290a770cb0349119d78d21","เพิ่มเรียบรัอยค่ะ","0.00","2021-04-22 18:39:19");
INSERT INTO problem_comment VALUES(345,"IT2021-04-22-W69","ce63f18f7cf0a712fd4a2f47bc9ae14c","2e34609794290a770cb0349119d78d21","ใส่รหัสผ่านผิด แก้ไขเรียบร้อยค่ะ","0","2021-04-22 20:04:44");
INSERT INTO problem_comment VALUES(346,"IT2021-04-22-W65","5997108712eef9df6ecab22f1f3728f9","141f76f3b648cd1d8d21cceed6b3b418","แจ้งเจ้าหน้าที่ทางบริษัท โปรซอฟต์  ให้ทำการแก้ไขให้เรียบร้อย เจ้าหน้าที่จะจะรีโมทมาทำให้","0.00","2021-04-23 08:08:34");
INSERT INTO problem_comment VALUES(347,"IT2021-04-23-W71","f21ada1d50ad6673ce1efb578513ead6","befb5e146e599a9876757fb18ce5fa2e",NULL,"0.00","2021-04-23 16:27:18");
INSERT INTO problem_comment VALUES(348,"IT2021-04-23-W71","f21ada1d50ad6673ce1efb578513ead6","57995055c28df9e82476a54f852bd214","สาขาเข้าใจผิดสำหรับการเชื่อมต่อwifi","0.00","2021-04-23 16:28:05");
INSERT INTO problem_comment VALUES(349,"IT2021-04-24-W72","f21ada1d50ad6673ce1efb578513ead6","befb5e146e599a9876757fb18ce5fa2e",NULL,"0.00","2021-04-24 16:27:15");
INSERT INTO problem_comment VALUES(350,"IT2021-04-24-W72","f21ada1d50ad6673ce1efb578513ead6","2e34609794290a770cb0349119d78d21",NULL,"0.00","2021-04-24 18:00:07");
INSERT INTO problem_comment VALUES(351,"IT2021-04-25-W73","11c0009be8f4e977c6998edce04c9b2e","2e34609794290a770cb0349119d78d21","เรียบร้อย","0.00","2021-04-25 13:05:01");
INSERT INTO problem_comment VALUES(352,"IT2021-04-14-W48","11c0009be8f4e977c6998edce04c9b2e","2e34609794290a770cb0349119d78d21","เรียบร้อย","0.00","2021-04-25 13:08:09");
INSERT INTO problem_comment VALUES(353,"IT2021-04-22-W65","f21ada1d50ad6673ce1efb578513ead6","befb5e146e599a9876757fb18ce5fa2e","นำnotebookเข้ามาที่IT HOเพื่อติดตั้งOSใหม่","0.00","2021-04-25 13:26:17");
INSERT INTO problem_comment VALUES(354,"IT2021-04-22-W68","f21ada1d50ad6673ce1efb578513ead6","27e87048f9283b6e13347df4388c98e9","ส่งโดยฝาก WH","0.00","2021-04-26 08:50:23");
INSERT INTO problem_comment VALUES(355,"IT2021-04-26-W74","f21ada1d50ad6673ce1efb578513ead6","befb5e146e599a9876757fb18ce5fa2e",NULL,"0.00","2021-04-26 08:51:13");
INSERT INTO problem_comment VALUES(356,"IT2021-04-20-W60","","968d42cbf280bc3c26103d31955bae59",NULL,"0.00","2021-04-26 10:37:39");
INSERT INTO problem_comment VALUES(357,"IT2021-04-26-W74","f21ada1d50ad6673ce1efb578513ead6","2e34609794290a770cb0349119d78d21",NULL,"0.00","2021-04-26 10:43:27");
INSERT INTO problem_comment VALUES(358,"IT2021-04-07-W30","f21ada1d50ad6673ce1efb578513ead6","02b5a3574052961b5336356a9a634d05",NULL,"0.00","2021-04-26 14:12:24");
INSERT INTO problem_comment VALUES(359,"IT2021-04-07-W30","f21ada1d50ad6673ce1efb578513ead6","2e34609794290a770cb0349119d78d21",NULL,"0.00","2021-04-26 14:12:36");
INSERT INTO problem_comment VALUES(360,"IT2021-04-22-W65","f21ada1d50ad6673ce1efb578513ead6","5cafc78523f4f5e4812f9545b2ba5ae7","ยังผู้แจ้งไม่สะดวก","0.00","2021-04-26 14:20:11");
INSERT INTO problem_comment VALUES(361,"IT2021-04-26-W75","f21ada1d50ad6673ce1efb578513ead6","befb5e146e599a9876757fb18ce5fa2e",NULL,"0.00","2021-04-26 14:40:37");
INSERT INTO problem_comment VALUES(362,"IT2021-04-26-W75","f21ada1d50ad6673ce1efb578513ead6","2e34609794290a770cb0349119d78d21",NULL,"0.00","2021-04-26 15:16:02");
INSERT INTO problem_comment VALUES(363,"IT2021-04-27-W76","5997108712eef9df6ecab22f1f3728f9","befb5e146e599a9876757fb18ce5fa2e",NULL,"0.00","2021-04-27 17:03:53");
INSERT INTO problem_comment VALUES(364,"IT2021-04-27-W76","5997108712eef9df6ecab22f1f3728f9","141f76f3b648cd1d8d21cceed6b3b418","โทรแจ้งศูนย์ทรู เจ้าหน้าที่กำลังดำเนินการให้ ","0.00","2021-04-27 17:04:57");
INSERT INTO problem_comment VALUES(365,"IT2021-04-27-W77","f21ada1d50ad6673ce1efb578513ead6","befb5e146e599a9876757fb18ce5fa2e","ขอUltraViewerหรือAnydeskครับ","0.00","2021-04-28 10:14:22");
INSERT INTO problem_comment VALUES(366,"IT2021-04-28-W78","f21ada1d50ad6673ce1efb578513ead6","befb5e146e599a9876757fb18ce5fa2e",NULL,"0.00","2021-04-28 10:22:40");
INSERT INTO problem_comment VALUES(367,"IT2021-04-28-W79","f21ada1d50ad6673ce1efb578513ead6","befb5e146e599a9876757fb18ce5fa2e",NULL,"0.00","2021-04-28 10:23:02");
INSERT INTO problem_comment VALUES(368,"IT2021-04-28-W78","f21ada1d50ad6673ce1efb578513ead6","2e34609794290a770cb0349119d78d21",NULL,"0.00","2021-04-28 10:44:23");
INSERT INTO problem_comment VALUES(369,"IT2021-04-22-W65","f21ada1d50ad6673ce1efb578513ead6","2e34609794290a770cb0349119d78d21","แก้ไขโดยใช้ติดตั้งโปรแกรมRemote","0.00","2021-04-28 10:56:57");
INSERT INTO problem_comment VALUES(370,"IT2021-04-28-W79","f21ada1d50ad6673ce1efb578513ead6","2e34609794290a770cb0349119d78d21","แก้ไขจากหลังบ้านแล้ว","0.00","2021-04-28 10:57:37");
INSERT INTO problem_comment VALUES(371,"IT2021-04-27-W77","f21ada1d50ad6673ce1efb578513ead6","2e34609794290a770cb0349119d78d21","ติดตั้งเรียบร้อยแล้ว","0.00","2021-04-28 12:06:24");
INSERT INTO problem_comment VALUES(372,"IT2021-04-28-W80","5997108712eef9df6ecab22f1f3728f9","3b2bd9e319992d5b63bfbbd7301b6882",NULL,"0.00","2021-04-28 14:52:29");
INSERT INTO problem_comment VALUES(373,"IT2021-04-29-W82","f21ada1d50ad6673ce1efb578513ead6","befb5e146e599a9876757fb18ce5fa2e",NULL,"0.00","2021-04-29 13:22:14");
INSERT INTO problem_comment VALUES(374,"IT2021-04-22-W68","f21ada1d50ad6673ce1efb578513ead6","968d42cbf280bc3c26103d31955bae59",NULL,"0.00","2021-04-29 13:23:19");
INSERT INTO problem_comment VALUES(375,"IT2021-04-29-W82","f21ada1d50ad6673ce1efb578513ead6","2e34609794290a770cb0349119d78d21",NULL,"0.00","2021-04-29 15:28:23");
INSERT INTO problem_comment VALUES(376,"IT2021-04-28-W81","5997108712eef9df6ecab22f1f3728f9","befb5e146e599a9876757fb18ce5fa2e",NULL,"0.00","2021-04-30 09:40:04");
INSERT INTO problem_comment VALUES(377,"IT2021-04-30-W84","f21ada1d50ad6673ce1efb578513ead6","befb5e146e599a9876757fb18ce5fa2e",NULL,"0.00","2021-04-30 14:37:00");
INSERT INTO problem_comment VALUES(378,"IT2021-04-30-W84","f21ada1d50ad6673ce1efb578513ead6","2e34609794290a770cb0349119d78d21","ปรับให้เรียบร้อย","0.00","2021-04-30 14:37:49");
INSERT INTO problem_comment VALUES(379,"IT2021-04-29-W83","f21ada1d50ad6673ce1efb578513ead6","befb5e146e599a9876757fb18ce5fa2e",NULL,"0.00","2021-04-30 15:40:23");
INSERT INTO problem_comment VALUES(380,"IT2021-04-29-W83","f21ada1d50ad6673ce1efb578513ead6","2e34609794290a770cb0349119d78d21",NULL,"0.00","2021-04-30 15:41:04");
INSERT INTO problem_comment VALUES(381,"IT2021-04-28-W81","f21ada1d50ad6673ce1efb578513ead6","2e34609794290a770cb0349119d78d21","ใช้งานได้ปกติแล้วแต่เมลอาจจะช้า","0.00","2021-04-30 15:55:44");
INSERT INTO problem_comment VALUES(382,"IT2021-04-30-W85","f21ada1d50ad6673ce1efb578513ead6","befb5e146e599a9876757fb18ce5fa2e",NULL,"0.00","2021-04-30 15:56:27");
INSERT INTO problem_comment VALUES(383,"IT2021-04-30-W85","f21ada1d50ad6673ce1efb578513ead6","befb5e146e599a9876757fb18ce5fa2e","ใช้ได้ปกติครับ","0.00","2021-04-30 15:57:21");
INSERT INTO problem_comment VALUES(384,"IT2021-04-30-W85","f21ada1d50ad6673ce1efb578513ead6","2e34609794290a770cb0349119d78d21","ใช้ได้ปกติครับ","0.00","2021-04-30 15:58:13");
INSERT INTO problem_comment VALUES(385,"IT2021-04-27-W76","f21ada1d50ad6673ce1efb578513ead6","2e34609794290a770cb0349119d78d21","แก้ไขแล้ว","0.00","2021-04-30 16:00:28");
INSERT INTO problem_comment VALUES(386,"IT2021-05-02-W02","f21ada1d50ad6673ce1efb578513ead6","befb5e146e599a9876757fb18ce5fa2e",NULL,"0.00","2021-05-02 11:22:46");
INSERT INTO problem_comment VALUES(387,"IT2021-05-02-W01","f21ada1d50ad6673ce1efb578513ead6","befb5e146e599a9876757fb18ce5fa2e",NULL,"0.00","2021-05-02 11:29:22");
INSERT INTO problem_comment VALUES(388,"IT2021-05-02-W01","f21ada1d50ad6673ce1efb578513ead6","141f76f3b648cd1d8d21cceed6b3b418",NULL,"0.00","2021-05-02 11:30:50");
INSERT INTO problem_comment VALUES(389,"IT2021-05-02-W01","f21ada1d50ad6673ce1efb578513ead6","2e34609794290a770cb0349119d78d21","ใช้ได้ปกติครับ","0.00","2021-05-02 12:51:40");
INSERT INTO problem_comment VALUES(390,"IT2021-05-02-W02","f21ada1d50ad6673ce1efb578513ead6","2e34609794290a770cb0349119d78d21","ใช้งานได้ปกติ","0.00","2021-05-02 13:12:26");
INSERT INTO problem_comment VALUES(391,"IT2021-05-04-W03","f21ada1d50ad6673ce1efb578513ead6","befb5e146e599a9876757fb18ce5fa2e",NULL,"0.00","2021-05-04 14:21:43");
INSERT INTO problem_comment VALUES(392,"IT2021-05-04-W04","f21ada1d50ad6673ce1efb578513ead6","befb5e146e599a9876757fb18ce5fa2e",NULL,"0.00","2021-05-04 14:22:31");
INSERT INTO problem_comment VALUES(393,"IT2021-05-04-W03","f21ada1d50ad6673ce1efb578513ead6","2e34609794290a770cb0349119d78d21","ติดตั้งแล้ว","0.00","2021-05-04 15:00:42");
INSERT INTO problem_comment VALUES(394,"IT2021-03-31-W88","f21ada1d50ad6673ce1efb578513ead6","2e34609794290a770cb0349119d78d21","กล้องติดครบ","0.00","2021-05-04 16:07:54");
INSERT INTO problem_comment VALUES(395,"IT2021-05-04-W05","f21ada1d50ad6673ce1efb578513ead6","befb5e146e599a9876757fb18ce5fa2e",NULL,"0.00","2021-05-05 13:55:53");
INSERT INTO problem_comment VALUES(396,"IT2021-05-04-W05","f21ada1d50ad6673ce1efb578513ead6","141f76f3b648cd1d8d21cceed6b3b418","รีโมทไปสาขาแล้ว","0.00","2021-05-05 14:02:37");
INSERT INTO problem_comment VALUES(397,"IT2021-05-04-W05","f21ada1d50ad6673ce1efb578513ead6","2e34609794290a770cb0349119d78d21","Synce แล้ว","0.00","2021-05-05 15:25:16");
INSERT INTO problem_comment VALUES(398,"IT2021-05-05-W06","f21ada1d50ad6673ce1efb578513ead6","befb5e146e599a9876757fb18ce5fa2e","จะส่งเรื่องต่อให้พี่นนท์ติดตั้งให้นะครับช่วง 17.30น. จึงจะทำการรีโมทติดตั้งให้ครับ","0.00","2021-05-05 17:03:33");
INSERT INTO problem_comment VALUES(399,"IT2021-05-05-W06","f21ada1d50ad6673ce1efb578513ead6","2e34609794290a770cb0349119d78d21","ติดตั้งแล้ว","0.00","2021-05-05 22:35:22");
INSERT INTO problem_comment VALUES(400,"IT2021-04-02-W19","5997108712eef9df6ecab22f1f3728f9","2e34609794290a770cb0349119d78d21",NULL,"0.00","2021-05-06 08:12:38");
INSERT INTO problem_comment VALUES(401,"IT2021-05-06-W07","5997108712eef9df6ecab22f1f3728f9","befb5e146e599a9876757fb18ce5fa2e",NULL,"0.00","2021-05-06 10:14:36");
INSERT INTO problem_comment VALUES(402,"IT2021-04-18-W53","ce63f18f7cf0a712fd4a2f47bc9ae14c","2e34609794290a770cb0349119d78d21","แก้ไขเรียบร้อยค่ะ","0.00","2021-05-06 11:07:30");
INSERT INTO problem_comment VALUES(403,"IT2021-04-28-W80","ce63f18f7cf0a712fd4a2f47bc9ae14c","876e933c13f11540337913cd5eba269e","ฝากไปกับพี่นุ 6/05/2564","0.00","2021-05-06 11:17:41");
INSERT INTO problem_comment VALUES(404,"IT2021-05-04-W04","ce63f18f7cf0a712fd4a2f47bc9ae14c","2e34609794290a770cb0349119d78d21","เรียบร้อย","0.00","2021-05-06 11:53:36");
INSERT INTO problem_comment VALUES(405,"IT2021-04-22-W68","ce63f18f7cf0a712fd4a2f47bc9ae14c","ce3bbcf0542b7ab3c191b9ca61a8ab84","รอส่งเครื่องไปซัพนอก","0.00","2021-05-06 11:57:50");
INSERT INTO problem_comment VALUES(406,"IT2021-05-06-W07","5997108712eef9df6ecab22f1f3728f9","2e34609794290a770cb0349119d78d21",NULL,"0.00","2021-05-06 12:41:11");
INSERT INTO problem_comment VALUES(407,"IT2021-05-07-W08","5997108712eef9df6ecab22f1f3728f9","befb5e146e599a9876757fb18ce5fa2e",NULL,"0.00","2021-05-07 08:34:54");
INSERT INTO problem_comment VALUES(408,"IT2021-05-07-W08","5997108712eef9df6ecab22f1f3728f9","2e34609794290a770cb0349119d78d21",NULL,"0.00","2021-05-07 08:35:10");
INSERT INTO problem_comment VALUES(409,"IT2021-05-10-W10","5997108712eef9df6ecab22f1f3728f9","befb5e146e599a9876757fb18ce5fa2e",NULL,"0.00","2021-05-10 13:56:41");
INSERT INTO problem_comment VALUES(410,"IT2021-05-10-W10","5997108712eef9df6ecab22f1f3728f9","2e34609794290a770cb0349119d78d21",NULL,"0.00","2021-05-10 14:25:47");
INSERT INTO problem_comment VALUES(411,"IT2021-05-10-W11","23ae8fd2022f767f5c90728825132b90","2e34609794290a770cb0349119d78d21",NULL,"0.00","2021-05-10 16:30:41");
INSERT INTO problem_comment VALUES(412,"IT2021-04-20-W60","f21ada1d50ad6673ce1efb578513ead6","ce3bbcf0542b7ab3c191b9ca61a8ab84",NULL,"0.00","2021-05-10 18:25:53");
INSERT INTO problem_comment VALUES(413,"IT2021-05-10-W12","f21ada1d50ad6673ce1efb578513ead6","befb5e146e599a9876757fb18ce5fa2e",NULL,"0.00","2021-05-10 18:26:25");
INSERT INTO problem_comment VALUES(414,"IT2021-05-11-W13","f21ada1d50ad6673ce1efb578513ead6","befb5e146e599a9876757fb18ce5fa2e","ถ่ายรูป Printerมาหน่อยครับ","0.00","2021-05-11 11:58:48");
INSERT INTO problem_comment VALUES(415,"IT2021-05-11-W13","f21ada1d50ad6673ce1efb578513ead6","2e34609794290a770cb0349119d78d21","ปริ้นออกครับ","0.00","2021-05-11 12:11:04");
INSERT INTO problem_comment VALUES(416,"IT2021-04-28-W80","f21ada1d50ad6673ce1efb578513ead6","2e34609794290a770cb0349119d78d21","สาขาได้รับแล้ว","690.00","2021-05-11 13:47:39");
INSERT INTO problem_comment VALUES(417,"IT2021-05-11-W14","5997108712eef9df6ecab22f1f3728f9","141f76f3b648cd1d8d21cceed6b3b418","แจ้งหน้าร้านให้ทำการซื้อสายเสียบใหม่ ","0.00","2021-05-11 15:34:23");
INSERT INTO problem_comment VALUES(418,"IT2021-05-11-W15","5997108712eef9df6ecab22f1f3728f9","befb5e146e599a9876757fb18ce5fa2e",NULL,"0.00","2021-05-11 15:39:29");
INSERT INTO problem_comment VALUES(419,"IT2021-05-11-W15","f21ada1d50ad6673ce1efb578513ead6","2e34609794290a770cb0349119d78d21",NULL,"0.00","2021-05-11 15:46:20");
INSERT INTO problem_comment VALUES(420,"IT2021-05-11-W16","f21ada1d50ad6673ce1efb578513ead6","befb5e146e599a9876757fb18ce5fa2e",NULL,"0.00","2021-05-11 16:44:46");
INSERT INTO problem_comment VALUES(421,"IT2021-05-11-W16","f21ada1d50ad6673ce1efb578513ead6","2e34609794290a770cb0349119d78d21","ดึงกลับให้แล้ว","0.00","2021-05-11 16:45:51");
INSERT INTO problem_comment VALUES(422,"IT2021-05-10-W12","5997108712eef9df6ecab22f1f3728f9","2e34609794290a770cb0349119d78d21",NULL,"0.00","2021-05-12 11:46:50");
INSERT INTO problem_comment VALUES(423,"IT2021-05-12-W17","5997108712eef9df6ecab22f1f3728f9","befb5e146e599a9876757fb18ce5fa2e",NULL,"0.00","2021-05-12 13:30:20");
INSERT INTO problem_comment VALUES(424,"IT2021-05-12-W17","23ae8fd2022f767f5c90728825132b90","2e34609794290a770cb0349119d78d21",NULL,"0.00","2021-05-12 13:36:44");
INSERT INTO problem_comment VALUES(425,"IT2021-05-11-W14","5997108712eef9df6ecab22f1f3728f9","f2c50a9a3e802c7be809f7f506b2b46a","ย้ำกับทางสาขาให้ซื้อสายเสียบใหม่","0.00","2021-05-12 13:59:48");
INSERT INTO problem_comment VALUES(426,"IT2021-05-11-W14","5997108712eef9df6ecab22f1f3728f9","2e34609794290a770cb0349119d78d21","ทางสาขาซื้อสายมาเปลี่ยน ตอนนี้ใช้งานได้ปกติแล้วค่ะ","0.00","2021-05-12 15:25:27");
INSERT INTO problem_comment VALUES(427,"IT2021-05-12-W20","23ae8fd2022f767f5c90728825132b90","2e34609794290a770cb0349119d78d21",NULL,"0.00","2021-05-12 15:45:06");
INSERT INTO problem_comment VALUES(428,"IT2021-05-12-W18","23ae8fd2022f767f5c90728825132b90","2e34609794290a770cb0349119d78d21",NULL,"0.00","2021-05-12 15:46:49");
INSERT INTO problem_comment VALUES(429,"IT2021-05-12-W19","23ae8fd2022f767f5c90728825132b90","2e34609794290a770cb0349119d78d21",NULL,"0.00","2021-05-12 15:47:29");
INSERT INTO problem_comment VALUES(430,"IT2021-05-07-W09","ce63f18f7cf0a712fd4a2f47bc9ae14c","57995055c28df9e82476a54f852bd214","เจ้าหน้าที่ฝั่งการเงิน คุณนุ้ย ให้ทางสาขา ชาร์จแบตใช้งานค่ะเมื่อเริ่มหมด เนื่องจากร่วมประเมินกับ ทาง it แล้วถือว่า ipad ยังปกติค่ะ","0.00","2021-05-12 18:07:06");
INSERT INTO problem_comment VALUES(431,"IT2021-05-13-W21","f21ada1d50ad6673ce1efb578513ead6","befb5e146e599a9876757fb18ce5fa2e",NULL,"0.00","2021-05-13 12:39:54");
INSERT INTO problem_comment VALUES(432,"IT2021-05-13-W21","f21ada1d50ad6673ce1efb578513ead6","2e34609794290a770cb0349119d78d21","ดึงและส่งแล้ว","0.00","2021-05-13 12:41:34");
INSERT INTO problem_comment VALUES(433,"IT2021-05-14-W23","f21ada1d50ad6673ce1efb578513ead6","befb5e146e599a9876757fb18ce5fa2e",NULL,"0.00","2021-05-14 15:45:59");
INSERT INTO problem_comment VALUES(434,"IT2021-05-14-W22","ce63f18f7cf0a712fd4a2f47bc9ae14c","57995055c28df9e82476a54f852bd214","สาขาหาปุ่มไม่เจอค่ะ","0.00","2021-05-14 15:47:51");
INSERT INTO problem_comment VALUES(435,"IT2021-05-14-W25","23ae8fd2022f767f5c90728825132b90","2e34609794290a770cb0349119d78d21",NULL,"0.00","2021-05-14 18:19:33");
INSERT INTO problem_comment VALUES(436,"IT2021-05-14-W24","23ae8fd2022f767f5c90728825132b90","2e34609794290a770cb0349119d78d21",NULL,"0.00","2021-05-14 18:20:26");
INSERT INTO problem_comment VALUES(437,"IT2021-05-17-W26","5997108712eef9df6ecab22f1f3728f9","141f76f3b648cd1d8d21cceed6b3b418",NULL,"0.00","2021-05-17 09:37:59");
INSERT INTO problem_comment VALUES(438,"IT2021-05-17-W26","5997108712eef9df6ecab22f1f3728f9","2e34609794290a770cb0349119d78d21",NULL,"0.00","2021-05-17 11:07:39");
INSERT INTO problem_comment VALUES(439,"IT2021-05-14-W23","f21ada1d50ad6673ce1efb578513ead6","2e34609794290a770cb0349119d78d21","ติดตั้งFontแล้ว","0.00","2021-05-17 11:27:13");
INSERT INTO problem_comment VALUES(440,"IT2021-05-17-W27","f21ada1d50ad6673ce1efb578513ead6","befb5e146e599a9876757fb18ce5fa2e",NULL,"0.00","2021-05-18 09:36:15");
INSERT INTO problem_comment VALUES(441,"IT2021-05-17-W27","f21ada1d50ad6673ce1efb578513ead6","2e34609794290a770cb0349119d78d21","ติดตั้งรีโมทใหม่","0.00","2021-05-18 09:37:16");
INSERT INTO problem_comment VALUES(442,"IT2021-05-18-W29","f21ada1d50ad6673ce1efb578513ead6","befb5e146e599a9876757fb18ce5fa2e",NULL,"0.00","2021-05-18 19:08:01");
INSERT INTO problem_comment VALUES(443,"IT2021-05-18-W29","f21ada1d50ad6673ce1efb578513ead6","2e34609794290a770cb0349119d78d21","ติดตั้งFontให้แล้วครับ","0.00","2021-05-18 19:18:51");
INSERT INTO problem_comment VALUES(444,"IT2021-05-19-W30","5997108712eef9df6ecab22f1f3728f9","141f76f3b648cd1d8d21cceed6b3b418",NULL,"0.00","2021-05-19 09:19:16");
INSERT INTO problem_comment VALUES(445,"IT2021-05-19-W30","f21ada1d50ad6673ce1efb578513ead6","2e34609794290a770cb0349119d78d21","Cloud สาขาSCP Synceปกติครับ","0.00","2021-05-19 11:03:16");
INSERT INTO problem_comment VALUES(446,"IT2021-04-22-W68","f21ada1d50ad6673ce1efb578513ead6","876e933c13f11540337913cd5eba269e","หากได้รับPrinterแล้ว ให้ส่งPrinterสำรองกลับ HO","850.00","2021-05-19 12:21:06");
INSERT INTO problem_comment VALUES(447,"IT2021-04-20-W60","f21ada1d50ad6673ce1efb578513ead6","876e933c13f11540337913cd5eba269e","หากได้รับPrinter แล้วให้ส่งPrinterสำรองกลับ WH (ห้องIT)","850.00","2021-05-19 12:23:10");
INSERT INTO problem_comment VALUES(448,"IT2021-05-19-W31","f21ada1d50ad6673ce1efb578513ead6","befb5e146e599a9876757fb18ce5fa2e","ขอAnydesk","0.00","2021-05-19 12:32:21");
INSERT INTO problem_comment VALUES(449,"IT2021-05-19-W31","f21ada1d50ad6673ce1efb578513ead6","2e34609794290a770cb0349119d78d21","ปริ้นได้ปกติ","0.00","2021-05-19 12:50:24");
INSERT INTO problem_comment VALUES(450,"IT2021-05-19-W32","f21ada1d50ad6673ce1efb578513ead6","befb5e146e599a9876757fb18ce5fa2e",NULL,"0.00","2021-05-19 14:23:36");
INSERT INTO problem_comment VALUES(451,"IT2021-05-19-W32","f21ada1d50ad6673ce1efb578513ead6","befb5e146e599a9876757fb18ce5fa2e",NULL,"0.00","2021-05-19 15:19:00");
INSERT INTO problem_comment VALUES(452,"IT2021-05-19-W32","f21ada1d50ad6673ce1efb578513ead6","2e34609794290a770cb0349119d78d21",NULL,"0.00","2021-05-20 08:52:29");
INSERT INTO problem_comment VALUES(453,"IT2021-05-17-W28","5997108712eef9df6ecab22f1f3728f9","befb5e146e599a9876757fb18ce5fa2e",NULL,"0.00","2021-05-20 09:47:27");
INSERT INTO problem_comment VALUES(454,"IT2021-05-17-W28","5997108712eef9df6ecab22f1f3728f9","2376b33c92767c1437421a99bbc7164f","เนื่องจากมุมกล้อง ที่ต้องการเสีย เลยไม่สามารถดูย้อนหลังให้ได้","0.00","2021-05-20 09:48:02");
INSERT INTO problem_comment VALUES(455,"IT2021-05-20-W33","f21ada1d50ad6673ce1efb578513ead6","befb5e146e599a9876757fb18ce5fa2e",NULL,"0.00","2021-05-20 11:38:47");
INSERT INTO problem_comment VALUES(456,"IT2021-05-20-W33","f21ada1d50ad6673ce1efb578513ead6","2e34609794290a770cb0349119d78d21","cloud synce ปกติ","0.00","2021-05-20 11:55:22");
INSERT INTO problem_comment VALUES(457,"IT2021-05-20-W34","f21ada1d50ad6673ce1efb578513ead6","befb5e146e599a9876757fb18ce5fa2e",NULL,"0.00","2021-05-20 18:55:29");
INSERT INTO problem_comment VALUES(458,"IT2021-05-20-W34","f21ada1d50ad6673ce1efb578513ead6","2e34609794290a770cb0349119d78d21","ปริ้นได้ปกติ","0.00","2021-05-20 19:40:22");
INSERT INTO problem_comment VALUES(459,"IT2021-05-20-W35","f21ada1d50ad6673ce1efb578513ead6","befb5e146e599a9876757fb18ce5fa2e",NULL,"0.00","2021-05-20 19:41:02");
INSERT INTO problem_comment VALUES(460,"IT2021-05-20-W35","f21ada1d50ad6673ce1efb578513ead6","2e34609794290a770cb0349119d78d21","ติดตั้งใช้งานได้","0.00","2021-05-20 20:07:27");
INSERT INTO problem_comment VALUES(461,"IT2021-05-17-W28","5997108712eef9df6ecab22f1f3728f9","57995055c28df9e82476a54f852bd214","เนื่องจากกล้องเสียไม่สามารถดูย้อนหลังให้ได้ค่ะ ","0.00","2021-05-21 09:51:43");
INSERT INTO problem_comment VALUES(462,"IT2021-05-22-W39","f21ada1d50ad6673ce1efb578513ead6","befb5e146e599a9876757fb18ce5fa2e",NULL,"0.00","2021-05-22 14:04:43");
INSERT INTO problem_comment VALUES(463,"IT2021-05-22-W39","f21ada1d50ad6673ce1efb578513ead6","2e34609794290a770cb0349119d78d21","เบื้องต้น แก้ไขโดยUpdate Driver Wireless ครับ","0.00","2021-05-22 14:26:38");
INSERT INTO problem_comment VALUES(464,"IT2021-05-22-W40","f21ada1d50ad6673ce1efb578513ead6","befb5e146e599a9876757fb18ce5fa2e",NULL,"0.00","2021-05-22 22:27:45");
INSERT INTO problem_comment VALUES(465,"IT2021-05-22-W40","f21ada1d50ad6673ce1efb578513ead6","2e34609794290a770cb0349119d78d21","เนื่องจากชื่อไฟล์ยาวเกินไป","0.00","2021-05-22 22:28:39");
INSERT INTO problem_comment VALUES(466,"IT2021-05-22-W38","11c0009be8f4e977c6998edce04c9b2e","2e34609794290a770cb0349119d78d21","ปรับเมนูให้คลุมกลุ่ม Take away เรียบร้อย","0.00","2021-05-22 22:48:55");
INSERT INTO problem_comment VALUES(467,"IT2021-05-22-W41","11c0009be8f4e977c6998edce04c9b2e","2e34609794290a770cb0349119d78d21","Update รูปให้ตรงปุ่มเรียบร้อย","0.00","2021-05-22 22:50:28");
INSERT INTO problem_comment VALUES(468,"IT2021-05-24-W44","f21ada1d50ad6673ce1efb578513ead6","befb5e146e599a9876757fb18ce5fa2e",NULL,"0.00","2021-05-24 08:42:47");
INSERT INTO problem_comment VALUES(469,"IT2021-05-24-W44","f21ada1d50ad6673ce1efb578513ead6","2e34609794290a770cb0349119d78d21",NULL,"0.00","2021-05-24 08:48:59");
INSERT INTO problem_comment VALUES(470,"IT2021-05-22-W36","f21ada1d50ad6673ce1efb578513ead6","9ba0f256a5f620136568c6b47dcb24bd","ขอยืมจอ PC","0.00","2021-05-24 08:50:16");
INSERT INTO problem_comment VALUES(471,"IT2021-05-22-W37","f21ada1d50ad6673ce1efb578513ead6","befb5e146e599a9876757fb18ce5fa2e","พี่นนท์ตรวจสอบ","0.00","2021-05-24 08:51:53");
INSERT INTO problem_comment VALUES(472,"IT2021-05-22-W37","f21ada1d50ad6673ce1efb578513ead6","2e34609794290a770cb0349119d78d21",NULL,"0.00","2021-05-24 09:06:27");
INSERT INTO problem_comment VALUES(473,"IT2021-05-24-W45","f21ada1d50ad6673ce1efb578513ead6","befb5e146e599a9876757fb18ce5fa2e",NULL,"0.00","2021-05-24 09:57:03");
INSERT INTO problem_comment VALUES(474,"IT2021-05-23-W42","ce63f18f7cf0a712fd4a2f47bc9ae14c","2e34609794290a770cb0349119d78d21","แก้ไขเรียบร้อย","0.00","2021-05-24 10:01:22");
INSERT INTO problem_comment VALUES(475,"IT2021-05-23-W43","ce63f18f7cf0a712fd4a2f47bc9ae14c","befb5e146e599a9876757fb18ce5fa2e","ส่งเรื่องให้เจ้าหน้าที่ตรวจสอบ","0.00","2021-05-24 10:04:50");
INSERT INTO problem_comment VALUES(476,"IT2021-05-24-W46","f21ada1d50ad6673ce1efb578513ead6","befb5e146e599a9876757fb18ce5fa2e",NULL,"0.00","2021-05-24 10:10:19");
INSERT INTO problem_comment VALUES(477,"IT2021-05-24-W46","f21ada1d50ad6673ce1efb578513ead6","2e34609794290a770cb0349119d78d21","map drive Z","0.00","2021-05-24 10:21:37");
INSERT INTO problem_comment VALUES(478,"IT2021-05-24-W45","f21ada1d50ad6673ce1efb578513ead6","2e34609794290a770cb0349119d78d21",NULL,"0.00","2021-05-24 10:29:58");
INSERT INTO problem_comment VALUES(479,"IT2021-05-24-W47","f21ada1d50ad6673ce1efb578513ead6","befb5e146e599a9876757fb18ce5fa2e","ตรวจสอบ","0.00","2021-05-24 11:51:53");
INSERT INTO problem_comment VALUES(480,"IT2021-05-24-W48","f21ada1d50ad6673ce1efb578513ead6","befb5e146e599a9876757fb18ce5fa2e",NULL,"0.00","2021-05-24 14:58:02");
INSERT INTO problem_comment VALUES(481,"IT2021-05-24-W48","f21ada1d50ad6673ce1efb578513ead6","2e34609794290a770cb0349119d78d21","ใช้งานปกติ","0.00","2021-05-24 15:11:26");
INSERT INTO problem_comment VALUES(482,"IT2021-05-24-W47","f21ada1d50ad6673ce1efb578513ead6","2e34609794290a770cb0349119d78d21",NULL,"0.00","2021-05-24 16:03:00");
INSERT INTO problem_comment VALUES(483,"IT2021-05-24-W49","f21ada1d50ad6673ce1efb578513ead6","876e933c13f11540337913cd5eba269e",NULL,"0.00","2021-05-24 17:46:16");
INSERT INTO problem_comment VALUES(484,"IT2021-05-24-W49","f21ada1d50ad6673ce1efb578513ead6","2e34609794290a770cb0349119d78d21","เบิกไปให้แล้ว","0.00","2021-05-24 17:47:01");
INSERT INTO problem_comment VALUES(485,"IT2021-05-25-W50","f21ada1d50ad6673ce1efb578513ead6","befb5e146e599a9876757fb18ce5fa2e","ขอanydeskครับ","0.00","2021-05-25 09:16:03");
INSERT INTO problem_comment VALUES(486,"IT2021-05-25-W50","f21ada1d50ad6673ce1efb578513ead6","2e34609794290a770cb0349119d78d21","ใช้งานปกติ","0.00","2021-05-25 09:23:35");
INSERT INTO problem_comment VALUES(487,"IT2021-04-20-W60","f21ada1d50ad6673ce1efb578513ead6","02b5a3574052961b5336356a9a634d05","รับPrinterสำรองแล้ว","0.00","2021-05-25 11:21:30");
INSERT INTO problem_comment VALUES(488,"IT2021-05-25-W52","f21ada1d50ad6673ce1efb578513ead6","befb5e146e599a9876757fb18ce5fa2e",NULL,"0.00","2021-05-25 13:33:51");
INSERT INTO problem_comment VALUES(489,"IT2021-05-25-W52","f21ada1d50ad6673ce1efb578513ead6","2e34609794290a770cb0349119d78d21","IT กำลังดำเนินการซื้อNotebookให้สาขา","0.00","2021-05-25 14:07:02");
INSERT INTO problem_comment VALUES(490,"IT2021-05-25-W53","f21ada1d50ad6673ce1efb578513ead6","befb5e146e599a9876757fb18ce5fa2e",NULL,"0.00","2021-05-25 15:46:20");
INSERT INTO problem_comment VALUES(491,"IT2021-05-25-W53","f21ada1d50ad6673ce1efb578513ead6","2e34609794290a770cb0349119d78d21","ใช้ได้ปกติ","0.00","2021-05-25 15:52:09");
INSERT INTO problem_comment VALUES(492,"IT2021-04-20-W60","f21ada1d50ad6673ce1efb578513ead6","2e34609794290a770cb0349119d78d21",NULL,"0.00","2021-05-25 16:09:39");
INSERT INTO problem_comment VALUES(493,"IT2021-05-25-W54","f21ada1d50ad6673ce1efb578513ead6","befb5e146e599a9876757fb18ce5fa2e",NULL,"0.00","2021-05-25 18:05:05");
INSERT INTO problem_comment VALUES(494,"IT2021-05-25-W54","f21ada1d50ad6673ce1efb578513ead6","2e34609794290a770cb0349119d78d21",NULL,"0.00","2021-05-25 19:29:57");
INSERT INTO problem_comment VALUES(495,"IT2021-05-25-W51","ce63f18f7cf0a712fd4a2f47bc9ae14c","2e34609794290a770cb0349119d78d21","แจ้งฝ่ายที่เกี่ยวข้องแก้ไขเสร็จตั้งแต่ 25/05/2564","0.00","2021-05-26 19:42:30");
INSERT INTO problem_comment VALUES(496,"IT2021-05-28-W56","f21ada1d50ad6673ce1efb578513ead6","befb5e146e599a9876757fb18ce5fa2e",NULL,"0.00","2021-05-28 14:54:17");
INSERT INTO problem_comment VALUES(497,"IT2021-05-28-W56","f21ada1d50ad6673ce1efb578513ead6","2e34609794290a770cb0349119d78d21","ติดตั้งJAVAแล้ว","0.00","2021-05-28 14:57:24");
INSERT INTO problem_comment VALUES(498,"IT2021-05-28-W57","5997108712eef9df6ecab22f1f3728f9","befb5e146e599a9876757fb18ce5fa2e",NULL,"0.00","2021-05-28 17:11:44");
INSERT INTO problem_comment VALUES(499,"IT2021-05-28-W57","5997108712eef9df6ecab22f1f3728f9","2e34609794290a770cb0349119d78d21",NULL,"0.00","2021-05-28 17:11:54");
INSERT INTO problem_comment VALUES(500,"IT2021-05-28-W55","5997108712eef9df6ecab22f1f3728f9","befb5e146e599a9876757fb18ce5fa2e",NULL,"0.00","2021-05-28 17:12:19");
INSERT INTO problem_comment VALUES(501,"IT2021-05-28-W55","5997108712eef9df6ecab22f1f3728f9","2e34609794290a770cb0349119d78d21",NULL,"0.00","2021-05-28 17:12:32");
INSERT INTO problem_comment VALUES(502,"IT2021-05-30-W58","f21ada1d50ad6673ce1efb578513ead6","befb5e146e599a9876757fb18ce5fa2e",NULL,"0.00","2021-05-31 08:37:03");
INSERT INTO problem_comment VALUES(503,"IT2021-05-30-W58","f21ada1d50ad6673ce1efb578513ead6","2e34609794290a770cb0349119d78d21",NULL,"0.00","2021-05-31 08:37:13");
INSERT INTO problem_comment VALUES(504,"IT2021-05-30-W59","f21ada1d50ad6673ce1efb578513ead6","befb5e146e599a9876757fb18ce5fa2e",NULL,"0.00","2021-05-31 08:37:26");
INSERT INTO problem_comment VALUES(505,"IT2021-05-30-W59","f21ada1d50ad6673ce1efb578513ead6","2e34609794290a770cb0349119d78d21",NULL,"0.00","2021-05-31 08:37:36");
INSERT INTO problem_comment VALUES(506,"IT2021-05-30-W60","ce63f18f7cf0a712fd4a2f47bc9ae14c","57995055c28df9e82476a54f852bd214","*อันนี้ไม่ได้ส่วนลดพนักงาน 25%","0.00","2021-05-31 10:29:52");
INSERT INTO problem_comment VALUES(507,"IT2021-04-22-W68","ce63f18f7cf0a712fd4a2f47bc9ae14c","968d42cbf280bc3c26103d31955bae59","ได้รับเครื่องสำรองเรียบร้อย","0.00","2021-05-31 10:30:22");
INSERT INTO problem_comment VALUES(508,"IT2021-04-22-W68","ce63f18f7cf0a712fd4a2f47bc9ae14c","2e34609794290a770cb0349119d78d21",NULL,"0.00","2021-05-31 10:31:17");
INSERT INTO problem_comment VALUES(509,"IT2021-05-31-W61","f21ada1d50ad6673ce1efb578513ead6","befb5e146e599a9876757fb18ce5fa2e","ส่งเรื่องต่อ Dell","0.00","2021-05-31 13:44:08");
INSERT INTO problem_comment VALUES(510,"IT2021-05-31-W63","f21ada1d50ad6673ce1efb578513ead6","befb5e146e599a9876757fb18ce5fa2e",NULL,"0.00","2021-05-31 14:11:37");
INSERT INTO problem_comment VALUES(511,"IT2021-05-31-W63","f21ada1d50ad6673ce1efb578513ead6","2e34609794290a770cb0349119d78d21","https://youtu.be/4M93rSZS5Hk","0.00","2021-05-31 14:56:50");
INSERT INTO problem_comment VALUES(512,"IT2021-05-31-W62","f21ada1d50ad6673ce1efb578513ead6","57995055c28df9e82476a54f852bd214","แจ้งซ้ำ","0.00","2021-05-31 14:57:15");
INSERT INTO problem_comment VALUES(513,"IT2021-05-31-W64","","befb5e146e599a9876757fb18ce5fa2e",NULL,"0.00","2021-05-31 16:49:24");
INSERT INTO problem_comment VALUES(514,"IT2021-05-31-W66","f21ada1d50ad6673ce1efb578513ead6","befb5e146e599a9876757fb18ce5fa2e",NULL,"0.00","2021-06-01 10:37:57");
INSERT INTO problem_comment VALUES(515,"IT2021-05-31-W66","f21ada1d50ad6673ce1efb578513ead6","2e34609794290a770cb0349119d78d21","แนะนำใช้ Wi-Fi ครับ","0.00","2021-06-01 10:38:37");
INSERT INTO problem_comment VALUES(516,"IT2021-05-31-W61","f21ada1d50ad6673ce1efb578513ead6","f2c50a9a3e802c7be809f7f506b2b46a","รอDell Support","0.00","2021-06-01 10:40:28");
INSERT INTO problem_comment VALUES(517,"IT2021-05-31-W64","","2e34609794290a770cb0349119d78d21","ดูแล้วครับ","0.00","2021-06-01 12:52:48");
INSERT INTO problem_comment VALUES(518,"IT2021-06-01-W02","f21ada1d50ad6673ce1efb578513ead6","befb5e146e599a9876757fb18ce5fa2e",NULL,"0.00","2021-06-01 16:29:54");
INSERT INTO problem_comment VALUES(519,"IT2021-06-01-W02","f21ada1d50ad6673ce1efb578513ead6","2e34609794290a770cb0349119d78d21","ใช้งานปกติ","0.00","2021-06-01 16:37:08");
INSERT INTO problem_comment VALUES(520,"IT2021-06-02-W03","f21ada1d50ad6673ce1efb578513ead6","befb5e146e599a9876757fb18ce5fa2e",NULL,"0.00","2021-06-02 11:47:21");
INSERT INTO problem_comment VALUES(521,"IT2021-05-31-W61","f21ada1d50ad6673ce1efb578513ead6","2e34609794290a770cb0349119d78d21","dell เปลี่ยนMainboardให้","0.00","2021-06-02 13:29:45");
INSERT INTO problem_comment VALUES(522,"IT2021-06-02-W03","f21ada1d50ad6673ce1efb578513ead6","2e34609794290a770cb0349119d78d21","ติดตั้งms. Officeใหม่","0.00","2021-06-02 13:32:08");
INSERT INTO problem_comment VALUES(523,"IT2021-06-02-W04","f21ada1d50ad6673ce1efb578513ead6","befb5e146e599a9876757fb18ce5fa2e",NULL,"0.00","2021-06-03 13:16:49");
INSERT INTO problem_comment VALUES(524,"IT2021-06-03-W05","5997108712eef9df6ecab22f1f3728f9","befb5e146e599a9876757fb18ce5fa2e",NULL,"0.00","2021-06-04 10:01:59");
INSERT INTO problem_comment VALUES(525,"IT2021-06-03-W05","5997108712eef9df6ecab22f1f3728f9","2e34609794290a770cb0349119d78d21",NULL,"0.00","2021-06-04 10:02:12");
INSERT INTO problem_comment VALUES(526,"IT2021-06-04-W06","f21ada1d50ad6673ce1efb578513ead6","befb5e146e599a9876757fb18ce5fa2e",NULL,"0.00","2021-06-04 11:05:44");
INSERT INTO problem_comment VALUES(527,"IT2021-06-04-W06","f21ada1d50ad6673ce1efb578513ead6","2e34609794290a770cb0349119d78d21","ใช้งานได้ปกติ","0.00","2021-06-04 11:21:32");
INSERT INTO problem_comment VALUES(528,"IT2021-06-04-W07","f21ada1d50ad6673ce1efb578513ead6","befb5e146e599a9876757fb18ce5fa2e",NULL,"0.00","2021-06-04 14:11:42");
INSERT INTO problem_comment VALUES(529,"IT2021-06-04-W07","f21ada1d50ad6673ce1efb578513ead6","2e34609794290a770cb0349119d78d21",NULL,"0.00","2021-06-04 14:12:03");
INSERT INTO problem_comment VALUES(530,"IT2021-06-04-W08","f21ada1d50ad6673ce1efb578513ead6","befb5e146e599a9876757fb18ce5fa2e",NULL,"0.00","2021-06-04 15:34:51");
INSERT INTO problem_comment VALUES(531,"IT2021-06-04-W08","f21ada1d50ad6673ce1efb578513ead6","2e34609794290a770cb0349119d78d21","ใช้ได้ปกติ","0.00","2021-06-04 15:35:17");
INSERT INTO problem_comment VALUES(532,"IT2021-06-01-W01","ce63f18f7cf0a712fd4a2f47bc9ae14c","2e34609794290a770cb0349119d78d21","แก้ไขเรียบร้อย","0.00","2021-06-04 16:11:12");
INSERT INTO problem_comment VALUES(533,"IT2021-05-23-W43","11c0009be8f4e977c6998edce04c9b2e","2e34609794290a770cb0349119d78d21","เจ้าหน้าที่แก้ไขระบบหลังบ้าน","0.00","2021-06-05 16:01:03");
INSERT INTO problem_comment VALUES(534,"IT2021-06-06-W11","5997108712eef9df6ecab22f1f3728f9","befb5e146e599a9876757fb18ce5fa2e",NULL,"0.00","2021-06-07 09:21:28");
INSERT INTO problem_comment VALUES(535,"IT2021-06-06-W11","5997108712eef9df6ecab22f1f3728f9","2e34609794290a770cb0349119d78d21",NULL,"0.00","2021-06-07 09:21:38");
INSERT INTO problem_comment VALUES(536,"IT2021-05-22-W36","ce63f18f7cf0a712fd4a2f47bc9ae14c","5b93205f13e238f5a1904e095016e81f",NULL,"0.00","2021-06-07 10:35:40");
INSERT INTO problem_comment VALUES(537,"IT2021-05-22-W36","ce63f18f7cf0a712fd4a2f47bc9ae14c","2e34609794290a770cb0349119d78d21",NULL,"0.00","2021-06-07 10:35:48");
INSERT INTO problem_comment VALUES(538,"IT2021-05-31-W65","ce63f18f7cf0a712fd4a2f47bc9ae14c","2e34609794290a770cb0349119d78d21","เจ้าหน้าที่ปรับข้อมูล","0.00","2021-06-07 10:36:29");
INSERT INTO problem_comment VALUES(539,"IT2021-06-07-W12","f21ada1d50ad6673ce1efb578513ead6","befb5e146e599a9876757fb18ce5fa2e",NULL,"0.00","2021-06-07 10:38:55");
INSERT INTO problem_comment VALUES(540,"IT2021-06-07-W12","f21ada1d50ad6673ce1efb578513ead6","2e34609794290a770cb0349119d78d21","ใช้ได้แล้ว","0.00","2021-06-07 10:42:49");
INSERT INTO problem_comment VALUES(541,"IT2021-06-05-W09","f21ada1d50ad6673ce1efb578513ead6","befb5e146e599a9876757fb18ce5fa2e",NULL,"0.00","2021-06-07 10:47:07");
INSERT INTO problem_comment VALUES(542,"IT2021-06-05-W09","f21ada1d50ad6673ce1efb578513ead6","2e34609794290a770cb0349119d78d21","ใช้งานได้","0.00","2021-06-07 10:50:11");
INSERT INTO problem_comment VALUES(543,"IT2021-06-06-W10","f21ada1d50ad6673ce1efb578513ead6","befb5e146e599a9876757fb18ce5fa2e",NULL,"0.00","2021-06-07 10:51:23");
INSERT INTO problem_comment VALUES(544,"IT2021-06-02-W04","f21ada1d50ad6673ce1efb578513ead6","2e34609794290a770cb0349119d78d21","ทางระบบหลังบ้านแก้ไขแล้ว","0.00","2021-06-07 10:57:33");
INSERT INTO problem_comment VALUES(545,"IT2021-06-06-W10","f21ada1d50ad6673ce1efb578513ead6","2e34609794290a770cb0349119d78d21","ต่อInternetใช้งานได้แล้ว","0.00","2021-06-07 11:51:58");
INSERT INTO problem_comment VALUES(546,"IT2021-06-08-W14","f21ada1d50ad6673ce1efb578513ead6","befb5e146e599a9876757fb18ce5fa2e",NULL,"0.00","2021-06-08 10:07:06");
INSERT INTO problem_comment VALUES(547,"IT2021-06-08-W14","f21ada1d50ad6673ce1efb578513ead6","2e34609794290a770cb0349119d78d21","ใช้งานได้แล้ว","0.00","2021-06-08 10:07:56");
INSERT INTO problem_comment VALUES(548,"IT2021-06-08-W15","f21ada1d50ad6673ce1efb578513ead6","befb5e146e599a9876757fb18ce5fa2e",NULL,"0.00","2021-06-08 15:56:20");
INSERT INTO problem_comment VALUES(549,"IT2021-06-08-W15","f21ada1d50ad6673ce1efb578513ead6","2e34609794290a770cb0349119d78d21","Cloud Synce ปกติ","0.00","2021-06-08 16:08:59");
INSERT INTO problem_comment VALUES(550,"IT2021-06-07-W13","5997108712eef9df6ecab22f1f3728f9","befb5e146e599a9876757fb18ce5fa2e",NULL,"0.00","2021-06-08 16:15:16");
INSERT INTO problem_comment VALUES(551,"IT2021-06-07-W13","5997108712eef9df6ecab22f1f3728f9","2e34609794290a770cb0349119d78d21",NULL,"0.00","2021-06-08 16:15:25");
INSERT INTO problem_comment VALUES(552,"IT2021-06-09-W17","5997108712eef9df6ecab22f1f3728f9","befb5e146e599a9876757fb18ce5fa2e","เจ้าหน้าที่กำลังเร่งตรวจสอบ","0.00","2021-06-09 11:15:13");
INSERT INTO problem_comment VALUES(553,"IT2021-06-09-W17","5997108712eef9df6ecab22f1f3728f9","2e34609794290a770cb0349119d78d21",NULL,"0.00","2021-06-09 16:39:17");
INSERT INTO problem_comment VALUES(554,"IT2021-06-09-W18","5997108712eef9df6ecab22f1f3728f9","befb5e146e599a9876757fb18ce5fa2e",NULL,"0.00","2021-06-09 16:39:32");
INSERT INTO problem_comment VALUES(555,"IT2021-06-09-W18","5997108712eef9df6ecab22f1f3728f9","2e34609794290a770cb0349119d78d21",NULL,"0.00","2021-06-09 16:39:41");
INSERT INTO problem_comment VALUES(556,"IT2021-06-08-W16","5997108712eef9df6ecab22f1f3728f9","befb5e146e599a9876757fb18ce5fa2e",NULL,"0.00","2021-06-10 09:16:09");
INSERT INTO problem_comment VALUES(557,"IT2021-06-08-W16","5997108712eef9df6ecab22f1f3728f9","968d42cbf280bc3c26103d31955bae59",NULL,"0.00","2021-06-10 09:16:20");
INSERT INTO problem_comment VALUES(558,"IT2021-06-10-W19","f21ada1d50ad6673ce1efb578513ead6","befb5e146e599a9876757fb18ce5fa2e",NULL,"0.00","2021-06-10 10:19:52");
INSERT INTO problem_comment VALUES(559,"IT2021-06-10-W19","f21ada1d50ad6673ce1efb578513ead6","2e34609794290a770cb0349119d78d21","ส่งเรื่องให้ HRแล้ว","0.00","2021-06-10 10:48:18");
INSERT INTO problem_comment VALUES(560,"IT2021-06-10-W20","f21ada1d50ad6673ce1efb578513ead6","befb5e146e599a9876757fb18ce5fa2e",NULL,"0.00","2021-06-10 11:10:41");
INSERT INTO problem_comment VALUES(561,"IT2021-06-10-W20","f21ada1d50ad6673ce1efb578513ead6","2e34609794290a770cb0349119d78d21",NULL,"0.00","2021-06-10 12:32:03");
INSERT INTO problem_comment VALUES(562,"IT2021-06-10-W21","f21ada1d50ad6673ce1efb578513ead6","befb5e146e599a9876757fb18ce5fa2e",NULL,"0.00","2021-06-10 13:47:28");
INSERT INTO problem_comment VALUES(563,"IT2021-06-10-W21","f21ada1d50ad6673ce1efb578513ead6","2e34609794290a770cb0349119d78d21","ดึงกลับแล้ว","0.00","2021-06-10 14:26:13");
INSERT INTO problem_comment VALUES(564,"IT2021-06-11-W22","f21ada1d50ad6673ce1efb578513ead6","befb5e146e599a9876757fb18ce5fa2e",NULL,"0.00","2021-06-11 12:26:17");
INSERT INTO problem_comment VALUES(565,"IT2021-06-11-W22","5997108712eef9df6ecab22f1f3728f9","2e34609794290a770cb0349119d78d21",NULL,"0.00","2021-06-11 13:55:27");
INSERT INTO problem_comment VALUES(566,"IT2021-06-11-W23","","befb5e146e599a9876757fb18ce5fa2e",NULL,"0.00","2021-06-11 13:58:56");
INSERT INTO problem_comment VALUES(567,"IT2021-06-11-W23","5997108712eef9df6ecab22f1f3728f9","2e34609794290a770cb0349119d78d21",NULL,"0.00","2021-06-11 13:59:13");
INSERT INTO problem_comment VALUES(568,"IT2021-06-11-W24","5997108712eef9df6ecab22f1f3728f9","befb5e146e599a9876757fb18ce5fa2e",NULL,"0.00","2021-06-11 17:12:34");
INSERT INTO problem_comment VALUES(569,"IT2021-06-11-W24","5997108712eef9df6ecab22f1f3728f9","2e34609794290a770cb0349119d78d21",NULL,"0.00","2021-06-11 17:12:42");
INSERT INTO problem_comment VALUES(570,"IT2021-06-11-W25","f21ada1d50ad6673ce1efb578513ead6","befb5e146e599a9876757fb18ce5fa2e",NULL,"0.00","2021-06-11 20:14:27");
INSERT INTO problem_comment VALUES(571,"IT2021-06-11-W26","f21ada1d50ad6673ce1efb578513ead6","befb5e146e599a9876757fb18ce5fa2e",NULL,"0.00","2021-06-11 20:35:53");
INSERT INTO problem_comment VALUES(572,"IT2021-06-11-W26","f21ada1d50ad6673ce1efb578513ead6","2e34609794290a770cb0349119d78d21",NULL,"0.00","2021-06-11 20:39:58");
INSERT INTO problem_comment VALUES(573,"IT2021-06-11-W25","f21ada1d50ad6673ce1efb578513ead6","2e34609794290a770cb0349119d78d21",NULL,"0.00","2021-06-12 13:55:17");
INSERT INTO problem_comment VALUES(574,"IT2021-06-13-W28","5997108712eef9df6ecab22f1f3728f9","befb5e146e599a9876757fb18ce5fa2e",NULL,"0.00","2021-06-13 18:53:28");
INSERT INTO problem_comment VALUES(575,"IT2021-06-13-W28","5997108712eef9df6ecab22f1f3728f9","2e34609794290a770cb0349119d78d21",NULL,"0.00","2021-06-14 08:35:39");
INSERT INTO problem_comment VALUES(576,"IT2021-06-12-W27","f21ada1d50ad6673ce1efb578513ead6","befb5e146e599a9876757fb18ce5fa2e",NULL,"0.00","2021-06-14 09:15:06");
INSERT INTO problem_comment VALUES(577,"IT2021-06-14-W29","f21ada1d50ad6673ce1efb578513ead6","befb5e146e599a9876757fb18ce5fa2e",NULL,"0.00","2021-06-14 09:15:19");
INSERT INTO problem_comment VALUES(578,"IT2021-06-12-W27","ce63f18f7cf0a712fd4a2f47bc9ae14c","befb5e146e599a9876757fb18ce5fa2e","ให้เจ้าหน้าที่เดินมารับ สาย USB เปลี่ยนได้เลยค่ะ","0.00","2021-06-14 09:53:39");
INSERT INTO problem_comment VALUES(579,"IT2021-06-14-W30","5997108712eef9df6ecab22f1f3728f9","befb5e146e599a9876757fb18ce5fa2e",NULL,"0.00","2021-06-14 10:21:24");
INSERT INTO problem_comment VALUES(580,"IT2021-06-14-W30","5997108712eef9df6ecab22f1f3728f9","2e34609794290a770cb0349119d78d21",NULL,"0.00","2021-06-14 10:21:54");
INSERT INTO problem_comment VALUES(581,"IT2021-06-14-W29","f21ada1d50ad6673ce1efb578513ead6","2e34609794290a770cb0349119d78d21","ดึงข้อมูลกลับแล้ว","0.00","2021-06-14 10:36:30");
INSERT INTO problem_comment VALUES(582,"IT2021-06-12-W27","f21ada1d50ad6673ce1efb578513ead6","2e34609794290a770cb0349119d78d21","ฝากสายไปที่พี่ ฤทธิ์ครับ","0.00","2021-06-14 13:33:59");
INSERT INTO problem_comment VALUES(583,"IT2021-06-14-W32","f21ada1d50ad6673ce1efb578513ead6","befb5e146e599a9876757fb18ce5fa2e",NULL,"0.00","2021-06-14 14:38:07");
INSERT INTO problem_comment VALUES(584,"IT2021-06-14-W32","f21ada1d50ad6673ce1efb578513ead6","2e34609794290a770cb0349119d78d21","ใช้งานได้ปกติ","0.00","2021-06-14 14:50:29");
INSERT INTO problem_comment VALUES(585,"IT2021-06-14-W31","5997108712eef9df6ecab22f1f3728f9","befb5e146e599a9876757fb18ce5fa2e",NULL,"0.00","2021-06-14 16:29:46");
INSERT INTO problem_comment VALUES(586,"IT2021-06-14-W31","5997108712eef9df6ecab22f1f3728f9","2e34609794290a770cb0349119d78d21",NULL,"0.00","2021-06-14 16:31:10");
INSERT INTO problem_comment VALUES(587,"IT2021-06-14-W33","f21ada1d50ad6673ce1efb578513ead6","befb5e146e599a9876757fb18ce5fa2e",NULL,"0.00","2021-06-15 09:17:41");
INSERT INTO problem_comment VALUES(588,"IT2021-06-14-W33","f21ada1d50ad6673ce1efb578513ead6","2e34609794290a770cb0349119d78d21","กู้คืนแล้ว","0.00","2021-06-15 11:16:59");
INSERT INTO problem_comment VALUES(589,"IT2021-06-15-W34","f21ada1d50ad6673ce1efb578513ead6","befb5e146e599a9876757fb18ce5fa2e",NULL,"0.00","2021-06-15 14:36:23");
INSERT INTO problem_comment VALUES(590,"IT2021-06-15-W34","f21ada1d50ad6673ce1efb578513ead6","f2c50a9a3e802c7be809f7f506b2b46a","รอสาขาสั่งซื้อ","0.00","2021-06-15 14:38:06");
INSERT INTO problem_comment VALUES(591,"IT2021-06-16-W35","","befb5e146e599a9876757fb18ce5fa2e",NULL,"0.00","2021-06-17 09:39:39");
INSERT INTO problem_comment VALUES(592,"IT2021-06-16-W35","f21ada1d50ad6673ce1efb578513ead6","2e34609794290a770cb0349119d78d21","ติดตั้งแล้ว","0.00","2021-06-17 10:18:45");
INSERT INTO problem_comment VALUES(593,"IT2021-06-17-W36","5997108712eef9df6ecab22f1f3728f9","befb5e146e599a9876757fb18ce5fa2e",NULL,"0.00","2021-06-17 13:26:07");
INSERT INTO problem_comment VALUES(594,"IT2021-06-17-W36","5997108712eef9df6ecab22f1f3728f9","2e34609794290a770cb0349119d78d21",NULL,"0.00","2021-06-17 13:26:28");
INSERT INTO problem_comment VALUES(595,"IT2021-06-17-W37","f21ada1d50ad6673ce1efb578513ead6","befb5e146e599a9876757fb18ce5fa2e",NULL,"0.00","2021-06-17 14:54:38");
INSERT INTO problem_comment VALUES(596,"IT2021-06-17-W37","f21ada1d50ad6673ce1efb578513ead6","2e34609794290a770cb0349119d78d21","ใช้งานได้","0.00","2021-06-17 14:58:22");
INSERT INTO problem_comment VALUES(597,"IT2021-06-17-W38","f21ada1d50ad6673ce1efb578513ead6","befb5e146e599a9876757fb18ce5fa2e",NULL,"0.00","2021-06-17 15:16:50");
INSERT INTO problem_comment VALUES(598,"IT2021-06-17-W38","f21ada1d50ad6673ce1efb578513ead6","2e34609794290a770cb0349119d78d21","กู้ข้อมูลแล้ว","0.00","2021-06-17 15:20:29");
INSERT INTO problem_comment VALUES(599,"IT2021-06-17-W39","5997108712eef9df6ecab22f1f3728f9","befb5e146e599a9876757fb18ce5fa2e",NULL,"0.00","2021-06-17 16:03:16");
INSERT INTO problem_comment VALUES(600,"IT2021-06-17-W39","5997108712eef9df6ecab22f1f3728f9","141f76f3b648cd1d8d21cceed6b3b418",NULL,"0.00","2021-06-17 16:03:24");
INSERT INTO problem_comment VALUES(601,"IT2021-06-17-W40","5997108712eef9df6ecab22f1f3728f9","befb5e146e599a9876757fb18ce5fa2e",NULL,"0.00","2021-06-17 16:03:37");
INSERT INTO problem_comment VALUES(602,"IT2021-06-17-W40","5997108712eef9df6ecab22f1f3728f9","141f76f3b648cd1d8d21cceed6b3b418",NULL,"0.00","2021-06-17 16:03:45");
INSERT INTO problem_comment VALUES(603,"IT2021-06-17-W41","f21ada1d50ad6673ce1efb578513ead6","befb5e146e599a9876757fb18ce5fa2e",NULL,"0.00","2021-06-17 16:45:44");
INSERT INTO problem_comment VALUES(604,"IT2021-06-17-W41","f21ada1d50ad6673ce1efb578513ead6","2e34609794290a770cb0349119d78d21","ติดตั้งแล้ว","0.00","2021-06-17 17:14:51");
INSERT INTO problem_comment VALUES(605,"IT2021-06-17-W39","","2e34609794290a770cb0349119d78d21",NULL,"0.00","2021-06-18 10:20:23");
INSERT INTO problem_comment VALUES(606,"IT2021-06-17-W40","5997108712eef9df6ecab22f1f3728f9","2e34609794290a770cb0349119d78d21",NULL,"0.00","2021-06-18 10:20:37");
INSERT INTO problem_comment VALUES(607,"IT2021-06-18-W42","f21ada1d50ad6673ce1efb578513ead6","befb5e146e599a9876757fb18ce5fa2e",NULL,"0.00","2021-06-18 11:47:47");
INSERT INTO problem_comment VALUES(608,"IT2021-06-18-W43","f21ada1d50ad6673ce1efb578513ead6","befb5e146e599a9876757fb18ce5fa2e",NULL,"0.00","2021-06-18 11:50:47");
INSERT INTO problem_comment VALUES(609,"IT2021-06-18-W44","5997108712eef9df6ecab22f1f3728f9","befb5e146e599a9876757fb18ce5fa2e",NULL,"0.00","2021-06-18 13:36:05");
INSERT INTO problem_comment VALUES(610,"IT2021-06-18-W44","5997108712eef9df6ecab22f1f3728f9","141f76f3b648cd1d8d21cceed6b3b418",NULL,"0.00","2021-06-18 13:36:16");
INSERT INTO problem_comment VALUES(611,"IT2021-06-18-W44","5997108712eef9df6ecab22f1f3728f9","2e34609794290a770cb0349119d78d21",NULL,"0.00","2021-06-18 15:07:51");
INSERT INTO problem_comment VALUES(612,"IT2021-06-18-W43","5997108712eef9df6ecab22f1f3728f9","2e34609794290a770cb0349119d78d21",NULL,"0.00","2021-06-18 15:08:02");
INSERT INTO problem_comment VALUES(613,"IT2021-06-18-W42","5997108712eef9df6ecab22f1f3728f9","2e34609794290a770cb0349119d78d21",NULL,"0.00","2021-06-18 15:08:13");
INSERT INTO problem_comment VALUES(614,"IT2021-06-18-W45","5997108712eef9df6ecab22f1f3728f9","befb5e146e599a9876757fb18ce5fa2e",NULL,"0.00","2021-06-18 15:34:10");
INSERT INTO problem_comment VALUES(615,"IT2021-06-18-W46","5997108712eef9df6ecab22f1f3728f9","befb5e146e599a9876757fb18ce5fa2e",NULL,"0.00","2021-06-18 17:10:42");
INSERT INTO problem_comment VALUES(616,"IT2021-06-18-W46","5997108712eef9df6ecab22f1f3728f9","2e34609794290a770cb0349119d78d21","แจ้งการตลาด ให้ประสานงานให้","0.00","2021-06-18 17:11:03");
INSERT INTO problem_comment VALUES(617,"IT2021-06-18-W45","5997108712eef9df6ecab22f1f3728f9","141f76f3b648cd1d8d21cceed6b3b418",NULL,"0.00","2021-06-18 17:11:35");
INSERT INTO problem_comment VALUES(618,"IT2021-06-19-W47","5997108712eef9df6ecab22f1f3728f9","befb5e146e599a9876757fb18ce5fa2e",NULL,"0.00","2021-06-21 08:31:02");
INSERT INTO problem_comment VALUES(619,"IT2021-06-19-W48","f21ada1d50ad6673ce1efb578513ead6","befb5e146e599a9876757fb18ce5fa2e",NULL,"0.00","2021-06-21 10:56:03");
INSERT INTO problem_comment VALUES(620,"IT2021-06-19-W48","f21ada1d50ad6673ce1efb578513ead6","2e34609794290a770cb0349119d78d21","ใช้งานได้แล้ว","0.00","2021-06-21 11:00:14");
INSERT INTO problem_comment VALUES(621,"IT2021-06-21-W50","f21ada1d50ad6673ce1efb578513ead6","befb5e146e599a9876757fb18ce5fa2e",NULL,"0.00","2021-06-21 11:45:52");
INSERT INTO problem_comment VALUES(622,"IT2021-06-21-W50","f21ada1d50ad6673ce1efb578513ead6","2e34609794290a770cb0349119d78d21","หน้าร้านอัพถึงวันที่ 19/6/64","0.00","2021-06-21 11:54:42");
INSERT INTO problem_comment VALUES(623,"IT2021-06-21-W51","f21ada1d50ad6673ce1efb578513ead6","befb5e146e599a9876757fb18ce5fa2e",NULL,"0.00","2021-06-21 11:55:10");
INSERT INTO problem_comment VALUES(624,"IT2021-06-21-W54","5997108712eef9df6ecab22f1f3728f9","befb5e146e599a9876757fb18ce5fa2e",NULL,"0.00","2021-06-21 13:35:54");
INSERT INTO problem_comment VALUES(625,"IT2021-06-21-W54","5997108712eef9df6ecab22f1f3728f9","befb5e146e599a9876757fb18ce5fa2e",NULL,"0.00","2021-06-21 13:36:14");
INSERT INTO problem_comment VALUES(626,"IT2021-06-21-W53","5997108712eef9df6ecab22f1f3728f9","befb5e146e599a9876757fb18ce5fa2e",NULL,"0.00","2021-06-21 13:38:34");
INSERT INTO problem_comment VALUES(627,"IT2021-06-21-W53","5997108712eef9df6ecab22f1f3728f9","876e933c13f11540337913cd5eba269e",NULL,"0.00","2021-06-21 13:39:15");
INSERT INTO problem_comment VALUES(628,"IT2021-06-21-W52","5997108712eef9df6ecab22f1f3728f9","befb5e146e599a9876757fb18ce5fa2e",NULL,"0.00","2021-06-21 13:40:30");
INSERT INTO problem_comment VALUES(629,"IT2021-06-21-W52","5997108712eef9df6ecab22f1f3728f9","2e34609794290a770cb0349119d78d21",NULL,"0.00","2021-06-21 13:41:41");
INSERT INTO problem_comment VALUES(630,"IT2021-06-18-W45","5997108712eef9df6ecab22f1f3728f9","2e34609794290a770cb0349119d78d21",NULL,"0.00","2021-06-21 13:42:23");
INSERT INTO problem_comment VALUES(631,"IT2021-06-19-W47","5997108712eef9df6ecab22f1f3728f9","2e34609794290a770cb0349119d78d21",NULL,"0.00","2021-06-21 13:42:35");
INSERT INTO problem_comment VALUES(632,"IT2021-06-21-W49","5997108712eef9df6ecab22f1f3728f9","befb5e146e599a9876757fb18ce5fa2e",NULL,"0.00","2021-06-21 13:43:23");
INSERT INTO problem_comment VALUES(633,"IT2021-06-08-W16","5997108712eef9df6ecab22f1f3728f9","2e34609794290a770cb0349119d78d21","สาขาได้ส่งเครื่องที่มีปัญหากลับมาให้ทาง IT เรียบร้อยแล้ว ","0.00","2021-06-21 13:44:16");
INSERT INTO problem_comment VALUES(634,"IT2021-06-21-W51","f21ada1d50ad6673ce1efb578513ead6","2e34609794290a770cb0349119d78d21","ติดตั้งแล้ว","0.00","2021-06-21 14:08:37");
INSERT INTO problem_comment VALUES(635,"IT2021-06-21-W54","f21ada1d50ad6673ce1efb578513ead6","2e34609794290a770cb0349119d78d21",NULL,"0.00","2021-06-21 14:15:02");
INSERT INTO problem_comment VALUES(636,"IT2021-06-21-W57","f21ada1d50ad6673ce1efb578513ead6","befb5e146e599a9876757fb18ce5fa2e",NULL,"0.00","2021-06-21 15:32:32");
INSERT INTO problem_comment VALUES(637,"IT2021-06-21-W56","f21ada1d50ad6673ce1efb578513ead6","befb5e146e599a9876757fb18ce5fa2e",NULL,"0.00","2021-06-21 15:32:44");
INSERT INTO problem_comment VALUES(638,"IT2021-06-21-W57","f21ada1d50ad6673ce1efb578513ead6","2e34609794290a770cb0349119d78d21","สาขาไม่ได้อัพไฟล์มา","0.00","2021-06-21 15:51:31");
INSERT INTO problem_comment VALUES(639,"IT2021-06-21-W56","f21ada1d50ad6673ce1efb578513ead6","2e34609794290a770cb0349119d78d21","ไฟล์เสีย ต้องให้สาขาสแกนให้ใหม่","0.00","2021-06-21 15:52:09");
INSERT INTO problem_comment VALUES(640,"IT2021-06-21-W55","f21ada1d50ad6673ce1efb578513ead6","befb5e146e599a9876757fb18ce5fa2e",NULL,"0.00","2021-06-21 15:56:44");
INSERT INTO problem_comment VALUES(641,"IT2021-06-21-W55","f21ada1d50ad6673ce1efb578513ead6","27e87048f9283b6e13347df4388c98e9","รอโกดังมารับ","0.00","2021-06-21 16:11:03");
INSERT INTO problem_comment VALUES(642,"IT2021-06-21-W49","f21ada1d50ad6673ce1efb578513ead6","2e34609794290a770cb0349119d78d21","ติดตั้งแล้ว","0.00","2021-06-22 09:18:05");
INSERT INTO problem_comment VALUES(643,"IT2021-06-22-W58","f21ada1d50ad6673ce1efb578513ead6","befb5e146e599a9876757fb18ce5fa2e",NULL,"0.00","2021-06-22 10:19:48");
INSERT INTO problem_comment VALUES(644,"IT2021-06-22-W58","f21ada1d50ad6673ce1efb578513ead6","2e34609794290a770cb0349119d78d21","ตรวจสอบจากCloud สาขาแล้ว ไม่มีไฟล์ครับ","0.00","2021-06-22 12:08:07");
INSERT INTO problem_comment VALUES(645,"IT2021-06-22-W59","f21ada1d50ad6673ce1efb578513ead6","befb5e146e599a9876757fb18ce5fa2e",NULL,"0.00","2021-06-22 16:53:15");
INSERT INTO problem_comment VALUES(646,"IT2021-06-23-W60","f21ada1d50ad6673ce1efb578513ead6","befb5e146e599a9876757fb18ce5fa2e",NULL,"0.00","2021-06-23 11:47:51");
INSERT INTO problem_comment VALUES(647,"IT2021-06-23-W60","f21ada1d50ad6673ce1efb578513ead6","2e34609794290a770cb0349119d78d21","เปิดได้ปกติ","0.00","2021-06-23 13:14:03");
INSERT INTO problem_comment VALUES(648,"IT2021-06-22-W59","f21ada1d50ad6673ce1efb578513ead6","2e34609794290a770cb0349119d78d21","สาขาแจ้งเข้าใช้ได้แล้ว","0.00","2021-06-23 13:31:50");
INSERT INTO problem_comment VALUES(649,"IT2021-06-21-W53","f21ada1d50ad6673ce1efb578513ead6","968d42cbf280bc3c26103d31955bae59","ส่งเครื่องสาขากลับHO","0.00","2021-06-23 13:39:02");
INSERT INTO problem_comment VALUES(650,"IT2021-06-23-W62","f21ada1d50ad6673ce1efb578513ead6","befb5e146e599a9876757fb18ce5fa2e",NULL,"0.00","2021-06-23 15:50:50");
INSERT INTO problem_comment VALUES(651,"IT2021-06-23-W61","f21ada1d50ad6673ce1efb578513ead6","befb5e146e599a9876757fb18ce5fa2e",NULL,"0.00","2021-06-23 16:23:27");
INSERT INTO problem_comment VALUES(652,"IT2021-06-23-W61","f21ada1d50ad6673ce1efb578513ead6","2e34609794290a770cb0349119d78d21","เข้าใช้งานได้","0.00","2021-06-23 16:23:58");
INSERT INTO problem_comment VALUES(653,"IT2021-06-23-W62","f21ada1d50ad6673ce1efb578513ead6","2e34609794290a770cb0349119d78d21","ติดตั้งแล้ว","0.00","2021-06-23 16:46:34");
INSERT INTO problem_comment VALUES(654,"IT2021-06-24-W63","f21ada1d50ad6673ce1efb578513ead6","befb5e146e599a9876757fb18ce5fa2e",NULL,"0.00","2021-06-24 09:22:39");
INSERT INTO problem_comment VALUES(655,"IT2021-06-24-W63","f21ada1d50ad6673ce1efb578513ead6","2e34609794290a770cb0349119d78d21","ติดตั้งแล้ว","0.00","2021-06-24 11:09:50");
INSERT INTO problem_comment VALUES(656,"IT2021-06-24-W64","f21ada1d50ad6673ce1efb578513ead6","befb5e146e599a9876757fb18ce5fa2e",NULL,"0.00","2021-06-24 17:07:15");
INSERT INTO problem_comment VALUES(657,"IT2021-06-24-W64","f21ada1d50ad6673ce1efb578513ead6","2e34609794290a770cb0349119d78d21","แก้ไขแล้ว","0.00","2021-06-24 17:07:36");
INSERT INTO problem_comment VALUES(658,"IT2021-06-24-W66","5997108712eef9df6ecab22f1f3728f9","57995055c28df9e82476a54f852bd214","**ไม่อนุมัติ** เนื่องจากไม่มีการระบุวัตถุประสงค์การขอดูให้ชัดเจน ขอกำหนดระยะเวลาไม่เกิน1-2ชม.ในการดึง ","0.00","2021-06-25 09:52:57");
INSERT INTO problem_comment VALUES(659,"IT2021-06-25-W67","5997108712eef9df6ecab22f1f3728f9","befb5e146e599a9876757fb18ce5fa2e",NULL,"0.00","2021-06-25 15:39:56");
INSERT INTO problem_comment VALUES(660,"IT2021-06-25-W67","5997108712eef9df6ecab22f1f3728f9","2e34609794290a770cb0349119d78d21",NULL,"0.00","2021-06-25 16:45:15");
INSERT INTO problem_comment VALUES(661,"IT2021-06-21-W53","5997108712eef9df6ecab22f1f3728f9","2e34609794290a770cb0349119d78d21",NULL,"0.00","2021-06-25 16:45:49");
INSERT INTO problem_comment VALUES(662,"IT2021-06-25-W68","f21ada1d50ad6673ce1efb578513ead6","befb5e146e599a9876757fb18ce5fa2e",NULL,"0.00","2021-06-25 17:20:32");
INSERT INTO problem_comment VALUES(663,"IT2021-06-25-W68","f21ada1d50ad6673ce1efb578513ead6","2e34609794290a770cb0349119d78d21","แนะนำต่อHostport wifi","0.00","2021-06-25 17:24:18");
INSERT INTO problem_comment VALUES(664,"IT2021-06-24-W65","f21ada1d50ad6673ce1efb578513ead6","57995055c28df9e82476a54f852bd214","ซ้ำ","0.00","2021-06-25 17:24:49");
INSERT INTO problem_comment VALUES(665,"IT2021-06-28-W70","5997108712eef9df6ecab22f1f3728f9","befb5e146e599a9876757fb18ce5fa2e",NULL,"0.00","2021-06-28 10:08:15");
INSERT INTO problem_comment VALUES(666,"IT2021-06-28-W70","5997108712eef9df6ecab22f1f3728f9","141f76f3b648cd1d8d21cceed6b3b418",NULL,"0.00","2021-06-28 10:08:30");
INSERT INTO problem_comment VALUES(667,"IT2021-06-21-W55","5997108712eef9df6ecab22f1f3728f9","2e34609794290a770cb0349119d78d21","MGB​เครื่องปริ้นใช่ได้ปกติละครับ","0.00","2021-06-28 11:23:20");
INSERT INTO problem_comment VALUES(668,"IT2021-06-28-W70","5997108712eef9df6ecab22f1f3728f9","2e34609794290a770cb0349119d78d21",NULL,"0.00","2021-06-28 12:29:55");
INSERT INTO problem_comment VALUES(669,"IT2021-06-25-W69","5997108712eef9df6ecab22f1f3728f9","befb5e146e599a9876757fb18ce5fa2e",NULL,"0.00","2021-06-28 12:46:11");
INSERT INTO problem_comment VALUES(670,"IT2021-06-25-W69","5997108712eef9df6ecab22f1f3728f9","2e34609794290a770cb0349119d78d21","โทรสอบถามหน้าร้าน หน้าร้านบอกว่าใช้ได้เรียบร้อยแล้วค่ะ","0.00","2021-06-28 12:51:54");
INSERT INTO problem_comment VALUES(671,"IT2021-06-29-W72","f21ada1d50ad6673ce1efb578513ead6","befb5e146e599a9876757fb18ce5fa2e",NULL,"0.00","2021-06-29 09:47:22");
INSERT INTO problem_comment VALUES(672,"IT2021-06-29-W72","f21ada1d50ad6673ce1efb578513ead6","2e34609794290a770cb0349119d78d21",NULL,"0.00","2021-06-29 09:53:19");
INSERT INTO problem_comment VALUES(673,"IT2021-06-28-W71","f21ada1d50ad6673ce1efb578513ead6","befb5e146e599a9876757fb18ce5fa2e",NULL,"0.00","2021-06-29 09:53:35");
INSERT INTO problem_comment VALUES(674,"IT2021-06-29-W73","f21ada1d50ad6673ce1efb578513ead6","befb5e146e599a9876757fb18ce5fa2e",NULL,"0.00","2021-06-29 14:34:20");
INSERT INTO problem_comment VALUES(675,"IT2021-06-15-W34","f21ada1d50ad6673ce1efb578513ead6","27e87048f9283b6e13347df4388c98e9",NULL,"0.00","2021-06-29 14:35:27");
INSERT INTO problem_comment VALUES(676,"IT2021-06-29-W73","f21ada1d50ad6673ce1efb578513ead6","2e34609794290a770cb0349119d78d21","ไฟล์เสียครับ ให้สาขาScanมาใหม่ครับผม","0.00","2021-06-29 16:17:38");
INSERT INTO problem_comment VALUES(677,"IT2021-06-30-W74","f21ada1d50ad6673ce1efb578513ead6","befb5e146e599a9876757fb18ce5fa2e",NULL,"0.00","2021-06-30 11:51:27");
INSERT INTO problem_comment VALUES(678,"IT2021-06-30-W74","f21ada1d50ad6673ce1efb578513ead6","2e34609794290a770cb0349119d78d21","ติดตั้งแล้ว","0.00","2021-06-30 12:08:00");
INSERT INTO problem_comment VALUES(679,"IT2021-07-04-W03","5997108712eef9df6ecab22f1f3728f9","befb5e146e599a9876757fb18ce5fa2e",NULL,"0.00","2021-07-04 12:51:25");
INSERT INTO problem_comment VALUES(680,"IT2021-07-04-W06","5997108712eef9df6ecab22f1f3728f9","befb5e146e599a9876757fb18ce5fa2e",NULL,"0.00","2021-07-05 08:21:42");
INSERT INTO problem_comment VALUES(681,"IT2021-07-04-W05","5997108712eef9df6ecab22f1f3728f9","befb5e146e599a9876757fb18ce5fa2e",NULL,"0.00","2021-07-05 08:23:00");
INSERT INTO problem_comment VALUES(682,"IT2021-07-04-W04","5997108712eef9df6ecab22f1f3728f9","befb5e146e599a9876757fb18ce5fa2e",NULL,"0.00","2021-07-05 08:23:15");
INSERT INTO problem_comment VALUES(683,"IT2021-07-04-W06","5997108712eef9df6ecab22f1f3728f9","2e34609794290a770cb0349119d78d21",NULL,"0.00","2021-07-05 08:23:39");
INSERT INTO problem_comment VALUES(684,"IT2021-07-04-W05","5997108712eef9df6ecab22f1f3728f9","befb5e146e599a9876757fb18ce5fa2e",NULL,"0.00","2021-07-05 08:23:50");
INSERT INTO problem_comment VALUES(685,"IT2021-07-04-W05","5997108712eef9df6ecab22f1f3728f9","2e34609794290a770cb0349119d78d21",NULL,"0.00","2021-07-05 08:24:04");
INSERT INTO problem_comment VALUES(686,"IT2021-07-04-W04","5997108712eef9df6ecab22f1f3728f9","2e34609794290a770cb0349119d78d21",NULL,"0.00","2021-07-05 08:24:38");
INSERT INTO problem_comment VALUES(687,"IT2021-07-04-W03","5997108712eef9df6ecab22f1f3728f9","2e34609794290a770cb0349119d78d21",NULL,"0.00","2021-07-05 08:25:39");
INSERT INTO problem_comment VALUES(688,"IT2021-06-28-W71","5997108712eef9df6ecab22f1f3728f9","2e34609794290a770cb0349119d78d21",NULL,"0.00","2021-07-05 08:26:46");
INSERT INTO problem_comment VALUES(689,"IT2021-07-05-W07","f21ada1d50ad6673ce1efb578513ead6","befb5e146e599a9876757fb18ce5fa2e",NULL,"0.00","2021-07-05 17:00:17");
INSERT INTO problem_comment VALUES(690,"IT2021-07-03-W01","f21ada1d50ad6673ce1efb578513ead6","2376b33c92767c1437421a99bbc7164f",NULL,"0.00","2021-07-05 17:17:37");
INSERT INTO problem_comment VALUES(691,"IT2021-07-03-W01","f21ada1d50ad6673ce1efb578513ead6","57995055c28df9e82476a54f852bd214",NULL,"0.00","2021-07-05 17:17:49");
INSERT INTO problem_comment VALUES(692,"IT2021-06-30-W75","f21ada1d50ad6673ce1efb578513ead6","befb5e146e599a9876757fb18ce5fa2e",NULL,"0.00","2021-07-05 17:18:56");
INSERT INTO problem_comment VALUES(693,"IT2021-06-30-W75","f21ada1d50ad6673ce1efb578513ead6","2e34609794290a770cb0349119d78d21",NULL,"0.00","2021-07-05 17:19:11");
INSERT INTO problem_comment VALUES(694,"IT2021-07-03-W02","f21ada1d50ad6673ce1efb578513ead6","befb5e146e599a9876757fb18ce5fa2e",NULL,"0.00","2021-07-05 17:19:31");
INSERT INTO problem_comment VALUES(695,"IT2021-07-03-W02","f21ada1d50ad6673ce1efb578513ead6","2e34609794290a770cb0349119d78d21",NULL,"0.00","2021-07-05 17:20:46");
INSERT INTO problem_comment VALUES(696,"IT2021-07-05-W07","f21ada1d50ad6673ce1efb578513ead6","2e34609794290a770cb0349119d78d21",NULL,"0.00","2021-07-05 17:28:00");
INSERT INTO problem_comment VALUES(697,"IT2021-07-06-W08","f21ada1d50ad6673ce1efb578513ead6","befb5e146e599a9876757fb18ce5fa2e",NULL,"0.00","2021-07-06 13:15:10");
INSERT INTO problem_comment VALUES(698,"IT2021-07-06-W08","f21ada1d50ad6673ce1efb578513ead6","2e34609794290a770cb0349119d78d21",NULL,"0.00","2021-07-06 13:15:23");
INSERT INTO problem_comment VALUES(699,"IT2021-07-07-W09","5997108712eef9df6ecab22f1f3728f9","befb5e146e599a9876757fb18ce5fa2e",NULL,"0.00","2021-07-07 12:38:02");
INSERT INTO problem_comment VALUES(700,"IT2021-07-07-W09","5997108712eef9df6ecab22f1f3728f9","2e34609794290a770cb0349119d78d21",NULL,"0.00","2021-07-07 12:38:15");
INSERT INTO problem_comment VALUES(701,"IT2021-07-07-W10","f21ada1d50ad6673ce1efb578513ead6","befb5e146e599a9876757fb18ce5fa2e",NULL,"0.00","2021-07-07 12:38:36");
INSERT INTO problem_comment VALUES(702,"IT2021-07-07-W10","f21ada1d50ad6673ce1efb578513ead6","2e34609794290a770cb0349119d78d21","ติดตั้งแล้ว","0.00","2021-07-07 12:42:07");
INSERT INTO problem_comment VALUES(703,"IT2021-06-15-W34","f21ada1d50ad6673ce1efb578513ead6","02b5a3574052961b5336356a9a634d05","รอเครื่องสาขาส่งมาซ่อม","0.00","2021-07-07 12:53:36");
INSERT INTO problem_comment VALUES(704,"IT2021-06-15-W34","f21ada1d50ad6673ce1efb578513ead6","968d42cbf280bc3c26103d31955bae59",NULL,"0.00","2021-07-07 12:53:51");
INSERT INTO problem_comment VALUES(705,"IT2021-07-07-W11","f21ada1d50ad6673ce1efb578513ead6","befb5e146e599a9876757fb18ce5fa2e",NULL,"0.00","2021-07-07 13:22:33");
INSERT INTO problem_comment VALUES(706,"IT2021-07-07-W12","f21ada1d50ad6673ce1efb578513ead6","befb5e146e599a9876757fb18ce5fa2e",NULL,"0.00","2021-07-07 13:24:18");
INSERT INTO problem_comment VALUES(707,"IT2021-07-07-W12","f21ada1d50ad6673ce1efb578513ead6","2e34609794290a770cb0349119d78d21","ติดตั้งFontแล้ว","0.00","2021-07-07 13:29:24");
INSERT INTO problem_comment VALUES(708,"IT2021-07-07-W11","f21ada1d50ad6673ce1efb578513ead6","2e34609794290a770cb0349119d78d21","แก้ไขแล้ว","0.00","2021-07-07 13:30:21");
INSERT INTO problem_comment VALUES(709,"IT2021-07-09-W13","5997108712eef9df6ecab22f1f3728f9","befb5e146e599a9876757fb18ce5fa2e",NULL,"0.00","2021-07-09 10:55:03");
INSERT INTO problem_comment VALUES(710,"IT2021-07-09-W13","5997108712eef9df6ecab22f1f3728f9","2e34609794290a770cb0349119d78d21",NULL,"0.00","2021-07-09 11:03:50");
INSERT INTO problem_comment VALUES(711,"IT2021-07-11-W14","f21ada1d50ad6673ce1efb578513ead6","befb5e146e599a9876757fb18ce5fa2e",NULL,"0.00","2021-07-11 13:58:28");
INSERT INTO problem_comment VALUES(712,"IT2021-07-11-W14","f21ada1d50ad6673ce1efb578513ead6","2e34609794290a770cb0349119d78d21","แก้ไขแล้ว","0.00","2021-07-11 14:07:04");
INSERT INTO problem_comment VALUES(713,"IT2021-07-11-W15","f21ada1d50ad6673ce1efb578513ead6","befb5e146e599a9876757fb18ce5fa2e",NULL,"0.00","2021-07-11 16:04:07");
INSERT INTO problem_comment VALUES(714,"IT2021-07-11-W15","f21ada1d50ad6673ce1efb578513ead6","2e34609794290a770cb0349119d78d21","ใช้งานได้Cloudที่HOสามารถดูได้","0.00","2021-07-11 16:05:05");
INSERT INTO problem_comment VALUES(715,"IT2021-06-15-W34","f21ada1d50ad6673ce1efb578513ead6","ce3bbcf0542b7ab3c191b9ca61a8ab84",NULL,"0.00","2021-07-14 10:54:25");
INSERT INTO problem_comment VALUES(716,"IT2021-07-14-W16","f21ada1d50ad6673ce1efb578513ead6","befb5e146e599a9876757fb18ce5fa2e","ขอรีโมทครับ","0.00","2021-07-14 12:12:24");
INSERT INTO problem_comment VALUES(717,"IT2021-07-14-W16","f21ada1d50ad6673ce1efb578513ead6","2e34609794290a770cb0349119d78d21","ติดตั้งโปรแกรมVNCให้แล้ว","0.00","2021-07-14 13:33:21");
INSERT INTO problem_comment VALUES(718,"IT2021-07-15-W17","f21ada1d50ad6673ce1efb578513ead6","befb5e146e599a9876757fb18ce5fa2e",NULL,"0.00","2021-07-15 11:27:45");
INSERT INTO problem_comment VALUES(719,"IT2021-07-15-W17","f21ada1d50ad6673ce1efb578513ead6","2e34609794290a770cb0349119d78d21","ติดตั้งแล้ว","0.00","2021-07-15 11:41:45");
INSERT INTO problem_comment VALUES(720,"IT2021-07-17-W18","f21ada1d50ad6673ce1efb578513ead6","befb5e146e599a9876757fb18ce5fa2e",NULL,"0.00","2021-07-17 11:00:56");
INSERT INTO problem_comment VALUES(721,"IT2021-07-17-W18","f21ada1d50ad6673ce1efb578513ead6","2e34609794290a770cb0349119d78d21","อินเตอร์ใช้งานได้แล้ว","0.00","2021-07-17 11:03:02");
INSERT INTO problem_comment VALUES(722,"IT2021-07-18-W19","5997108712eef9df6ecab22f1f3728f9","befb5e146e599a9876757fb18ce5fa2e",NULL,"0.00","2021-07-19 08:17:37");
INSERT INTO problem_comment VALUES(723,"IT2021-07-19-W20","f21ada1d50ad6673ce1efb578513ead6","befb5e146e599a9876757fb18ce5fa2e",NULL,"0.00","2021-07-19 08:45:12");
INSERT INTO problem_comment VALUES(724,"IT2021-07-19-W20","f21ada1d50ad6673ce1efb578513ead6","2e34609794290a770cb0349119d78d21","แก้ไขแล้ว","0.00","2021-07-19 09:04:04");
INSERT INTO problem_comment VALUES(725,"IT2021-07-18-W19","5997108712eef9df6ecab22f1f3728f9","2e34609794290a770cb0349119d78d21","https://youtu.be/QaQ88gnx44w","0.00","2021-07-19 12:59:53");
INSERT INTO problem_comment VALUES(726,"IT2021-07-22-W21","f21ada1d50ad6673ce1efb578513ead6","befb5e146e599a9876757fb18ce5fa2e",NULL,"0.00","2021-07-22 13:37:20");
INSERT INTO problem_comment VALUES(727,"IT2021-07-22-W21","f21ada1d50ad6673ce1efb578513ead6","2e34609794290a770cb0349119d78d21",NULL,"0.00","2021-07-22 15:30:08");
INSERT INTO problem_comment VALUES(728,"IT2021-07-24-W22","f21ada1d50ad6673ce1efb578513ead6","befb5e146e599a9876757fb18ce5fa2e",NULL,"0.00","2021-07-24 11:22:19");
INSERT INTO problem_comment VALUES(729,"IT2021-07-24-W22","f21ada1d50ad6673ce1efb578513ead6","9ba0f256a5f620136568c6b47dcb24bd",NULL,"0.00","2021-07-24 11:47:45");
INSERT INTO problem_comment VALUES(730,"IT2021-07-29-W23","f21ada1d50ad6673ce1efb578513ead6","befb5e146e599a9876757fb18ce5fa2e",NULL,"0.00","2021-07-29 10:58:56");
INSERT INTO problem_comment VALUES(731,"IT2021-07-29-W24","f21ada1d50ad6673ce1efb578513ead6","befb5e146e599a9876757fb18ce5fa2e",NULL,"0.00","2021-07-29 13:14:05");
INSERT INTO problem_comment VALUES(732,"IT2021-07-29-W23","f21ada1d50ad6673ce1efb578513ead6","2e34609794290a770cb0349119d78d21","ดึงแล้ว","0.00","2021-07-29 13:29:43");
INSERT INTO problem_comment VALUES(733,"IT2021-07-29-W25","f21ada1d50ad6673ce1efb578513ead6","befb5e146e599a9876757fb18ce5fa2e",NULL,"0.00","2021-07-29 13:33:14");
INSERT INTO problem_comment VALUES(734,"IT2021-07-29-W25","f21ada1d50ad6673ce1efb578513ead6","2e34609794290a770cb0349119d78d21","ติดตั้งแล้ว","0.00","2021-07-29 13:56:53");
INSERT INTO problem_comment VALUES(735,"IT2021-07-29-W24","f21ada1d50ad6673ce1efb578513ead6","2e34609794290a770cb0349119d78d21",NULL,"0.00","2021-07-29 16:36:09");
INSERT INTO problem_comment VALUES(736,"IT2021-07-24-W22","f21ada1d50ad6673ce1efb578513ead6","02b5a3574052961b5336356a9a634d05",NULL,"0.00","2021-08-04 08:42:09");
INSERT INTO problem_comment VALUES(737,"IT2021-07-24-W22","f21ada1d50ad6673ce1efb578513ead6","2e34609794290a770cb0349119d78d21",NULL,"0.00","2021-08-04 08:42:31");
INSERT INTO problem_comment VALUES(738,"IT2021-08-04-W01","f21ada1d50ad6673ce1efb578513ead6","befb5e146e599a9876757fb18ce5fa2e",NULL,"0.00","2021-08-04 14:13:36");
INSERT INTO problem_comment VALUES(739,"IT2021-08-04-W01","f21ada1d50ad6673ce1efb578513ead6","2e34609794290a770cb0349119d78d21","สาขาแจ้ง ใช้งานได้แล้ว","0.00","2021-08-04 14:15:24");
INSERT INTO problem_comment VALUES(740,"IT2021-08-05-W02","5997108712eef9df6ecab22f1f3728f9","befb5e146e599a9876757fb18ce5fa2e",NULL,"0.00","2021-08-05 08:57:51");
INSERT INTO problem_comment VALUES(741,"IT2021-08-05-W02","5997108712eef9df6ecab22f1f3728f9","2e34609794290a770cb0349119d78d21",NULL,"0.00","2021-08-05 09:09:04");
INSERT INTO problem_comment VALUES(742,"IT2021-08-05-W03","f21ada1d50ad6673ce1efb578513ead6","befb5e146e599a9876757fb18ce5fa2e",NULL,"0.00","2021-08-05 13:05:03");
INSERT INTO problem_comment VALUES(743,"IT2021-08-05-W03","f21ada1d50ad6673ce1efb578513ead6","2e34609794290a770cb0349119d78d21",NULL,"0.00","2021-08-05 13:08:37");
INSERT INTO problem_comment VALUES(744,"IT2021-08-09-W04","f21ada1d50ad6673ce1efb578513ead6","befb5e146e599a9876757fb18ce5fa2e",NULL,"0.00","2021-08-09 09:13:07");
INSERT INTO problem_comment VALUES(745,"IT2021-08-09-W04","f21ada1d50ad6673ce1efb578513ead6","2e34609794290a770cb0349119d78d21","ติดตั้งใหม่แล้ว","0.00","2021-08-09 10:25:01");
INSERT INTO problem_comment VALUES(746,"IT2021-08-09-W05","f21ada1d50ad6673ce1efb578513ead6","befb5e146e599a9876757fb18ce5fa2e",NULL,"0.00","2021-08-09 17:40:37");
INSERT INTO problem_comment VALUES(747,"IT2021-08-09-W05","f21ada1d50ad6673ce1efb578513ead6","2e34609794290a770cb0349119d78d21","ใช้งานได้","0.00","2021-08-09 17:47:41");
INSERT INTO problem_comment VALUES(748,"IT2021-06-15-W34","5997108712eef9df6ecab22f1f3728f9","2e34609794290a770cb0349119d78d21","ส่งเครื่องของสาขากลับสาขาแล้วเรียบร้อย ","0.00","2021-08-10 16:25:42");
INSERT INTO problem_comment VALUES(749,"IT2021-08-11-W06","f21ada1d50ad6673ce1efb578513ead6","befb5e146e599a9876757fb18ce5fa2e",NULL,"0.00","2021-08-11 13:17:08");
INSERT INTO problem_comment VALUES(750,"IT2021-08-11-W06","f21ada1d50ad6673ce1efb578513ead6","27e87048f9283b6e13347df4388c98e9",NULL,"0.00","2021-08-11 15:34:55");
INSERT INTO problem_comment VALUES(751,"IT2021-08-12-W07","f21ada1d50ad6673ce1efb578513ead6","befb5e146e599a9876757fb18ce5fa2e",NULL,"0.00","2021-08-12 19:05:54");
INSERT INTO problem_comment VALUES(752,"IT2021-08-12-W08","f21ada1d50ad6673ce1efb578513ead6","befb5e146e599a9876757fb18ce5fa2e",NULL,"0.00","2021-08-12 19:42:28");
INSERT INTO problem_comment VALUES(753,"IT2021-08-12-W07","f21ada1d50ad6673ce1efb578513ead6","141f76f3b648cd1d8d21cceed6b3b418",NULL,"0.00","2021-08-12 19:49:33");
INSERT INTO problem_comment VALUES(754,"IT2021-08-12-W08","f21ada1d50ad6673ce1efb578513ead6","2e34609794290a770cb0349119d78d21","เป็นเพราะInternetหลุดบางช่วงครับ","0.00","2021-08-12 20:06:41");
INSERT INTO problem_comment VALUES(755,"IT2021-08-12-W07","f21ada1d50ad6673ce1efb578513ead6","2e34609794290a770cb0349119d78d21","เน็ตกลับมาใช้ได้ปกติ","0.00","2021-08-12 20:07:34");
INSERT INTO problem_comment VALUES(756,"IT2021-08-13-W09","f21ada1d50ad6673ce1efb578513ead6","befb5e146e599a9876757fb18ce5fa2e","เรียนเจ้าหน้าที่ทุกท่าน

เวลา 12.30-13.00 น. ทาง IT จะขอดำเนินการปรับปรุงระบบช่วงเวลาดังกล่าว
ขออภัยในความไม่สะดวกค่ะ ระบบที่มีการใช้ internet หรือดึงข้อมูล ใน share อาจจะไม่สามารถใช้งานได้

ขอบคุณค่ะ
กิ๊ก IT","0.00","2021-08-13 12:12:31");
INSERT INTO problem_comment VALUES(757,"IT2021-08-13-W10","f21ada1d50ad6673ce1efb578513ead6","befb5e146e599a9876757fb18ce5fa2e",NULL,"0.00","2021-08-13 13:33:59");
INSERT INTO problem_comment VALUES(758,"IT2021-08-13-W11","f21ada1d50ad6673ce1efb578513ead6","befb5e146e599a9876757fb18ce5fa2e",NULL,"0.00","2021-08-13 14:05:33");
INSERT INTO problem_comment VALUES(759,"IT2021-08-13-W11","f21ada1d50ad6673ce1efb578513ead6","2e34609794290a770cb0349119d78d21","ใช้งานได้","0.00","2021-08-13 14:22:40");
INSERT INTO problem_comment VALUES(760,"IT2021-08-13-W12","f21ada1d50ad6673ce1efb578513ead6","befb5e146e599a9876757fb18ce5fa2e",NULL,"0.00","2021-08-13 16:19:58");
INSERT INTO problem_comment VALUES(761,"IT2021-08-13-W09","f21ada1d50ad6673ce1efb578513ead6","2e34609794290a770cb0349119d78d21","เข้าใช้งานได้","0.00","2021-08-14 12:03:33");
INSERT INTO problem_comment VALUES(762,"IT2021-08-13-W12","f21ada1d50ad6673ce1efb578513ead6","2e34609794290a770cb0349119d78d21",NULL,"0.00","2021-08-14 12:04:13");
INSERT INTO problem_comment VALUES(763,"IT2021-08-13-W10","f21ada1d50ad6673ce1efb578513ead6","2e34609794290a770cb0349119d78d21","เกิดจากInternetของTOT
ตอนนี้ใช้ได้แล้ว","0.00","2021-08-14 12:05:26");
INSERT INTO problem_comment VALUES(764,"IT2021-08-14-W13","f21ada1d50ad6673ce1efb578513ead6","befb5e146e599a9876757fb18ce5fa2e",NULL,"0.00","2021-08-14 14:33:37");
INSERT INTO problem_comment VALUES(765,"IT2021-08-14-W13","f21ada1d50ad6673ce1efb578513ead6","2e34609794290a770cb0349119d78d21","ใช้งานได้ครับ","0.00","2021-08-14 14:35:27");
INSERT INTO problem_comment VALUES(766,"IT2021-08-14-W14","f21ada1d50ad6673ce1efb578513ead6","befb5e146e599a9876757fb18ce5fa2e",NULL,"0.00","2021-08-14 16:41:55");
INSERT INTO problem_comment VALUES(767,"IT2021-08-14-W14","f21ada1d50ad6673ce1efb578513ead6","2e34609794290a770cb0349119d78d21","ไอทีปรับให้แล้ว","0.00","2021-08-14 16:42:31");
INSERT INTO problem_comment VALUES(768,"IT2021-08-16-W16","5997108712eef9df6ecab22f1f3728f9","befb5e146e599a9876757fb18ce5fa2e",NULL,"0.00","2021-08-16 07:59:53");
INSERT INTO problem_comment VALUES(769,"IT2021-08-14-W15","5997108712eef9df6ecab22f1f3728f9","befb5e146e599a9876757fb18ce5fa2e",NULL,"0.00","2021-08-16 08:00:23");
INSERT INTO problem_comment VALUES(770,"IT2021-08-16-W16","5997108712eef9df6ecab22f1f3728f9","141f76f3b648cd1d8d21cceed6b3b418","เจ้าหน้าที่ทางโปรแกรม Time กำลังแก้ไขระบบให้ค่ะ ","0.00","2021-08-16 09:20:53");
INSERT INTO problem_comment VALUES(771,"IT2021-08-14-W15","5997108712eef9df6ecab22f1f3728f9","141f76f3b648cd1d8d21cceed6b3b418","เจ้าหน้าที่ทางโปรแกรม Time กำลังแก้ไขระบบให้ค่ะ ","0.00","2021-08-16 09:21:06");
INSERT INTO problem_comment VALUES(772,"IT2021-08-16-W17","","2e34609794290a770cb0349119d78d21","ปิดเปิด Service","0.00","2021-08-16 10:08:06");
INSERT INTO problem_comment VALUES(773,"IT2021-08-11-W06","f21ada1d50ad6673ce1efb578513ead6","968d42cbf280bc3c26103d31955bae59",NULL,"0.00","2021-08-16 12:04:51");
INSERT INTO problem_comment VALUES(774,"IT2021-08-16-W18","ce63f18f7cf0a712fd4a2f47bc9ae14c","2e34609794290a770cb0349119d78d21","ปิด / เปิด Service เรียบร้อยค่ะ","0.00","2021-08-16 14:58:39");
INSERT INTO problem_comment VALUES(775,"IT2021-08-16-W18","5997108712eef9df6ecab22f1f3728f9","befb5e146e599a9876757fb18ce5fa2e",NULL,"0.00","2021-08-16 15:23:34");
INSERT INTO problem_comment VALUES(776,"IT2021-08-16-W19","ce63f18f7cf0a712fd4a2f47bc9ae14c","2e34609794290a770cb0349119d78d21","เน็ต nb Error รีเครื่องใช้งานได้ปกติ","0.00","2021-08-16 19:42:52");
INSERT INTO problem_comment VALUES(777,"IT2021-08-17-W20","f21ada1d50ad6673ce1efb578513ead6","befb5e146e599a9876757fb18ce5fa2e",NULL,"0.00","2021-08-17 13:33:58");
INSERT INTO problem_comment VALUES(778,"IT2021-08-17-W21","f21ada1d50ad6673ce1efb578513ead6","befb5e146e599a9876757fb18ce5fa2e",NULL,"0.00","2021-08-17 18:27:12");
INSERT INTO problem_comment VALUES(779,"IT2021-08-17-W21","f21ada1d50ad6673ce1efb578513ead6","2e34609794290a770cb0349119d78d21","เปลี่ยนแล้ว","0.00","2021-08-17 18:39:26");
INSERT INTO problem_comment VALUES(780,"IT2021-08-18-W22","5997108712eef9df6ecab22f1f3728f9","befb5e146e599a9876757fb18ce5fa2e",NULL,"0.00","2021-08-18 08:56:41");
INSERT INTO problem_comment VALUES(781,"IT2021-08-18-W23","f21ada1d50ad6673ce1efb578513ead6","befb5e146e599a9876757fb18ce5fa2e",NULL,"0.00","2021-08-18 14:32:32");
INSERT INTO problem_comment VALUES(782,"IT2021-08-18-W23","f21ada1d50ad6673ce1efb578513ead6","2e34609794290a770cb0349119d78d21","ติดตั้งใช้งานได้","0.00","2021-08-18 15:01:01");
INSERT INTO problem_comment VALUES(783,"IT2021-08-19-W25","f21ada1d50ad6673ce1efb578513ead6","befb5e146e599a9876757fb18ce5fa2e",NULL,"0.00","2021-08-19 14:38:18");
INSERT INTO problem_comment VALUES(784,"IT2021-08-19-W25","f21ada1d50ad6673ce1efb578513ead6","141f76f3b648cd1d8d21cceed6b3b418","ต้องแก้ไขโดยการ ทำZipไฟล์ แล้วส่งใหม่ครับ","0.00","2021-08-20 11:09:52");
INSERT INTO problem_comment VALUES(785,"IT2021-08-19-W25","f21ada1d50ad6673ce1efb578513ead6","2e34609794290a770cb0349119d78d21","ทำเป็นzipไฟล์","0.00","2021-08-20 11:28:54");
INSERT INTO problem_comment VALUES(786,"IT2021-08-19-W24","f21ada1d50ad6673ce1efb578513ead6","befb5e146e599a9876757fb18ce5fa2e",NULL,"0.00","2021-08-20 11:33:35");
INSERT INTO problem_comment VALUES(787,"IT2021-08-19-W24","f21ada1d50ad6673ce1efb578513ead6","2e34609794290a770cb0349119d78d21","ดึงCCTVแล้ว
https://youtu.be/8Rt8WZ05Aqs","0.00","2021-08-20 12:05:55");



# Dump of problem_list 
# Dump DATE : 21-Aug-2021

DROP TABLE IF EXISTS problem_list;
CREATE TABLE problem_list (
  ID int(5) NOT NULL AUTO_INCREMENT,
  ticket varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  department varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  company varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  user_key varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  se_id int(5) DEFAULT NULL,
  se_li_id int(5) DEFAULT NULL,
  se_other varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  se_asset varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  pic_before varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  pic_after varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  se_namecall varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  se_approve varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  se_location varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  se_price varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  card_status varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  date date DEFAULT NULL,
  date_update date DEFAULT '0000-00-00',
  admin_update varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  time_start time DEFAULT NULL,
  time_update time DEFAULT NULL,
  admin_edit varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  edit_date_time datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (ID)
) ENGINE=InnoDB AUTO_INCREMENT=389 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;



INSERT INTO problem_list VALUES(1,"IT2021-02-18-W01","72","1","7611717e7dfb53c91a776dcd505f9802",1,3,"เครื่องปริ้นส์กดปริ้นส์แล้วออกมาแต่กระดาษเปล่าสีไม่ออก ใส่น้ำหมึกแล้ว","20-SCP-62-97-021","IT2021-02-18-W01-63532160731CB7242C5-C00D-40B8-9C76-19ED2910316E.MOV","IT2021-02-18-W01-after-72F0D59F-9617-4F53-A491-69CED86B12EB.jpeg","รุ้งทิพย์ พุฒซอน",NULL,"SCP","0.00","2e34609794290a770cb0349119d78d21","2021-02-18","2021-02-21","11c0009be8f4e977c6998edce04c9b2e","13:14:18","11:45:26",NULL,"2021-07-01 00:00:48");
INSERT INTO problem_list VALUES(2,"IT2021-02-18-W02","1","1","6ccdcc01b4cbc496cab3ed0c7fb20cac",2,100,"ต้องการระบบโปรเเกรมเพื่อทำงาน WorkFromHome","ไม่มี",NULL,"IT2021-02-18-W02-after-1613703346383.jpg","อภิรมย์ โสมีชัย",NULL,"HO","0.00","2e34609794290a770cb0349119d78d21","2021-02-18","2021-02-19","ce63f18f7cf0a712fd4a2f47bc9ae14c","16:05:35","13:18:53",NULL,"2021-08-21 01:04:11");
INSERT INTO problem_list VALUES(3,"IT2021-02-18-W03","82","1","3b28104db64a6f4666ddff80f3c79e2b",2,141,"เข้าไปใช้งานไม่ได้","IT64/02","IT2021-02-18-W03-16136431723322379766270756184888.jpg","IT2021-02-18-W03-after-E2104B12-09B3-43C2-979C-C5772BFA374F.jpeg","Painoon",NULL,"CLP","0.00","2e34609794290a770cb0349119d78d21","2021-02-18","2021-02-18","11c0009be8f4e977c6998edce04c9b2e","17:13:37","18:48:18",NULL,"2021-07-01 00:00:48");
INSERT INTO problem_list VALUES(4,"IT2021-02-19-W04","78","1","bfa7daa6736959ef0ec9b2ee01c1d656",7,138,"เมนูไม่ขึ้นภาพ","ไม่มี","IT2021-02-19-W04-179687.jpg",NULL,"เจนจิรา แก้วสมบูรณ์",NULL,"SCT","0.00","2e34609794290a770cb0349119d78d21","2021-02-19","2021-02-19","ce63f18f7cf0a712fd4a2f47bc9ae14c","13:26:48","13:27:46",NULL,"2021-08-21 01:04:13");
INSERT INTO problem_list VALUES(5,"IT2021-02-19-W05","63","1","9aa946d6abfcb4cfc9ee258593eff00f",2,3,"หมึกเต็ม แต่สั่งปริ้นเอกสารหรือสแกนแล้ว ออกมาเป็นสีจางๆ","06-CBN-58-07-01","IT2021-02-19-W05-120424.jpg","IT2021-02-19-W05-after-F4915EA1-0EEE-4D22-9B03-1414ADF837F3.jpeg","บูฌิตา สังข์ขาว",NULL,"CBN","0.00","2e34609794290a770cb0349119d78d21","2021-02-19","2021-02-19","11c0009be8f4e977c6998edce04c9b2e","15:08:38","19:06:40",NULL,"2021-08-19 14:04:41");
INSERT INTO problem_list VALUES(6,"IT2021-02-20-W06","75","1","3db564ba6fc573bad2628be5b7de4855",8,102,"ขอดูกล้องวงจรปิดบริเวณหน้าแคชเชียร์ เนื่องจากกระจกแตก ","กล้องวงจรปิดหน้าแคชเชียร์","IT2021-02-20-W06-S16105533.jpg","IT2021-02-20-W06-after-21CCD195-8E68-49CC-973A-632985573B33.png","จุรีมาศ  พิทักษ์เจริญเขต",NULL,"NEB","0.00","2e34609794290a770cb0349119d78d21","2021-02-20","2021-02-20","11c0009be8f4e977c6998edce04c9b2e","11:23:58","15:39:19",NULL,"2021-08-20 22:36:44");
INSERT INTO problem_list VALUES(7,"IT2021-02-20-W07","64","1","9cc29e8c2b924de0fd3ef55737a159c0",1,110,"Notebook ทำงานช้ามากๆๆ","14-CPK-63-97-20","IT2021-02-20-W07-16138021135693909155324096705729.jpg",NULL,"Paiboon",NULL,"CRP","0.00","2e34609794290a770cb0349119d78d21","2021-02-20","2021-03-04","ce63f18f7cf0a712fd4a2f47bc9ae14c","13:22:29","13:14:14",NULL,"2021-08-19 14:28:21");
INSERT INTO problem_list VALUES(8,"IT2021-02-21-W08","61","1","6340f02bed9ccc2a8a79007a3d67a9ad",8,102,"เปิดกล้องวงจรตอน 10.55-11.00 น.","04-CR9-63-07-001",NULL,"IT2021-02-21-W08-after-A809FED3-3E99-4ADC-9514-1DDF28E04F74.jpeg","นพดล",NULL,"CR9","0.00","2e34609794290a770cb0349119d78d21","2021-02-21","2021-02-21","11c0009be8f4e977c6998edce04c9b2e","13:09:17","13:42:42",NULL,"2021-08-20 22:36:36");
INSERT INTO problem_list VALUES(9,"IT2021-02-22-W09","5","1","d3cea0a13419c7b7d226a432af757ca4",2,3,"ปริ้นเอกสารไม่ได้","ไม่มี",NULL,NULL,"พรกมล",NULL,"HO","0.00","2e34609794290a770cb0349119d78d21","2021-02-22","2564-02-23","11c0009be8f4e977c6998edce04c9b2e","09:55:08","19:07:03",NULL,"2021-08-21 01:22:19");
INSERT INTO problem_list VALUES(10,"IT2021-02-22-W10","1","1","6ccdcc01b4cbc496cab3ed0c7fb20cac",2,110,"ขอติดตั้งระบบรีโมทในช่วงWFH ค่ะ ","ไม่มี",NULL,NULL,"อภิรมย์",NULL,"HO","0.00","2e34609794290a770cb0349119d78d21","2021-02-22","2021-02-22","11c0009be8f4e977c6998edce04c9b2e","10:07:16","11:16:45",NULL,"2021-08-21 01:04:15");
INSERT INTO problem_list VALUES(11,"IT2021-02-22-W11","18","1","d5b14c346b88725387c282ac7b851ad8",2,141,"cloud invoice สาขา CBN หน้าร้านสแกนแล้วแต่มันไม่ขึ้นค่ะ","ไม่มี",NULL,"IT2021-02-22-W11-after-Capture.JPG","อุษา",NULL,"HO","0.00","2e34609794290a770cb0349119d78d21","2021-02-22","2021-02-22","f21ada1d50ad6673ce1efb578513ead6","10:30:09","18:07:32",NULL,"2021-08-21 01:04:19");
INSERT INTO problem_list VALUES(12,"IT2021-02-22-W12","2","1","ed6b1d41694cc31a1bc8a0f659d5faf7",2,140,"โปรแกรม Windspeed ชอบค้าง และ error อยู่บ่อยครั้ง","ไม่มี",NULL,"IT2021-02-22-W12-after-Screenshot(495).png","พิพิธพร",NULL,"HO","0.00","2e34609794290a770cb0349119d78d21","2021-02-22","2021-02-23","ce63f18f7cf0a712fd4a2f47bc9ae14c","10:32:13","22:05:10",NULL,"2021-08-21 01:04:21");
INSERT INTO problem_list VALUES(13,"IT2021-02-22-W13","70","1","b29017088b3135c435f9c7912ec2cdb2",7,131,"ไม่มีปุ่มกดเมนูในส่วนของเบียร์และเครื่องดื่มแอลกอฮอล์ทั้งหมด
","17-CR3-61-07-01(04)",NULL,NULL,"มณฑ์ณลิน",NULL,"CR3","0.00","2e34609794290a770cb0349119d78d21","2021-02-22","2021-02-22","11c0009be8f4e977c6998edce04c9b2e","17:59:40","23:48:49",NULL,"2021-07-01 00:00:48");
INSERT INTO problem_list VALUES(14,"IT2021-02-23-W14","18","1","d5b14c346b88725387c282ac7b851ad8",2,141,"invoice สาขา T21 หน้าร้านสแกนแล้วแต่ไม่พบข้อมูล","ไม่มี","IT2021-02-23-W14-T21.jpg","IT2021-02-23-W14-after-image.jpg","อุษา",NULL,"HO","0.00","2e34609794290a770cb0349119d78d21","2021-02-23","2021-02-23","f21ada1d50ad6673ce1efb578513ead6","11:05:45","12:08:23",NULL,"2021-08-21 01:19:38");
INSERT INTO problem_list VALUES(15,"IT2021-02-23-W15","75","1","3db564ba6fc573bad2628be5b7de4855",1,148,"สายเคเบิ้ลต่อจอทีวีในห้อง VIP โดนหนูกัดขาด(ช่างมาดูแแล้วรอจัดซื้อมาเปลี่ยน)","ไม่มี","IT2021-02-23-W15-เปลี่ยนสายปลั๊กไฟและสายHDMI01122021.jpg",NULL,"ปราจรีย์",NULL,"NEB","0.00","57995055c28df9e82476a54f852bd214","2021-02-23","2021-02-23","11c0009be8f4e977c6998edce04c9b2e","16:32:48","19:08:21",NULL,"2021-07-01 00:00:48");
INSERT INTO problem_list VALUES(16,"IT2021-02-23-W16","75","1","3db564ba6fc573bad2628be5b7de4855",1,148,"กล้องวงจรปิด บริเวณหน้าแคชเชียร์เสียไม่สามารถเปิดดูได้","ไม่มี","IT2021-02-23-W16-S16146572.jpg","IT2021-02-23-W16-after-459131E0-519D-4E91-8AD6-96B041DE0B7E.jpeg","ปราจรีย์",NULL,"NEB","0.00","2e34609794290a770cb0349119d78d21","2021-02-23","2021-02-23","f21ada1d50ad6673ce1efb578513ead6","16:38:02","17:11:14",NULL,"2021-07-01 00:00:48");
INSERT INTO problem_list VALUES(17,"IT2021-02-24-W17","68","1","cec9ac90af27b74546e22910bdc5bfff",1,109,"คีย์บอร์ดกดไม่ได้ค่ะ ","14-CPK-60-07-02","IT2021-02-24-W17-trim.52C7CB7C-67AF-465F-829A-7211FC3B842D.MOV","IT2021-02-24-W17-after-S66248706.jpg","ซายน์",NULL,"CPK","0.00","2e34609794290a770cb0349119d78d21","2021-02-24","2021-03-02","f21ada1d50ad6673ce1efb578513ead6","09:14:22","14:48:31",NULL,"2021-08-19 09:38:43");
INSERT INTO problem_list VALUES(18,"IT2021-02-24-W18","18","1","d5b14c346b88725387c282ac7b851ad8",2,141,"INVOICE สาขา CTW  หน้าร้านสแกนแล้วแต่ข้อมูลไม่ขึ้นค่ะ","ไม่มี",NULL,"IT2021-02-24-W18-after-image.jpg","อุษา",NULL,"HO","0.00","2e34609794290a770cb0349119d78d21","2021-02-24","2021-02-24","f21ada1d50ad6673ce1efb578513ead6","11:09:57","17:06:53",NULL,"2021-08-21 01:17:16");
INSERT INTO problem_list VALUES(19,"IT2021-02-25-W19","5","1","d3cea0a13419c7b7d226a432af757ca4",2,5,"สแกนไฟล์ไม่ได้ 00023  phong-ananc สแกนไม่เข้า , 00028 phong-ananc สแกนไม่ได้","IT 60/19",NULL,NULL,"Fah",NULL,"HO","0.00","2e34609794290a770cb0349119d78d21","2021-02-25","2021-02-25","f21ada1d50ad6673ce1efb578513ead6","09:47:45","10:16:28",NULL,"2021-08-21 00:53:55");
INSERT INTO problem_list VALUES(20,"IT2021-02-25-W20","61","1","6340f02bed9ccc2a8a79007a3d67a9ad",1,101,"โทรศัพย์ใช้ไม่ได้เนื่องจากเมื่อวานIT มาเก็บสายแล้วใช้ไม่ได้ เวลาประมาน 11.00น.","ไม่มี",NULL,NULL,"นพดล",NULL,"CR9","0.00","2e34609794290a770cb0349119d78d21","2021-02-25","2021-03-03","ce63f18f7cf0a712fd4a2f47bc9ae14c","14:02:56","15:00:55",NULL,"2021-08-19 14:30:18");
INSERT INTO problem_list VALUES(21,"IT2021-02-27-W21","75","1","3db564ba6fc573bad2628be5b7de4855",1,148,"สายเสียบเครื่อง adapter ขาด (ส่งให้ฝ่าย IT แล้ว)","07-NEB-63-97-37",NULL,NULL,"จุฑามาศ",NULL,"NEB","0.00","2e34609794290a770cb0349119d78d21","2021-02-27","2021-02-25","f21ada1d50ad6673ce1efb578513ead6","12:14:07","12:17:24",NULL,"2021-08-20 22:40:03");
INSERT INTO problem_list VALUES(22,"IT2021-02-27-W22","75","1","3db564ba6fc573bad2628be5b7de4855",1,148,"ติดตั้งอุปกรณ์","ไม่มี","IT2021-02-27-W22-281401.jpg",NULL,"อิทธิพัทธ์ มณีกานต์กูล",NULL,"NEB","0.00","57995055c28df9e82476a54f852bd214","2021-02-27","2021-03-01","f21ada1d50ad6673ce1efb578513ead6","13:55:01","14:24:39",NULL,"2021-08-21 00:58:37");
INSERT INTO problem_list VALUES(23,"IT2021-02-28-W23","67","1","9fe4987d685fcbff9b1a3011cdd12b35",7,110,"Food story เครื่องหลักIpad ขึ้น Loadingค้างนาน","ไม่มี","IT2021-02-28-W23-IMG25640228092744.jpg",NULL," ณัฐพล",NULL,"SCQ","0.00","2e34609794290a770cb0349119d78d21","2021-02-28","2021-03-01","11c0009be8f4e977c6998edce04c9b2e","09:32:28","22:13:51",NULL,"2021-08-21 01:02:22");
INSERT INTO problem_list VALUES(24,"IT2021-02-28-W24","67","1","9fe4987d685fcbff9b1a3011cdd12b35",7,125,"เครื้องแม่เด้งออกเด้งปล่อยและคีย์ไม่ได้และเช็คบิลไม่ได้","ไม่มี",NULL,NULL,"ณัฐพล",NULL,"SCQ","0.00","2e34609794290a770cb0349119d78d21","2021-02-28","2021-03-01","11c0009be8f4e977c6998edce04c9b2e","18:03:49","22:17:53",NULL,"2021-08-21 01:02:24");
INSERT INTO problem_list VALUES(25,"IT2021-03-01-W01","68","1","cec9ac90af27b74546e22910bdc5bfff",2,140,"กดfind ค้นหาข้อมูลไม่ได้ค่ะ","14-CPK-60-07-02","IT2021-03-01-W01-trim.2D9C5C39-09D7-4667-B15A-348DCA3BE2CE.MOV","IT2021-03-01-W01-after-image.jpg","ขัตติยา",NULL,"CPK","0.00","2e34609794290a770cb0349119d78d21","2021-03-01","2021-03-01","f21ada1d50ad6673ce1efb578513ead6","11:22:40","12:26:49",NULL,"2021-07-01 00:00:48");
INSERT INTO problem_list VALUES(26,"IT2021-03-01-W02","79","1","52f2a5ca589fe4b36097dd5c55c4ac9c",7,126,"โต๊ะที่เปิดหายหมด เครื่องเด้งให้เปิดรอบการขายใหม่","24-CWG-63-07-001","IT2021-03-01-W02-1614588992787.jpg",NULL,"เกมส์",NULL,"CWG","0.00","2e34609794290a770cb0349119d78d21","2021-03-01","2021-03-04","f21ada1d50ad6673ce1efb578513ead6","16:01:49","14:45:51",NULL,"2021-08-21 01:31:04");
INSERT INTO problem_list VALUES(27,"IT2021-03-01-W03","58","1","cf4178eda791cfcbd3f20efe1a1ec35a",6,118,"ช่างตรวจเช็คเบื้องต้นให้แล้วพบว่าฮาร์ดดิสมีปัญหา จึงขอยืมเครื่องสำรองจาก HO ","01-CTW-61-07-13","IT2021-03-01-W03-แจ้งซ่อม1.jpg","IT2021-03-01-W03-after-S66256900.jpg","ศศิวิไล จันลือชัย",NULL,"CTW","0.00","2e34609794290a770cb0349119d78d21","2021-03-01","2021-03-01","f21ada1d50ad6673ce1efb578513ead6","19:55:31","14:43:29",NULL,"2021-07-01 00:00:48");
INSERT INTO problem_list VALUES(28,"IT2021-03-01-W04","58","1","cf4178eda791cfcbd3f20efe1a1ec35a",2,110,"ขอติดตั้ง Driver เครื่องปริ้น Brother DCP-1610W ","01-CTW-61-07-13","IT2021-03-01-W04-แจ้งซ่อม2.jpg","IT2021-03-01-W04-after-image.jpg","ศศิวิไล จันลือชัย",NULL,"CTW","0.00","2e34609794290a770cb0349119d78d21","2021-03-01","2021-03-01","f21ada1d50ad6673ce1efb578513ead6","19:57:55","20:09:28",NULL,"2021-07-01 00:00:48");
INSERT INTO problem_list VALUES(29,"IT2021-03-02-W05","70","1","b29017088b3135c435f9c7912ec2cdb2",1,1,"Notebook พี่ศร เครื่องค้าง เชื่อม wifi ไม่ได้ ","IT59/06","IT2021-03-02-W05-20210210160325.jpg",NULL,"ศร",NULL,"SV","0.00","2e34609794290a770cb0349119d78d21","2021-03-02","2021-03-02","f21ada1d50ad6673ce1efb578513ead6","09:19:23","13:55:06",NULL,"2021-07-01 00:00:48");
INSERT INTO problem_list VALUES(30,"IT2021-03-02-W06","75","1","3db564ba6fc573bad2628be5b7de4855",7,130,"ไม่มีปุ่มส่วนลดลูกค้าประจำ 10% รบกวนเพิ่มให้ด้วยนะคะ ขอบคุณค่ะ","07-NEB-63-07-004",NULL,NULL,"จุฑามาศ",NULL,"NEB","0.00","2e34609794290a770cb0349119d78d21","2021-03-02","2021-03-02","f21ada1d50ad6673ce1efb578513ead6","13:58:11","14:06:06",NULL,"2021-07-01 00:00:48");
INSERT INTO problem_list VALUES(31,"IT2021-03-02-W07","75","1","3db564ba6fc573bad2628be5b7de4855",7,138,"บิลใน  Addition- voucher &amp;quot;@line NABEZO free salad&amp;quot; ไม่ออกค่ะ อยากให้ที่Barอาหารค่ะ ขอบคุณค่ะ","07-NEB-63-07-004",NULL,NULL,"จุฑามาศ",NULL,"NEB","0.00","2e34609794290a770cb0349119d78d21","2021-03-02","2021-03-02","ce63f18f7cf0a712fd4a2f47bc9ae14c","14:03:51","14:08:03",NULL,"2021-07-01 00:00:48");
INSERT INTO problem_list VALUES(32,"IT2021-03-02-W08","75","1","3db564ba6fc573bad2628be5b7de4855",7,138,"1.ตอนกดจำนวนลูกค้าแล้วมีจำนวนแก้วให้กด บิลไปออกที่bar อาหาร และไม่สามารถเพิ่มจำนวนแก้วได้นอกจากต้องกดจำนวนลูกค้าเพิ่มไปใหม่ 
2. อยากให้ย้ายแก้วไปไว้ที่ปุ่มเมนุ Free  เพิ่มเป็นเลข 6  ขอบคุณค่ะ (ออกที่บาร์เครื่องดื่ม)","07-NEB-63-07-004","IT2021-03-02-W08-1.jpg","IT2021-03-02-W08-after-trim.D33E6B48-7003-4370-B8B5-F3E3C916CB17.MOV","จุฑามาศ",NULL,"NEB","0.00","2e34609794290a770cb0349119d78d21","2021-03-02","2021-03-03","11c0009be8f4e977c6998edce04c9b2e","14:12:24","22:31:47",NULL,"2021-07-01 00:00:48");
INSERT INTO problem_list VALUES(33,"IT2021-03-02-W09","75","1","3db564ba6fc573bad2628be5b7de4855",7,138,"รบกวนเช็ค @line NABEZO free salad ให้อีกรอบนะคะ ตอนนี้บิลยังไม่ออกค่ะ ","07-NEB-63-07-004",NULL,"IT2021-03-02-W09-after-C6030028-D0E4-459C-93F3-D9D0ED870035.png","จุฑามาศ",NULL,"NEB","0.00","2e34609794290a770cb0349119d78d21","2021-03-02","2021-03-03","11c0009be8f4e977c6998edce04c9b2e","14:49:16","22:23:42",NULL,"2021-07-01 00:00:48");
INSERT INTO problem_list VALUES(34,"IT2021-03-02-W10","70","1","b29017088b3135c435f9c7912ec2cdb2",9,149,"ขอเปลี่ยนแผ่น ซีดี เพลงร้าน","17-CR3-61-09-02",NULL,NULL,"วัชระ คำมิ่ง",NULL,"CR3","0.00","2e34609794290a770cb0349119d78d21","2021-03-02","2021-03-05","f21ada1d50ad6673ce1efb578513ead6","20:25:30","15:01:20",NULL,"2021-08-20 22:42:16");
INSERT INTO problem_list VALUES(35,"IT2021-03-02-W11","45","1","ce63f18f7cf0a712fd4a2f47bc9ae14c",1,148,"งานติดตั้งอุปกรณ์ปริ้นเตอร์ ให้ร้านเกาหลี","ไม่มี",NULL,NULL,"เจนจิรา แก้วสมบูรณ์",NULL,"Guljak ICS,KVL","0.00","2e34609794290a770cb0349119d78d21","2021-03-02","2021-03-03","f21ada1d50ad6673ce1efb578513ead6","23:11:11","08:59:32",NULL,"2021-08-21 01:04:30");
INSERT INTO problem_list VALUES(36,"IT2021-03-03-W12","45","1","ce63f18f7cf0a712fd4a2f47bc9ae14c",8,152,"ฝ่าย inventory ขอดูกล้องวงจรปิด สาขา MBP วันที่ 19/02/2564 เวลา 9.30 - 10.30 น. ค่ะ","ไม่มี",NULL,NULL,"นางสาว กนกวรรณ หยีป้อม",NULL,"HO","0.00","2e34609794290a770cb0349119d78d21","2021-03-03","2021-03-03","f21ada1d50ad6673ce1efb578513ead6","08:54:20","10:17:29",NULL,"2021-08-21 01:04:32");
INSERT INTO problem_list VALUES(37,"IT2021-03-03-W13","2","1","ed6b1d41694cc31a1bc8a0f659d5faf7",2,140,"โปรแกรม Winspeed Error บ่อยมาก","ไม่มี","IT2021-03-03-W13-1614738920679.jpg",NULL,"พิพิธพร",NULL,"HO","0.00","2e34609794290a770cb0349119d78d21","2021-03-03","2021-03-03","ce63f18f7cf0a712fd4a2f47bc9ae14c","09:48:35","13:23:16",NULL,"2021-08-21 01:02:41");
INSERT INTO problem_list VALUES(38,"IT2021-03-03-W14","2","1","ed6b1d41694cc31a1bc8a0f659d5faf7",2,101,"หน้าร้านอัพไฟล์ PAYIN ในคลาวน์แล้ว แต่ที่ HO ไม่ขึ้น ","ไม่มี","IT2021-03-03-W14-1614746281351.jpg","IT2021-03-03-W14-after-Capture.JPG","พิพิธพร",NULL,"HO","0.00","2e34609794290a770cb0349119d78d21","2021-03-03","2021-03-03","f21ada1d50ad6673ce1efb578513ead6","11:40:46","13:23:40",NULL,"2021-08-21 01:03:00");
INSERT INTO problem_list VALUES(39,"IT2021-03-03-W15","2","1","ed6b1d41694cc31a1bc8a0f659d5faf7",2,101,"หน้าร้าน upload เอกสารแล้ว แต่ cloud ออฟฟิตไม่เห็นเอกสาร","ไม่มี",NULL,NULL,"กัมปนาท",NULL,"HO","0.00","57995055c28df9e82476a54f852bd214","2021-03-03","2021-03-03","f21ada1d50ad6673ce1efb578513ead6","11:41:24","11:52:25",NULL,"2021-08-21 01:03:03");
INSERT INTO problem_list VALUES(40,"IT2021-03-03-W16","2","1","ed6b1d41694cc31a1bc8a0f659d5faf7",2,101,"หน้าร้าน upload เอกสารแล้ว แต่ cloud ออฟฟิตไม่เห็นเอกสาร","ไม่มี","IT2021-03-03-W16-1614746580624.jpg",NULL,"กัมปนาท",NULL,"HO","0.00","2e34609794290a770cb0349119d78d21","2021-03-03","2021-03-03","f21ada1d50ad6673ce1efb578513ead6","11:43:17","12:27:03",NULL,"2021-08-21 01:03:05");
INSERT INTO problem_list VALUES(41,"IT2021-03-03-W17","82","1","3b28104db64a6f4666ddff80f3c79e2b",1,148,"เครื่องสลีปแล้วทำงานหนัก","ไม่มี",NULL,NULL,"Q",NULL,"SV","0.00","2e34609794290a770cb0349119d78d21","2021-03-03","2021-03-03","f21ada1d50ad6673ce1efb578513ead6","15:05:11","15:06:19",NULL,"2021-08-21 01:04:34");
INSERT INTO problem_list VALUES(42,"IT2021-03-03-W18","2","1","ed6b1d41694cc31a1bc8a0f659d5faf7",1,148,"คอมดับเอง ไฟติดครบ","ไม่มี",NULL,NULL,"วรากรณ์",NULL,"HO","0.00","2e34609794290a770cb0349119d78d21","2021-03-03","2021-03-08","f21ada1d50ad6673ce1efb578513ead6","16:30:49","10:32:47",NULL,"2021-08-21 00:58:49");
INSERT INTO problem_list VALUES(43,"IT2021-03-03-W19","67","1","9fe4987d685fcbff9b1a3011cdd12b35",2,6,"เป็นเครื่องโน๊ตบุุ๊คช้าและหมุนค้างนานกว่าจะใช้งานได้ต้องรอซึ่งก่อนหน้านี้ไม่มีอาการช้าแบบนี้ครับ","13-SCQ-59-07-03",NULL,NULL," ณัฐพล",NULL,"SCQ","0.00","57995055c28df9e82476a54f852bd214","2021-03-03","2021-04-01","ce63f18f7cf0a712fd4a2f47bc9ae14c","17:28:53","13:52:21",NULL,"2021-07-01 00:00:48");
INSERT INTO problem_list VALUES(44,"IT2021-03-04-W20","18","1","d5b14c346b88725387c282ac7b851ad8",2,151,"ไม่สามารถใช้ Po Form Master ได้ ","IT59/26","IT2021-03-04-W20-แจ้งปัญหาIT.jpg",NULL,"รุ่งทิวารัตน์ ",NULL,"HO","0.00","2e34609794290a770cb0349119d78d21","2021-03-04","2021-03-04","11c0009be8f4e977c6998edce04c9b2e","09:10:17","10:46:49",NULL,"2021-07-01 00:00:48");
INSERT INTO problem_list VALUES(45,"IT2021-03-04-W21","1","1","6ccdcc01b4cbc496cab3ed0c7fb20cac",2,151,"Remote winspeed เข้าไม่ได้ ไม่ไอคอนที่หน้าจอ","ไม่มี","IT2021-03-04-W21-123468.jpg",NULL,"นางสาว กนกวรรณ หยีป้อม",NULL,"HO","0.00","2e34609794290a770cb0349119d78d21","2021-03-04","2021-03-04","11c0009be8f4e977c6998edce04c9b2e","09:57:59","10:45:24",NULL,"2021-08-21 01:04:37");
INSERT INTO problem_list VALUES(46,"IT2021-03-04-W22","2","1","ed6b1d41694cc31a1bc8a0f659d5faf7",2,151,"ฟอร์มไดร์ Z เปิดไม่ได้ในระบบ Winspeed","ไม่มี",NULL,NULL,"เจนจิรา แก้วสมบูรณ์",NULL,"HO","0.00","2e34609794290a770cb0349119d78d21","2021-03-04","2021-03-04","11c0009be8f4e977c6998edce04c9b2e","10:16:13","10:45:57",NULL,"2021-08-21 01:04:39");
INSERT INTO problem_list VALUES(47,"IT2021-03-05-W23","43","1","6134ff997b6f5c7e403dc701c7b2cec9",2,151,"ขอลง Driver Printer Epson L360","IT 59/06",NULL,"IT2021-03-05-W23-after-Capture.JPG","ศร",NULL,"SV","0.00","2e34609794290a770cb0349119d78d21","2021-03-05","2021-03-05","f21ada1d50ad6673ce1efb578513ead6","14:49:26","14:50:33",NULL,"2021-07-01 00:00:48");
INSERT INTO problem_list VALUES(48,"IT2021-03-05-W24","45","1","11c0009be8f4e977c6998edce04c9b2e",1,154,"แจ้งปัญหาเครื่อง Operator โทรศัพท์ขึ้นไฟแดง","ไม่มี",NULL,NULL,"เจนจิรา แก้วสมบูรณ์",NULL,"HO","0.00","2e34609794290a770cb0349119d78d21","2021-03-05","2021-03-09","5997108712eef9df6ecab22f1f3728f9","15:13:37","14:17:40",NULL,"2021-08-21 01:04:40");
INSERT INTO problem_list VALUES(49,"IT2021-03-06-W25","80","1","fc9c93f00e53b47b7bf01b72cd6180bd",8,154,"เครื่องสไลด์,ตู้ชิลเนื้อและตู้กระจกด้านใน ติดๆดับๆ","26-CLP-64-06-51(40),26-CLP-64-06-51(09),26-CLP-64-06-52","IT2021-03-06-W25-IMG20210306105815.jpg",NULL,"นพรุจ",NULL,"CLP","0.00","57995055c28df9e82476a54f852bd214","2021-03-06","2021-03-06","11c0009be8f4e977c6998edce04c9b2e","10:58:38","11:47:45",NULL,"2021-07-01 00:00:48");
INSERT INTO problem_list VALUES(50,"IT2021-03-06-W26","75","1","3db564ba6fc573bad2628be5b7de4855",7,131,"ไม่มีปุ่มรายการเครื่องดื่ม Sho-chu cocktail Green Apple ","07-NEB-63-07-004",NULL,NULL,"จุฑามาศ",NULL,"NEB","0.00","2e34609794290a770cb0349119d78d21","2021-03-06","2021-03-09","5997108712eef9df6ecab22f1f3728f9","17:07:52","15:15:38",NULL,"2021-07-01 00:00:48");
INSERT INTO problem_list VALUES(51,"IT2021-03-06-W27","80","1","fc9c93f00e53b47b7bf01b72cd6180bd",2,151,"Login เข้าใช้งานไม่ได้","ไม่มี",NULL,NULL,"สถาพร",NULL,"CLP","0.00","57995055c28df9e82476a54f852bd214","2021-03-06","2021-03-09","5997108712eef9df6ecab22f1f3728f9","17:31:43","15:30:28",NULL,"2021-07-01 00:00:48");
INSERT INTO problem_list VALUES(52,"IT2021-03-07-W28","65","1","8af593251cd53494bf4f6cd658351815",2,6,"microsoft word ไม่สามารถเปิดใช้งานได้","11-ZPE-58-07-04",NULL,"IT2021-03-07-W28-after-Capture.JPG","กล้าณรงค์ โพธิ์ประดุง",NULL,"ZPE","0.00","2e34609794290a770cb0349119d78d21","2021-03-07","2021-03-08","f21ada1d50ad6673ce1efb578513ead6","18:17:44","10:26:15",NULL,"2021-07-01 00:00:48");
INSERT INTO problem_list VALUES(53,"IT2021-03-07-W29","75","1","3db564ba6fc573bad2628be5b7de4855",7,138,"ปุ่ม Sho Chu Cocktail Green Apple รบกวนย้ายลงมาให้อยู่ข้างกันกับตัว Sho Chu Cocktail ตัวอื่นได้ไหมคะ จะได้สะดวกกับน้องพนักงานเวลากด แต่ถ้าไม่ได้ไม่เป็นไรค่ะ ขอบคุณค่ะ ","07-NEB-63-07-004","IT2021-03-07-W29-3.jpg","IT2021-03-07-W29-after-8558EAC8-2EE2-4E16-A2FE-6B7542F7DE7C.png","จุฑามาศ",NULL,"NEB","0.00","2e34609794290a770cb0349119d78d21","2021-03-07","2021-03-07","11c0009be8f4e977c6998edce04c9b2e","21:02:28","21:36:22",NULL,"2021-07-01 00:00:48");
INSERT INTO problem_list VALUES(54,"IT2021-03-09-W30","60","1","b17177683249bb2cda3472e14d984e60",3,101,"อินเตอร์เน็ตหลุดบ่อย","ไม่มี",NULL,"IT2021-03-09-W30-after-Capture.PNG","ปุณญนุช",NULL,"T21","0.00","2e34609794290a770cb0349119d78d21","2021-03-09","2021-03-09","f21ada1d50ad6673ce1efb578513ead6","11:35:58","13:35:50",NULL,"2021-07-01 00:00:48");
INSERT INTO problem_list VALUES(55,"IT2021-03-09-W31","75","1","3db564ba6fc573bad2628be5b7de4855",1,154,"แบตเตอร์รี่เสื่อม และ ไม่สามารถเชื่อต่อไวไฟล์ได้","07-NEB-63-97-19",NULL,"IT2021-03-09-W31-after-image.jpg","สุธิดา รักษาอินทร์",NULL,"NEB","1,750.00","2e34609794290a770cb0349119d78d21","2021-03-09","2021-03-20","f21ada1d50ad6673ce1efb578513ead6","19:14:11","11:31:33",NULL,"2021-08-21 00:17:37");
INSERT INTO problem_list VALUES(56,"IT2021-03-09-W32","69","1","859cd041e3fe84e5e65b5c178452841f",2,154,"INVOICE ใน  NEXTCLOUND หายค่ะ","ไม่มี",NULL,"IT2021-03-09-W32-after-2663B003-E157-4B9C-9D69-47652EC86AF7.jpeg","ปรารถนา",NULL,"MGB","0.00","2e34609794290a770cb0349119d78d21","2021-03-09","2021-03-09","f21ada1d50ad6673ce1efb578513ead6","20:27:51","21:43:18",NULL,"2021-08-21 00:58:56");
INSERT INTO problem_list VALUES(57,"IT2021-03-10-W33","58","1","cf4178eda791cfcbd3f20efe1a1ec35a",2,110,"ลงโปรแกรม driver printer DCP-1610W โปรแกรมชื่อ Brother","01-CTW-61-07-13","IT2021-03-10-W33-106094.jpg","IT2021-03-10-W33-after-Capture.JPG","ธัญชนก ทิวากรกฎ","อิทธิพัทธ์ มณีกานต์กูล","CTW","0.00","2e34609794290a770cb0349119d78d21","2021-03-10","2021-03-10",NULL,"18:11:25","15:12:58",NULL,"2021-07-01 00:00:48");
INSERT INTO problem_list VALUES(58,"IT2021-03-11-W34","58","1","cf4178eda791cfcbd3f20efe1a1ec35a",2,145,"คอมไมม่เชื่อมกับ cloud","01-CTW-61-07-13",NULL,"IT2021-03-11-W34-after-Capture.JPG","นพรุจ อุตรารัชต์กืจ","อิทธิพัทธ์ มณีกานต์กูล","CTW ","0.00","2e34609794290a770cb0349119d78d21","2021-03-11","2021-03-11","f21ada1d50ad6673ce1efb578513ead6","14:34:30","15:37:45",NULL,"2021-07-01 00:00:48");
INSERT INTO problem_list VALUES(59,"IT2021-03-12-W35","5","1","d3cea0a13419c7b7d226a432af757ca4",2,110,"ขอติดตั้งโปรแกรม Adobe Illustrator และลงเครื่องปริ้น EPSON L805 
เพื่อทำบัตรพนักงาน","ไม่มี",NULL,NULL,"พรกมล",NULL,"HO","0.00","2e34609794290a770cb0349119d78d21","2021-03-12","2021-03-13","f21ada1d50ad6673ce1efb578513ead6","09:05:27","15:08:08",NULL,"2021-08-21 01:07:22");
INSERT INTO problem_list VALUES(60,"IT2021-03-12-W36","5","1","d3cea0a13419c7b7d226a432af757ca4",2,146,"PDF ไม่สามารถพิมข้อความเพิ่มเติมได้ ","ไม่มี","IT2021-03-12-W36-6959E711-8AC4-48A3-8F7C-A73F141707BC.jpg",NULL,"พรกมล",NULL,"HO","0.00","2e34609794290a770cb0349119d78d21","2021-03-12","2021-03-12","ce63f18f7cf0a712fd4a2f47bc9ae14c","09:18:02","13:33:28",NULL,"2021-08-21 01:07:27");
INSERT INTO problem_list VALUES(61,"IT2021-03-12-W37","64","1","9cc29e8c2b924de0fd3ef55737a159c0",2,141,"เป็นโน๊ตบุ๊ตใหม่ ระบบไม่ซิงค์ในnextcloud","IMP-61-115",NULL,"IT2021-03-12-W37-after-Capture.JPG","แสนสุข","พิชามญช์ อธิธรรมพิทักษ์","CRP","0.00","2e34609794290a770cb0349119d78d21","2021-03-12","2021-03-12","5997108712eef9df6ecab22f1f3728f9","13:13:20","15:40:31",NULL,"2021-07-01 00:00:48");
INSERT INTO problem_list VALUES(62,"IT2021-03-12-W38","58","1","cf4178eda791cfcbd3f20efe1a1ec35a",7,138,"นำปุ่มกดส่วนลดที่ไม่เกี่ยวข้องกับโมโมโกลด์ออก","ไม่มี","IT2021-03-12-W38-PhotoGridPlus1615534520817.jpg","IT2021-03-12-W38-after-Screenshot(4).png","อิทธิพัทธ์","อิทธิพัทธ์  มณีกานต์กูล","CTW","0.00","2e34609794290a770cb0349119d78d21","2021-03-12","2021-03-12","23ae8fd2022f767f5c90728825132b90","14:38:54","15:41:16",NULL,"2021-08-21 00:58:54");
INSERT INTO problem_list VALUES(63,"IT2021-03-12-W39","18","1","d5b14c346b88725387c282ac7b851ad8",2,141,"cloud invoice สาขา CRP หน้าร้านสแกนแล้วแต่ข้อมูลไม่ขึ้น","ไม่มี",NULL,"IT2021-03-12-W39-after-11.JPG","อุษา",NULL,"HO","0.00","2e34609794290a770cb0349119d78d21","2021-03-12","2021-03-12","5997108712eef9df6ecab22f1f3728f9","15:36:51","17:02:57",NULL,"2021-08-21 01:16:33");
INSERT INTO problem_list VALUES(64,"IT2021-03-13-W40","75","1","3db564ba6fc573bad2628be5b7de4855",9,154,"รบกวนทาง IT มาจัดระเบียบสายไฟให้หน่อยนะคะ เนื่องจากทางร้านไม่รู้ว่าสายไหนยังใช้ได้หรือไม่ได้ และมีบางสายชำรุดเนื่องจากหนูกัดเลยไม่สามารถจัดเก็บเองได้ ขอบคุณค่ะ","ไม่มี","IT2021-03-13-W40-11.jpg","IT2021-03-13-W40-after-1A0C0EA4-F248-4AA1-9902-842C8ED01EF6.jpeg","จุฑามาศ",NULL,"NEB","0.00","2e34609794290a770cb0349119d78d21","2021-03-13","2021-03-16","f21ada1d50ad6673ce1efb578513ead6","15:38:40","12:43:18",NULL,"2021-08-21 00:18:22");
INSERT INTO problem_list VALUES(65,"IT2021-03-13-W41","75","1","3db564ba6fc573bad2628be5b7de4855",9,154,"สายแลนระบบ POS เครื่องเก่า ไม่ได้ใช้งานแล้ว รบกวนนำสายออกได้ไหมคะ ขอบคุณค่ะ","ไม่มี",NULL,NULL,"จุฑามาศ",NULL,"NEB","0.00","57995055c28df9e82476a54f852bd214","2021-03-13","2021-03-13","f21ada1d50ad6673ce1efb578513ead6","16:18:44","16:58:30",NULL,"2021-08-21 00:18:29");
INSERT INTO problem_list VALUES(66,"IT2021-03-13-W42","75","1","3db564ba6fc573bad2628be5b7de4855",9,154,"สายแลนระบบ POS เครื่องเก่า ไม่ได้ใช้งานแล้ว รบกวนนำสายออกได้ไหมคะ ขอบคุณค่ะ","ไม่มี","IT2021-03-13-W42-2.jpg",NULL,"จุฑามาศ",NULL,"NEB","0.00","2e34609794290a770cb0349119d78d21","2021-03-13","2021-03-17","f21ada1d50ad6673ce1efb578513ead6","16:21:03","12:43:42",NULL,"2021-08-21 00:18:33");
INSERT INTO problem_list VALUES(67,"IT2021-03-14-W43","60","1","b17177683249bb2cda3472e14d984e60",2,151,"posเครื่องลูกอัปเดทระบบ ใส่รหัสแล้วไม่สามารถเข้าใช้งานได้","T21-61-248",NULL,NULL,"วิสุทธิ์เทพ ห้าวเหิม","ศร สมพีร์วงศ์","T21","0.00","2e34609794290a770cb0349119d78d21","2021-03-14","2021-03-14","f21ada1d50ad6673ce1efb578513ead6","11:56:35","13:05:58",NULL,"2021-08-21 01:32:18");
INSERT INTO problem_list VALUES(68,"IT2021-03-14-W44","66","1","e782c0270070c7ff34dc7984a3643741",3,9,"สัญญาณอินเตอร์เน็ตใช้งานไม่ได้","MBP","IT2021-03-14-W44-S16719892.jpg",NULL,"เจนจิรา โกพล","นางสาวสุจิตรา เกษศิริ ","MBP","0.00","2e34609794290a770cb0349119d78d21","2021-03-14","2021-03-15","f21ada1d50ad6673ce1efb578513ead6","18:21:19","17:55:19",NULL,"2021-07-01 00:00:48");
INSERT INTO problem_list VALUES(69,"IT2021-03-15-W45","71","1","79ba10e5305e95e757761317a07fca37",3,9,"WiFi ไม่สามารถเชื่อมต่อได้ เนื่องจากไม่ขึ้นเครือข่ายให้เชื่อมต่อ","ไม่มี","IT2021-03-15-W45-image.jpg",NULL,"สุนิสา",NULL,"ICS","0.00","2e34609794290a770cb0349119d78d21","2021-03-15","2021-03-15","f21ada1d50ad6673ce1efb578513ead6","10:39:31","10:51:38",NULL,"2021-08-21 01:02:08");
INSERT INTO problem_list VALUES(70,"IT2021-03-15-W46","18","1","d5b14c346b88725387c282ac7b851ad8",2,141,"cloud invoice สาขาMGB เปิดไม่ได้ 
สาขา T21 invoice ข้อมูลไม่อัพเดท
","ไม่มี",NULL,"IT2021-03-15-W46-after-Capture.PNG","อุษา",NULL,"HO","0.00","2e34609794290a770cb0349119d78d21","2021-03-15","2021-03-15","f21ada1d50ad6673ce1efb578513ead6","13:09:21","15:49:20",NULL,"2021-08-21 01:04:47");
INSERT INTO problem_list VALUES(71,"IT2021-03-15-W47","43","1","6134ff997b6f5c7e403dc701c7b2cec9",2,110,"เปิดโปรแกรมแล้วค้าง","ไม่มี",NULL,NULL,"SV",NULL,"SV","0.00","2e34609794290a770cb0349119d78d21","2021-03-15","2021-03-15","5997108712eef9df6ecab22f1f3728f9","16:40:10","17:24:56",NULL,"2021-08-21 01:06:32");
INSERT INTO problem_list VALUES(72,"IT2021-03-16-W48","71","1","79ba10e5305e95e757761317a07fca37",3,9,"WiFi ไม่ขี้นให้เชื่อมต่อ","ไม่มี","IT2021-03-16-W48-image.jpg",NULL,"สุนิสา",NULL,"ICS","0.00","2e34609794290a770cb0349119d78d21","2021-03-16","2021-03-16","f21ada1d50ad6673ce1efb578513ead6","10:16:53","15:09:05",NULL,"2021-08-21 01:02:11");
INSERT INTO problem_list VALUES(73,"IT2021-03-16-W49","75","1","3db564ba6fc573bad2628be5b7de4855",1,148,"เครื่องปริ๊นขึ้น Replace Toner
Open ther scaner cover and top cover, replace toner cartridge.","07-NEB-58-07-01","IT2021-03-16-W49-1.jpg",NULL,"จุฑามาศ",NULL,"NEB","0.00","2e34609794290a770cb0349119d78d21","2021-03-16","2021-03-18","5997108712eef9df6ecab22f1f3728f9","15:58:33","17:31:27",NULL,"2021-07-01 00:00:48");
INSERT INTO problem_list VALUES(74,"IT2021-03-16-W50","18","1","d5b14c346b88725387c282ac7b851ad8",8,152,"สาขา CRP ช่วงเวลา 06.00-12.00","ไม่มี",NULL,NULL,"อุษา",NULL,"HO","0.00","57995055c28df9e82476a54f852bd214","2021-03-16","2021-03-16","11c0009be8f4e977c6998edce04c9b2e","16:59:09","17:08:25",NULL,"2021-08-21 01:04:48");
INSERT INTO problem_list VALUES(75,"IT2021-03-16-W51","18","1","d5b14c346b88725387c282ac7b851ad8",8,152,"ของสาขา CRP (12/02/2564) ช่วงเวลาระหว่าง 07.00-09.00 น. ของขนส่งจาก WH","ไม่มี",NULL,"IT2021-03-16-W51-after-Capture.PNG","อุษา",NULL,"HO","0.00","2e34609794290a770cb0349119d78d21","2021-03-16","2021-03-17","5997108712eef9df6ecab22f1f3728f9","17:14:41","11:31:40",NULL,"2021-08-21 01:04:53");
INSERT INTO problem_list VALUES(76,"IT2021-03-17-W52","18","1","d5b14c346b88725387c282ac7b851ad8",8,152,"ของสาขา CRP (10/02/2564)  (13/02/2564)  (14/02/2564)  ช่วงเวลาระหว่าง 07.30-08.30 น. ของขนส่งจาก WH","ไม่มี",NULL,"IT2021-03-17-W52-after-1.PNG","อุษา",NULL,"HO","0.00","2e34609794290a770cb0349119d78d21","2021-03-17","2021-03-17","5997108712eef9df6ecab22f1f3728f9","13:28:04","16:48:01",NULL,"2021-08-21 01:03:54");
INSERT INTO problem_list VALUES(77,"IT2021-03-17-W53","64","1","9cc29e8c2b924de0fd3ef55737a159c0",2,110,"ติดตั้งไดรเวอร์ Printer, Scanner และ อัพเดทเวอร์ชั่น winspeed ครับ","09-CRP-63-07-001","IT2021-03-17-W53-267E38F0-A1F2-4C50-80A4-5A1F659F6B9D.jpeg","IT2021-03-17-W53-after-image.jpg","เสฎฐวุฒิ แป้นไทย","พิชามญช์ อธิธรรมพิทักษ์","CRP","0.00","2e34609794290a770cb0349119d78d21","2021-03-17","2021-03-17","f21ada1d50ad6673ce1efb578513ead6","16:40:04","17:51:45",NULL,"2021-07-01 00:00:48");
INSERT INTO problem_list VALUES(78,"IT2021-03-17-W54","60","1","b17177683249bb2cda3472e14d984e60",7,127,"ไม่สามารถปิดยอดกดรายงานได้ ขึ้นกำลังโหลด connectfall","T21-61-248",NULL,NULL,"นฤเศรษฐ์ สุนทรวิภาต","ศร สมพีร์วงศ์","T21","0.00","2e34609794290a770cb0349119d78d21","2021-03-17","2021-03-17","ce63f18f7cf0a712fd4a2f47bc9ae14c","16:58:53","14:27:24",NULL,"2021-08-21 01:32:24");
INSERT INTO problem_list VALUES(79,"IT2021-03-17-W55","71","1","79ba10e5305e95e757761317a07fca37",8,154,"ท่อระบายน้ำในครัวตัน","ไม่มี","IT2021-03-17-W55-5DF0BE73-4D5D-41E0-88E1-E0A7EA861D1F.jpeg",NULL,"ธิดารัตน์ พรมพิลา",NULL,"ICS ","0.00","57995055c28df9e82476a54f852bd214","2021-03-17","2021-03-18","ce63f18f7cf0a712fd4a2f47bc9ae14c","19:40:19","14:31:15",NULL,"2021-08-21 00:59:01");
INSERT INTO problem_list VALUES(80,"IT2021-03-18-W56","71","1","79ba10e5305e95e757761317a07fca37",3,9,"อินเตอร์เน็ตไม่สามารถเข้าได้เลยค่ะ","ไม่มี","IT2021-03-18-W56-IMG25640318104759.jpg",NULL,"รัตนภรณ์",NULL,"ICS","0.00","2e34609794290a770cb0349119d78d21","2021-03-18","2021-03-19","f21ada1d50ad6673ce1efb578513ead6","10:48:47","12:24:03",NULL,"2021-08-21 01:02:14");
INSERT INTO problem_list VALUES(81,"IT2021-03-18-W57","75","1","3db564ba6fc573bad2628be5b7de4855",1,114,"แบตเตอรี่โน๊ตบุ๊คเสื่อม","07-NEB-63-97-19","IT2021-03-18-W57-S16809999.jpg",NULL,"จุรีมาศ พิทักษ์เจริญเขต","นายอิทธิพัทธ์  มณีกานต์กูล","NEB","0.00","57995055c28df9e82476a54f852bd214","2021-03-18","2021-03-18","f21ada1d50ad6673ce1efb578513ead6","17:16:34","22:50:59",NULL,"2021-07-01 00:00:48");
INSERT INTO problem_list VALUES(82,"IT2021-03-19-W58","71","1","79ba10e5305e95e757761317a07fca37",3,9,"อินเตอร์เน็ตใช้งานไม่ได้ ","ไม่มี","IT2021-03-19-W58-image.jpg",NULL,"สุนิสา",NULL,"ICS","0.00","2e34609794290a770cb0349119d78d21","2021-03-19","2021-03-19","f21ada1d50ad6673ce1efb578513ead6","10:27:28","12:23:42",NULL,"2021-08-21 01:02:18");
INSERT INTO problem_list VALUES(83,"IT2021-03-19-W59","70","1","b29017088b3135c435f9c7912ec2cdb2",7,131,"ไม่มีปุ่มกดเบียร์สิงห์ค่ะ","17-CR3-61-07-01(04)",NULL,"IT2021-03-19-W59-after-Screenshot(65).png","มณฑ์ณลิน","ศร สมพีร์วงศ์","CR3","0.00","2e34609794290a770cb0349119d78d21","2021-03-19","2021-03-19","11c0009be8f4e977c6998edce04c9b2e","19:21:08","19:24:55",NULL,"2021-07-01 00:00:48");
INSERT INTO problem_list VALUES(84,"IT2021-03-20-W60","60","1","b17177683249bb2cda3472e14d984e60",7,131,"ไม่มีปุ่มคีเดลี่เวอรี่เลย","T21-61-248","IT2021-03-20-W60-S79880195.jpg",NULL,"นฤเศรษฐ์ สุนทรวิภาต","ศร สมพีร์วงศ์","T21","0.00","2e34609794290a770cb0349119d78d21","2021-03-20","2021-03-20","11c0009be8f4e977c6998edce04c9b2e","16:49:39","16:59:32",NULL,"2021-08-21 01:32:29");
INSERT INTO problem_list VALUES(85,"IT2021-03-21-W61","61","1","6340f02bed9ccc2a8a79007a3d67a9ad",1,1,"คอมเปิดไม่ติด","04-CR9-59-07-02",NULL,"IT2021-03-21-W61-after-image.jpg","นพดล",NULL,"CR9","0.00","2e34609794290a770cb0349119d78d21","2021-03-21","2021-03-31","f21ada1d50ad6673ce1efb578513ead6","21:58:46","08:01:57",NULL,"2021-08-21 01:27:58");
INSERT INTO problem_list VALUES(86,"IT2021-03-22-W62","75","1","3db564ba6fc573bad2628be5b7de4855",7,138,"รบกวนใส่รูปภาพเมนูอาหารในระบบ Food Story เพื่อความสะดวกของพนักงาน Service ป้องกันการกดออร์เดอร์ผิดพลาด (พนักงานบางคนไม่สามารถอ่านภาษาอังกฤษได้ ต้องใช้การจำ) ขอบคุณค่ะ","07-NEB-63-07-004",NULL,"IT2021-03-22-W62-after-46AE8D4C-8AA0-4F28-9DB8-0D63BD8A7F92.jpeg","จุฑามาศ","นายอิทธิพัทธ์  มณีกานต์กูล","NEB","0.00","2e34609794290a770cb0349119d78d21","2021-03-22","2021-04-05","23ae8fd2022f767f5c90728825132b90","20:44:14","14:54:06",NULL,"2021-07-01 00:00:48");
INSERT INTO problem_list VALUES(87,"IT2021-03-23-W63","2","1","ed6b1d41694cc31a1bc8a0f659d5faf7",2,152,"โปรแกรม กล้องไม่สามารถใช้งานได้ ","ไม่มี","IT2021-03-23-W63-1616464396203.jpg",NULL,"วรากรณ์",NULL,"HO","0.00","2e34609794290a770cb0349119d78d21","2021-03-23","2021-03-23","5997108712eef9df6ecab22f1f3728f9","08:58:03","09:18:24",NULL,"2021-08-21 00:59:12");
INSERT INTO problem_list VALUES(88,"IT2021-03-23-W64","43","1","6134ff997b6f5c7e403dc701c7b2cec9",2,1,"ทำงานแล้วไฟกล้องติดเอง","IT59/06","IT2021-03-23-W64-20210323140717.jpg","IT2021-03-23-W64-after-Capture.JPG","ศร","SV","SV","0.00","2e34609794290a770cb0349119d78d21","2021-03-23","2021-03-23","f21ada1d50ad6673ce1efb578513ead6","14:12:07","14:49:17",NULL,"2021-08-21 00:20:26");
INSERT INTO problem_list VALUES(89,"IT2021-03-23-W65","43","1","6134ff997b6f5c7e403dc701c7b2cec9",7,138,"ขอ layout โต๊ะจะนำไปใช้ผลิตสติกเกอร์เบอร์โต๊ะ(ทุกสาขา)","ไม่มี",NULL,"IT2021-03-23-W65-after-Screenshot(5).png","ไพบูลย์","ไพบูลย์","HO","0.00","2e34609794290a770cb0349119d78d21","2021-03-23","2021-03-23","23ae8fd2022f767f5c90728825132b90","15:31:24","16:28:52",NULL,"2021-08-21 00:59:19");
INSERT INTO problem_list VALUES(90,"IT2021-03-23-W66","18","1","d5b14c346b88725387c282ac7b851ad8",2,141,"cloud invoice สาขา MBP ข้อมูลวันที่ 14-21/03/2564 ไม่พบข้อมูล แต่หน้าร้านสแกนแล้ว","ไม่มี","IT2021-03-23-W66-mbp.jpg","IT2021-03-23-W66-after-F279DD6A-F4EF-4506-8A45-643EC506A8C4.jpeg","อุษา",NULL,"HO","0.00","2e34609794290a770cb0349119d78d21","2021-03-23","2021-03-23","f21ada1d50ad6673ce1efb578513ead6","16:19:10","17:40:41",NULL,"2021-08-21 01:05:31");
INSERT INTO problem_list VALUES(91,"IT2021-03-24-W67","18","1","d5b14c346b88725387c282ac7b851ad8",2,141,"cloud invoice สาขา CR9 ข้อมูลวันที่21-23/03/2564 ไม่พบข้อมูล แต่หน้าร้านสแกนแล้ว","ไม่มี",NULL,"IT2021-03-24-W67-after-Capture.PNG","สุพัตรา(พลอย)",NULL,"HO","0.00","2e34609794290a770cb0349119d78d21","2021-03-24","2021-03-24","f21ada1d50ad6673ce1efb578513ead6","08:42:11","08:01:00",NULL,"2021-08-21 01:05:32");
INSERT INTO problem_list VALUES(92,"IT2021-03-24-W68","75","1","3db564ba6fc573bad2628be5b7de4855",2,141,"โน๊ตบุคไม่เชื่อมต่อกับ Nextcloud ","07-NEB-63-97-13",NULL,"IT2021-03-24-W68-after-8219FABF-4A66-4919-8317-44E52A602842.jpeg","จุรีมาศ  พิทักษ์เจริญเขต","อิทธิพัทธ์ มณีการต์กูล","NEB","0.00","2e34609794290a770cb0349119d78d21","2021-03-24","2021-03-24","f21ada1d50ad6673ce1efb578513ead6","14:42:34","12:41:02",NULL,"2021-08-19 09:38:21");
INSERT INTO problem_list VALUES(93,"IT2021-03-25-W69","18","1","d5b14c346b88725387c282ac7b851ad8",2,151,"เปิดไฟล์ PDF ใน cloud invoice สาขา MBP  วันที่ 15-21 /03 /2564 ไม่ได้ค่ะ","ไม่มี","IT2021-03-25-W69-PDFมีปัญหา.jpg","IT2021-03-25-W69-after-image.jpg","อุษา",NULL,"HO","0.00","2e34609794290a770cb0349119d78d21","2021-03-25","2021-03-25","f21ada1d50ad6673ce1efb578513ead6","15:16:24","08:01:21",NULL,"2021-08-21 01:05:34");
INSERT INTO problem_list VALUES(94,"IT2021-03-26-W70","18","1","d5b14c346b88725387c282ac7b851ad8",2,151,"print pdf ไม่สมบูรณ์","ไม่มี","IT2021-03-26-W70-CLP640326-05CP27MAR21.pdf",NULL,"หทัยรัตน์",NULL,"HO","0.00","2e34609794290a770cb0349119d78d21","2021-03-26","2021-03-26","f21ada1d50ad6673ce1efb578513ead6","09:57:58","12:23:04",NULL,"2021-08-19 09:48:46");
INSERT INTO problem_list VALUES(95,"IT2021-03-26-W71","43","1","6134ff997b6f5c7e403dc701c7b2cec9",7,138,"ยกเลิกเมนู DELIVERY","ไม่มี","IT2021-03-26-W71-1616731154897.jpg","IT2021-03-26-W71-after-S1859592.jpg","ไพบูลย์","ไพบูลย์","Mo-Mo-Standard ทุกสาขา","0.00","2e34609794290a770cb0349119d78d21","2021-03-26","2021-03-29","23ae8fd2022f767f5c90728825132b90","11:01:35","10:29:32",NULL,"2021-08-21 00:59:21");
INSERT INTO problem_list VALUES(96,"IT2021-03-26-W72","43","1","6134ff997b6f5c7e403dc701c7b2cec9",7,138,"ยกเลิกเมนู","ไม่มี","IT2021-03-26-W72-1616731153513.jpg","IT2021-03-26-W72-after-S1859595.jpg","ไพบูลย์","ไพบูลย์","Mo-Mo-Standard ทุกสาขา","0.00","2e34609794290a770cb0349119d78d21","2021-03-26","2021-03-29","23ae8fd2022f767f5c90728825132b90","11:02:16","10:30:05",NULL,"2021-08-21 00:59:25");
INSERT INTO problem_list VALUES(97,"IT2021-03-26-W73","43","1","6134ff997b6f5c7e403dc701c7b2cec9",7,138,"ยกเลิกเมนู","ไม่มี","IT2021-03-26-W73-1616731152139.jpg","IT2021-03-26-W73-after-S1859596.jpg","ไพบูลย์","ไพบูลย์","Mo-Mo-Standard ทุกสาขา","0.00","2e34609794290a770cb0349119d78d21","2021-03-26","2021-03-29","23ae8fd2022f767f5c90728825132b90","11:03:05","10:30:33",NULL,"2021-08-21 00:59:27");
INSERT INTO problem_list VALUES(98,"IT2021-03-26-W74","43","1","6134ff997b6f5c7e403dc701c7b2cec9",7,138,"ยกเลิกเมนู","ไม่มี","IT2021-03-26-W74-1616731150930.jpg","IT2021-03-26-W74-after-S1859594.jpg","ไพบูลย์","ไพบูลย์","Mo-Mo-Standard ทุกสาขา","0.00","2e34609794290a770cb0349119d78d21","2021-03-26","2021-03-29","23ae8fd2022f767f5c90728825132b90","11:03:53","10:30:55",NULL,"2021-08-21 00:59:32");
INSERT INTO problem_list VALUES(99,"IT2021-03-26-W75","43","1","6134ff997b6f5c7e403dc701c7b2cec9",7,138,"ยกเลิกเมนู","ไม่มี","IT2021-03-26-W75-1616731149751.jpg","IT2021-03-26-W75-after-S1859596.jpg","ไพบูลย์","ไพบูลย์","Mo-Mo-Standard ทุกสาขา","0.00","2e34609794290a770cb0349119d78d21","2021-03-26","2021-03-29","23ae8fd2022f767f5c90728825132b90","11:04:46","10:31:21",NULL,"2021-08-21 00:59:36");
INSERT INTO problem_list VALUES(100,"IT2021-03-26-W76","43","1","6134ff997b6f5c7e403dc701c7b2cec9",7,138,"ยกเลิกเมนู","ไม่มี","IT2021-03-26-W76-1616731148483.jpg","IT2021-03-26-W76-after-S1859595.jpg","ไพบูลย์","ไพบูลย์","Mo-Mo-Standard ทุกสาขา","0.00","2e34609794290a770cb0349119d78d21","2021-03-26","2021-03-29","23ae8fd2022f767f5c90728825132b90","11:05:33","10:29:02",NULL,"2021-08-21 00:59:41");
INSERT INTO problem_list VALUES(101,"IT2021-03-26-W77","5","1","d3cea0a13419c7b7d226a432af757ca4",2,101,"เข้า Cloud  HR สาขาSCT ไม่ได้","ไม่มี","IT2021-03-26-W77-1616749044179.jpg","IT2021-03-26-W77-after-9469323F-6865-4286-A9EC-3C3F8BE01E46.jpeg","พรกมล",NULL,"HO","0.00","2e34609794290a770cb0349119d78d21","2021-03-26","2021-03-26","f21ada1d50ad6673ce1efb578513ead6","15:59:10","22:42:15",NULL,"2021-08-21 01:07:35");
INSERT INTO problem_list VALUES(102,"IT2021-03-26-W78","75","1","3db564ba6fc573bad2628be5b7de4855",2,140,"เข้าระบบ winspeed ไม่ได้ ","07-NEB-63-07-0023","IT2021-03-26-W78-S8609816.jpg",NULL,"สุธิดา รักษาอินทร์","นายอิทธิพัทธ์  มณีกานต์กูล","NEB","0.00","2e34609794290a770cb0349119d78d21","2021-03-26","2021-03-26","f21ada1d50ad6673ce1efb578513ead6","17:23:41","10:19:36",NULL,"2021-07-01 00:00:48");
INSERT INTO problem_list VALUES(103,"IT2021-03-27-W79","43","1","6134ff997b6f5c7e403dc701c7b2cec9",7,138,"เพิ่ม &amp;quot;Mineral Water (Delivery)&amp;quot; ใน Menu Delivery ","ไม่มี","IT2021-03-27-W79-Minerewater.jpg","IT2021-03-27-W79-after-S1859595.jpg","ไพบูลย์","ไพบูลย์","Mo-Mo-Standard (ทุกสาขา)","0.00","2e34609794290a770cb0349119d78d21","2021-03-27","2021-03-29","23ae8fd2022f767f5c90728825132b90","05:08:42","10:28:09",NULL,"2021-08-21 00:59:43");
INSERT INTO problem_list VALUES(104,"IT2021-03-27-W80","61","1","6340f02bed9ccc2a8a79007a3d67a9ad",2,141,"คราวไม่ซิงค์​ folderหายหลายอัน","04-CR9-59-07-02",NULL,NULL,"นพดล",NULL,"CR9","0.00","2e34609794290a770cb0349119d78d21","2021-03-27","2021-03-25","f21ada1d50ad6673ce1efb578513ead6","14:00:44","12:22:11",NULL,"2021-08-21 01:28:05");
INSERT INTO problem_list VALUES(105,"IT2021-03-27-W81","60","1","b17177683249bb2cda3472e14d984e60",7,154,"ไม่มีเมนูไดฟูกุ 49 บาท กลับบ้าน(ลุงตุ๊กแก้ไขให้แล้ว)","ไม่มี",NULL,NULL,"ปุณญนุช จันทร","ศร สมพีร์วงศ์","T21","0.00","2e34609794290a770cb0349119d78d21","2021-03-27","2021-03-29","ce63f18f7cf0a712fd4a2f47bc9ae14c","18:54:42","17:58:09",NULL,"2021-08-21 00:21:06");
INSERT INTO problem_list VALUES(106,"IT2021-03-29-W82","5","1","d3cea0a13419c7b7d226a432af757ca4",2,6,"เครื่องโน๊ตบุ้คพี่พงษ์ เปิดWord,Excel ไม่ได้","ไม่มี","IT2021-03-29-W82-E0343D13-22E4-46AD-8F2E-A22D5657E0C0.jpg",NULL,"พรกมล",NULL,"HO","0.00","2e34609794290a770cb0349119d78d21","2021-03-29","2021-03-30","f21ada1d50ad6673ce1efb578513ead6","09:25:02","10:18:00",NULL,"2021-08-21 01:07:40");
INSERT INTO problem_list VALUES(107,"IT2021-03-31-W83","20","1","cfef909e353c8db298c5afccf010578a",2,101,"เข้าแชร์ไม่ได้","08-WH-63-07-018","IT2021-03-31-W83-image.jpg",NULL,"ทราย",NULL,"WH","0.00","2e34609794290a770cb0349119d78d21","2021-03-31","2021-03-31","f21ada1d50ad6673ce1efb578513ead6","09:38:17","10:01:39",NULL,"2021-08-21 00:21:16");
INSERT INTO problem_list VALUES(108,"IT2021-03-31-W84","58","1","cf4178eda791cfcbd3f20efe1a1ec35a",7,130,"เพิ่มปุ่มส่วนลด Voucher S 813 Bath  และ Voucher S 1519 Bath","ไม่มี","IT2021-03-31-W84-111111.jpg","IT2021-03-31-W84-after-S9379852.jpg","สาโรจน์ วงศ์ศรีแก้ว","อิทธิพัทธ์ มณีกานต์กูล","CTW","0.00","2e34609794290a770cb0349119d78d21","2021-03-31","2021-04-01","ce63f18f7cf0a712fd4a2f47bc9ae14c","12:05:41","13:46:55",NULL,"2021-08-21 01:00:16");
INSERT INTO problem_list VALUES(109,"IT2021-03-31-W85","58","1","cf4178eda791cfcbd3f20efe1a1ec35a",7,138,"ลบปุ่มของ Mo-Mo-Standard ปุ่ม Voucher P 616","ไม่มี","IT2021-03-31-W85-22222.jpg",NULL,"สาโรจน์ วงศ์ศรีแก้ว","อิทธิพัทธ์ มณีกานต์กูล","CTW","0.00","2e34609794290a770cb0349119d78d21","2021-03-31","2021-04-01","ce63f18f7cf0a712fd4a2f47bc9ae14c","12:15:43","13:49:12",NULL,"2021-08-21 01:00:18");
INSERT INTO problem_list VALUES(110,"IT2021-03-31-W86","79","1","52f2a5ca589fe4b36097dd5c55c4ac9c",2,139,"สั่งของwinspeed ไม่ขึ้นให้อนุมัติสินค้า","24-CWG-63-07-010",NULL,NULL,"มิตรภาพ","มิตรภาพ","CWG","0.00","2e34609794290a770cb0349119d78d21","2021-03-31","2021-03-31","f21ada1d50ad6673ce1efb578513ead6","14:27:43","07:59:35",NULL,"2021-07-01 00:00:48");
INSERT INTO problem_list VALUES(111,"IT2021-03-31-W87","55","1","3ae8086fb05d3435d3dcd9cd1565a454",2,110,"express เข้าไม่ได้","ไม่มี",NULL,NULL,"เข็ม","พี่กุ้ง","HO","0.00","2e34609794290a770cb0349119d78d21","2021-03-31","2021-04-01","f21ada1d50ad6673ce1efb578513ead6","17:59:50","13:48:50",NULL,"2021-08-21 01:05:28");
INSERT INTO problem_list VALUES(112,"IT2021-03-31-W88","75","1","3db564ba6fc573bad2628be5b7de4855",8,152,"ขอดูกล้องวงจรปิด เนื่องจากมีลูกค้าได้แจ้งว่าทำของหล่นไว้ที่โต๊ะ (บุหรี่ไฟฟ้า)บริเวณ หน้าสเตชั่นโซน A ช่วงเวลา 18.00-19.45น.","ไม่มี","IT2021-03-31-W88-989.jpg","IT2021-03-31-W88-after-ปแอิื.JPG","นางสาวปราจรีย์  เมรรัตน์","นายอิทธิพัทธ์  มณีกานต์กูล","NEB","0.00","2e34609794290a770cb0349119d78d21","2021-03-31","2021-05-04","f21ada1d50ad6673ce1efb578513ead6","21:56:58","16:07:54",NULL,"2021-08-21 00:21:50");
INSERT INTO problem_list VALUES(113,"IT2021-04-01-W01","18","1","d5b14c346b88725387c282ac7b851ad8",2,141,"cloud invoice สาขา CR9 ข้อมูลวันที่28-31/03/2564 ไม่พบข้อมูล แต่หน้าร้านสแกนแล้ว","ไม่มี",NULL,NULL,"สุพัตรา(พลอย)",NULL,"HO","0.00","2e34609794290a770cb0349119d78d21","2021-04-01","2021-04-01","f21ada1d50ad6673ce1efb578513ead6","09:12:36","17:05:10",NULL,"2021-08-21 01:05:26");
INSERT INTO problem_list VALUES(114,"IT2021-04-01-W02","75","1","3db564ba6fc573bad2628be5b7de4855",7,138,"เมนู  Mango sticky Rice ออเดอร์ไม่ออกในครัวรบกวนแก้ไข  ให้ออกในบาร์อาหารให้ด้วยค่ะ","07-NEB-63-07-004","IT2021-04-01-W02-1104.jpg","IT2021-04-01-W02-after-S1892376.jpg","นางสาวปราจรีย์  เมรรัตน์","นายอิทธิพัทธ์  มณีกานต์กูล","NEB","0.00","2e34609794290a770cb0349119d78d21","2021-04-01","2021-04-01","23ae8fd2022f767f5c90728825132b90","13:11:24","13:54:32",NULL,"2021-07-01 00:00:48");
INSERT INTO problem_list VALUES(115,"IT2021-04-01-W03","5","1","d3cea0a13419c7b7d226a432af757ca4",2,110,"ลงปริ้นเตอท์ EPSON L805 RICHO","ไม่มี",NULL,NULL,"supitra",NULL,"HO","0.00","2e34609794290a770cb0349119d78d21","2021-04-01","2021-04-01","f21ada1d50ad6673ce1efb578513ead6","13:22:02","13:57:05",NULL,"2021-08-21 01:07:55");
INSERT INTO problem_list VALUES(116,"IT2021-04-01-W04","68","1","cec9ac90af27b74546e22910bdc5bfff",2,140,"กดเลข po ใน winspeed แล้วข้อมูลไม่ขึ้น","It 62/11","IT2021-04-01-W04-63896272853A0C619CB-1F3E-4428-BD67-DFFC07079642.MOV",NULL,"อภิชญา","นายศร สมพีร์วงศ์","CPK ","0.00","2e34609794290a770cb0349119d78d21","2021-04-01","2021-04-02","f21ada1d50ad6673ce1efb578513ead6","16:43:56","11:48:49",NULL,"2021-08-21 00:22:18");
INSERT INTO problem_list VALUES(117,"IT2021-04-01-W05","80","1","fc9c93f00e53b47b7bf01b72cd6180bd",7,138,"Order sauce ออกเครื่องปริ้นครัวค่ะ","ไม่มี",NULL,"IT2021-04-01-W05-after-AB93483E-42BC-4C9F-9556-6F96011885BC.jpeg","สุชัญญา","K.ณิชนันทน์","CLP","0.00","2e34609794290a770cb0349119d78d21","2021-04-01","2021-04-01","23ae8fd2022f767f5c90728825132b90","18:06:18","19:50:31",NULL,"2021-07-01 00:00:48");
INSERT INTO problem_list VALUES(118,"IT2021-04-01-W06","80","1","fc9c93f00e53b47b7bf01b72cd6180bd",7,138,"ส่วนลด 25%พนักงานกดลดไม่ขึ้นราคาลดค่ะ","ไม่มี",NULL,"IT2021-04-01-W06-after-C48C3512-61D4-40FD-B58D-2128BCBD9A4E.png","สุชัญญา","K.ณิชนันทน์","CLP","0.00","2e34609794290a770cb0349119d78d21","2021-04-01","2021-04-04","11c0009be8f4e977c6998edce04c9b2e","18:07:41","17:38:15",NULL,"2021-07-01 00:00:48");
INSERT INTO problem_list VALUES(119,"IT2021-04-01-W07","59","1","b496e28463b931118820246a08cf9826",7,138,"คีย์ น้ำดื่ม ไป รายการขึ้นที่เครื่องไอแพดแต่ไม่ออกที่ปริ้นเตอร์ครัว","ไม่มี",NULL,"IT2021-04-01-W07-after-E036E0BA-9562-4F35-9D8C-F6B375A35645.jpeg","สาริญา","สุจิตรา","CDC","0.00","2e34609794290a770cb0349119d78d21","2021-04-01","2021-04-02","11c0009be8f4e977c6998edce04c9b2e","19:49:57","17:55:17",NULL,"2021-08-21 01:05:23");
INSERT INTO problem_list VALUES(120,"IT2021-04-02-W08","5","1","d3cea0a13419c7b7d226a432af757ca4",2,151,"โน้ตบุ๊คคุณพงษ์ PDF พิมภาษาไทยไม่ได้","ไม่มี",NULL,NULL,"พรกมล",NULL,"HO","0.00","2e34609794290a770cb0349119d78d21","2021-04-02","2021-04-02","f21ada1d50ad6673ce1efb578513ead6","10:57:05","14:25:19",NULL,"2021-08-21 01:08:24");
INSERT INTO problem_list VALUES(121,"IT2021-04-02-W09","5","1","d3cea0a13419c7b7d226a432af757ca4",2,151,"ขอแอด Printer ในเครื่องโน้ตบุ๊คคุณพงษ์ เพิ่มเติม ได้แก่ ซัมซุง - epson - ricoh","ไม่มี",NULL,"IT2021-04-02-W09-after-Capture1111.JPG","ชนกนันท์",NULL,"HO","0.00","2e34609794290a770cb0349119d78d21","2021-04-02","2021-04-02","f21ada1d50ad6673ce1efb578513ead6","11:08:14","14:21:36",NULL,"2021-08-21 01:08:27");
INSERT INTO problem_list VALUES(122,"IT2021-04-02-W10","5","1","d3cea0a13419c7b7d226a432af757ca4",2,151,"ขอแอด Scanner ในเครื่องโน้ตบุ๊คคุณพงษ์ ","ไม่มี",NULL,"IT2021-04-02-W10-after-Capture1111.JPG","ชนกนันท์",NULL,"HO","0.00","2e34609794290a770cb0349119d78d21","2021-04-02","2021-04-02","f21ada1d50ad6673ce1efb578513ead6","11:09:11","14:22:11",NULL,"2021-08-21 01:08:29");
INSERT INTO problem_list VALUES(123,"IT2021-04-02-W11","45","1","11c0009be8f4e977c6998edce04c9b2e",2,143,"ต้องการ เพิ่ม Email เข้าระบบ","ไม่มี",NULL,NULL,"ภาวินี","เจนจิรา แก้วสมบูรณ์","HO","0.00","2e34609794290a770cb0349119d78d21","2021-04-02","2021-04-02","f21ada1d50ad6673ce1efb578513ead6","11:41:35","12:05:50",NULL,"2021-08-21 01:05:22");
INSERT INTO problem_list VALUES(124,"IT2021-04-02-W12","5","1","d3cea0a13419c7b7d226a432af757ca4",7,138,"ชื่อสาขาผิด","ไม่มี","IT2021-04-02-W12-FoodStory.jpg",NULL,"ชนกนันท์",NULL,"HO","0.00","2e34609794290a770cb0349119d78d21","2021-04-02","2021-04-04","11c0009be8f4e977c6998edce04c9b2e","11:56:46","17:43:36",NULL,"2021-08-21 01:08:34");
INSERT INTO problem_list VALUES(125,"IT2021-04-02-W13","5","1","d3cea0a13419c7b7d226a432af757ca4",4,143,"ชื่อ Email ผิด","ไม่มี","IT2021-04-02-W13-email.jpg",NULL,"ชนกนันท์",NULL,"HO","0.00","57995055c28df9e82476a54f852bd214","2021-04-02","2021-04-16","11c0009be8f4e977c6998edce04c9b2e","11:58:03","13:55:46",NULL,"2021-08-21 01:08:36");
INSERT INTO problem_list VALUES(126,"IT2021-04-02-W14","66","1","e782c0270070c7ff34dc7984a3643741",7,138,"ออเดอร์น้ำแร่ไม่ออกปริ้นเตอร์ครัว","MBP","IT2021-04-02-W14-S17326103.jpg",NULL,"เจนจิรา โกพล","นางสาวสุจิตรา เกษศิริ ","MBP","0.00","2e34609794290a770cb0349119d78d21","2021-04-02","2021-04-02","23ae8fd2022f767f5c90728825132b90","12:14:16","15:08:17",NULL,"2021-07-01 00:00:48");
INSERT INTO problem_list VALUES(127,"IT2021-04-02-W15","63","1","9aa946d6abfcb4cfc9ee258593eff00f",2,151,"โปรแกรม office ในโน๊ตบุ๊คไม่สามารถใช้งานได้","06-CBN-63-07-001",NULL,NULL,"annie","กาญจนา บรรเรียนกิจ","CBN","0.00","2e34609794290a770cb0349119d78d21","2021-04-02","2021-04-02","f21ada1d50ad6673ce1efb578513ead6","12:41:33","13:31:10",NULL,"2021-08-21 00:35:18");
INSERT INTO problem_list VALUES(128,"IT2021-04-02-W16","62","1","696d924c3decaabd113b928b63cb8e9e",1,148,"คีย์น้ำเปล่าไปรายการขึ้นที่เครื่อง POS แต่ไม่ออกที่ปริ้นเตอร์ในครัว","05-PMN-62-07-09",NULL,NULL,"สุนันทา สอนแหยม","นางสาวสุจิตรา เกษศิริ","PMN","0.00","2e34609794290a770cb0349119d78d21","2021-04-02","2021-04-02","23ae8fd2022f767f5c90728825132b90","13:14:41","15:07:27",NULL,"2021-07-01 00:00:48");
INSERT INTO problem_list VALUES(129,"IT2021-04-02-W17","18","1","d5b14c346b88725387c282ac7b851ad8",2,141,"cloud invoice สาขา CR9 ข้อมูลวันที่28-31/03และ 01/04/2564 ไม่พบข้อมูล แต่หน้าร้านสแกนแล้ว ","ไม่มี",NULL,"IT2021-04-02-W17-after-664090AD-3E0C-44B7-9CFA-639567C3BCA9.jpeg","สุพัตรา(พลอย)",NULL,"HO","0.00","2e34609794290a770cb0349119d78d21","2021-04-02","2021-04-03","11c0009be8f4e977c6998edce04c9b2e","14:50:21","17:52:43",NULL,"2021-08-21 01:05:19");
INSERT INTO problem_list VALUES(130,"IT2021-04-02-W18","75","1","3db564ba6fc573bad2628be5b7de4855",7,138,"แพ็คเกจ VIP เครื่องดื่มแอลกอล์ฮอล์ ตัว Draft Beer Glass, Draft Beer Pitcher และ Sho Chu Cocktail Green Apple ขึ้นราคาค่ะ รบกวนทำเป็น no charge ให้ด้วยนะคะ ขอบคุณค่ะ","07-NEB-63-07-004","IT2021-04-02-W18-11.jpg","IT2021-04-02-W18-after-DE880C3E-DF0B-40C8-A32D-2B394A8412A9.png","จุฑามาศ","นายอิทธิพัทธ์  มณีกานต์กูล","NEB","0.00","2e34609794290a770cb0349119d78d21","2021-04-02","2021-04-03","11c0009be8f4e977c6998edce04c9b2e","18:41:41","17:03:45",NULL,"2021-07-01 00:00:48");
INSERT INTO problem_list VALUES(131,"IT2021-04-02-W19","62","1","696d924c3decaabd113b928b63cb8e9e",1,148,"มือถือเครื่องเล็ก เวลากดโทรออกแล้วเครื่องจะดับและเปิดเครื่องเอง ","PMN-0944966043","IT2021-04-02-W19-639064685.808329.mp4",NULL,"สุนันทา สอนแหยม","นางสาวสุจิตรา เกษศิริ","PMN","0.00","2e34609794290a770cb0349119d78d21","2021-04-02","2021-04-05","5997108712eef9df6ecab22f1f3728f9","21:01:01","08:12:38",NULL,"2021-07-01 00:00:48");
INSERT INTO problem_list VALUES(132,"IT2021-04-04-W20","75","1","3db564ba6fc573bad2628be5b7de4855",7,138,"รบกวนเพิ่มระบบ ชำระเงิน Delivery ของแอป gojek ให้หน่วยนะคะ ขอบคุณค่ะ","07-NEB-63-07-004","IT2021-04-04-W20-294197.jpg","IT2021-04-04-W20-after-B7347E15-B810-4EB2-BCF3-F82C386A7DCB.png","สุธิดา รักษาอินทร์","นายอิทธิพัทธ์  มณีกานต์กูล","NEB","0.00","2e34609794290a770cb0349119d78d21","2021-04-04","2021-04-04","11c0009be8f4e977c6998edce04c9b2e","19:10:28","19:19:47",NULL,"2021-07-01 00:00:48");
INSERT INTO problem_list VALUES(133,"IT2021-04-05-W21","18","1","d5b14c346b88725387c282ac7b851ad8",2,139,"winspeed ใช้ PO Form Master ไม่ได้ค่ะ","IT59/26",NULL,NULL,"รุ่งทิวารัตน์",NULL,"HO","0.00","57995055c28df9e82476a54f852bd214","2021-04-05","2021-04-05","f21ada1d50ad6673ce1efb578513ead6","08:29:00","08:57:40",NULL,"2021-07-01 00:00:48");
INSERT INTO problem_list VALUES(134,"IT2021-04-05-W22","43","1","6134ff997b6f5c7e403dc701c7b2cec9",7,138,"เพิ่มรหัสน้ำแร่สำหรับ Delivery ทุกสาขา รวม CTW (ยกเว้น Nabezo)","ไม่มี","IT2021-04-05-W22-เพิ่มรหัสน้ำแร่9033.png","IT2021-04-05-W22-after-S24977415.jpg","ไพบูลย์","ไพบูลย์","ทุกสาขา รวม CTW (ยกเว้น Nabezo)","0.00","2e34609794290a770cb0349119d78d21","2021-04-05","2021-04-05","23ae8fd2022f767f5c90728825132b90","11:39:40","14:50:45",NULL,"2021-08-21 01:00:36");
INSERT INTO problem_list VALUES(135,"IT2021-04-05-W23","5","1","d3cea0a13419c7b7d226a432af757ca4",2,110,"แจ้งลงคิวอัพเดทโปรแกรมเป็น Business Plus Hrm Version 7.2 Build 2972
เครื่องพี่พงษ์ มิ้งค์ ฟ้า ตุ๊ก พี่กาญ วันที่ 8/4/64","ไม่มี",NULL,NULL,"พรกมล",NULL,"HO","0.00","57995055c28df9e82476a54f852bd214","2021-04-05","2021-04-05","5997108712eef9df6ecab22f1f3728f9","16:21:48","17:11:37",NULL,"2021-08-21 01:08:40");
INSERT INTO problem_list VALUES(136,"IT2021-04-05-W24","63","1","9aa946d6abfcb4cfc9ee258593eff00f",1,134,"พลาสม่า TV หน้าร้านเครื่องใหม่ไม่สามารถใช้งานกับUSBได้ ระบบแจ้งเตือนให้อัพเดทตามภาพแนบ","ไม่มี","IT2021-04-05-W24-6043EE6F-4CE6-4CF8-8283-120DABBAD6D3.jpeg",NULL,"ไทเกอร์","กาจญจนา บรรเรียนกิจ","CBN","0.00","2e34609794290a770cb0349119d78d21","2021-04-05","2021-04-07","5997108712eef9df6ecab22f1f3728f9","17:03:30","13:05:33",NULL,"2021-08-21 01:02:30");
INSERT INTO problem_list VALUES(137,"IT2021-04-06-W25","5","1","d3cea0a13419c7b7d226a432af757ca4",2,142,"เครื่องไม่ออนไลน์","ไม่มี","IT2021-04-06-W25-1617702082368.jpg","IT2021-04-06-W25-after-4F97EA24-E18E-4F89-A985-691E62BDFF7A.jpeg","ชนกนันท์",NULL,"HO","0.00","2e34609794290a770cb0349119d78d21","2021-04-06","2021-04-06","f21ada1d50ad6673ce1efb578513ead6","16:43:43","17:30:52",NULL,"2021-08-21 01:21:42");
INSERT INTO problem_list VALUES(138,"IT2021-04-06-W26","78","1","bfa7daa6736959ef0ec9b2ee01c1d656",1,114,"ตัวเชื่อม IPAD เครื่องแม่ แสดงขึ้นว่าชาร์จ แต่แบตไม่เข้า ","ไม่มี","IT2021-04-06-W26-S8839184.jpg","IT2021-04-06-W26-after-101206.jpg","กนกนาถ กิตติสุนทรรักษ์","กนกนาถ กิตติสุนทรรักษ์","SCT","0.00","2e34609794290a770cb0349119d78d21","2021-04-06","2021-04-08","ce63f18f7cf0a712fd4a2f47bc9ae14c","19:38:35","14:50:29",NULL,"2021-08-21 01:06:30");
INSERT INTO problem_list VALUES(139,"IT2021-04-06-W27","75","1","3db564ba6fc573bad2628be5b7de4855",7,138,"รบกวนสลับรูปซุปชาบูกับสุกี้ให้หน่อยนะคะ ขอบคุณค่ะ","07-NEB-63-07-004","IT2021-04-06-W27-S52789252.jpg",NULL,"จุฑามาศ","นายอิทธิพัทธ์  มณีกานต์กูล","NEB","0.00","2e34609794290a770cb0349119d78d21","2021-04-06","2021-04-07","23ae8fd2022f767f5c90728825132b90","19:38:46","11:01:03",NULL,"2021-07-01 00:00:48");
INSERT INTO problem_list VALUES(140,"IT2021-04-07-W28","1","1","6ccdcc01b4cbc496cab3ed0c7fb20cac",2,144,"ขอด่วนค่ะ ส่งรหัส anydesk แนบมาให้แล้วค่ะ","WH-61-073","IT2021-04-07-W28-ggg.PNG","IT2021-04-07-W28-after-image.jpg","กนกวรรณ",NULL,"HO","0.00","2e34609794290a770cb0349119d78d21","2021-04-07","2021-04-07","f21ada1d50ad6673ce1efb578513ead6","09:11:11","09:25:47",NULL,"2021-08-21 01:32:37");
INSERT INTO problem_list VALUES(141,"IT2021-04-07-W29","5","1","d3cea0a13419c7b7d226a432af757ca4",9,154,"กู้ไฟล์ ดาวน์โหลด ในวันที่ 29-30 กันยายน 2563 เครื่องของ ฟ้า hr","ไม่มี",NULL,NULL,"ยุพา",NULL,"HO","0.00","2e34609794290a770cb0349119d78d21","2021-04-07","2021-04-08","5997108712eef9df6ecab22f1f3728f9","11:10:25","13:51:54",NULL,"2021-08-21 01:06:45");
INSERT INTO problem_list VALUES(142,"IT2021-04-07-W30","61","1","6340f02bed9ccc2a8a79007a3d67a9ad",1,118,"โน๊ตบุ๊คเปิดไม่ติด ","04-CR9-59-07-02",NULL,"IT2021-04-07-W30-after-7930.jpg","ภู่กัน",NULL,"CR9","0.00","2e34609794290a770cb0349119d78d21","2021-04-07","2021-04-26","f21ada1d50ad6673ce1efb578513ead6","17:34:43","14:12:36",NULL,"2021-08-21 00:36:37");
INSERT INTO problem_list VALUES(143,"IT2021-04-07-W31","66","1","e782c0270070c7ff34dc7984a3643741",2,140,"ระบบ WinSpeed หายไปจากคอมพิวเตอร์ สาขา MBP ","12-MBP-63-97-17","IT2021-04-07-W31-1617801085503.jpg","IT2021-04-07-W31-after-image.jpg","พิชญาภัค ","สุจิตรา เกษศิริ","MBP","0.00","2e34609794290a770cb0349119d78d21","2021-04-07","2021-04-07","f21ada1d50ad6673ce1efb578513ead6","20:15:59","21:06:47",NULL,"2021-07-01 00:00:48");
INSERT INTO problem_list VALUES(144,"IT2021-04-08-W32","5","1","d3cea0a13419c7b7d226a432af757ca4",2,142,"ไม่สามารถเปิดเว็บได้ ของ guljak","ไม่มี","IT2021-04-08-W32-guljak.jpg","IT2021-04-08-W32-after-1617862324160.jpg","ชนกนันท์",NULL,"HO","0.00","2e34609794290a770cb0349119d78d21","2021-04-08","2021-04-08","5997108712eef9df6ecab22f1f3728f9","10:36:24","17:09:44",NULL,"2021-08-21 01:08:42");
INSERT INTO problem_list VALUES(145,"IT2021-04-08-W33","70","1","b29017088b3135c435f9c7912ec2cdb2",3,9,"โน๊ตบุ๊คและแท๊ปเล็ตเชื่อมต่อระบบWifi ไม่ได้ ","17-CR3-61-07-03",NULL,NULL,"มณฑ์ณลิน","ศร สมพีร์วงศ์","CR3","0.00","2e34609794290a770cb0349119d78d21","2021-04-08","2021-04-13",NULL,"13:19:38","08:13:20",NULL,"2021-08-21 01:29:59");
INSERT INTO problem_list VALUES(146,"IT2021-04-08-W34","1","1","6ccdcc01b4cbc496cab3ed0c7fb20cac",2,151,"พื้นที่ไดร์ C เต็ม เครื่อง พี่ Aop","ไม่มี","IT2021-04-08-W34-13900E8C-7B4C-4ACF-B2DE-93796178C9BC.jpeg","IT2021-04-08-W34-after-1617867122338.jpg","ภาวินี","เจนจิรา แก้วสมบูรณ์","HO","0.00","2e34609794290a770cb0349119d78d21","2021-04-08","2021-04-08","f21ada1d50ad6673ce1efb578513ead6","14:20:33","14:33:05",NULL,"2021-08-21 01:05:17");
INSERT INTO problem_list VALUES(147,"IT2021-04-08-W35","5","1","d3cea0a13419c7b7d226a432af757ca4",2,5,"เครื่องนี้ไม่สามารถสแกนเข้าเครื่องได้ รบกวนทำสแกนให้หน่อยค่ะ","ไม่มี",NULL,"IT2021-04-08-W35-after-2E9DFD23-C3D5-4091-847B-DD31E74459EF.jpeg","ปรีดาภรณ์ ชูแก้ว",NULL,"HO","0.00","2e34609794290a770cb0349119d78d21","2021-04-08","2021-04-08","f21ada1d50ad6673ce1efb578513ead6","14:58:12","15:08:49",NULL,"2021-08-21 01:08:44");
INSERT INTO problem_list VALUES(148,"IT2021-04-08-W36","1","1","6ccdcc01b4cbc496cab3ed0c7fb20cac",2,110,"ขออนุญาตเปิดใช้ Cloud ขอด่วนค่ะ","IT64/04","IT2021-04-08-W36-Capture.PNG",NULL,"นางสาวนรลักษณ์  พงศภัคสกุล","นางสาวนรลักษณ์  พงศภัคสกุล","kitchen","0.00","2e34609794290a770cb0349119d78d21","2021-04-08","2021-04-09","5997108712eef9df6ecab22f1f3728f9","15:57:54","16:02:57",NULL,"2021-07-01 00:00:48");
INSERT INTO problem_list VALUES(149,"IT2021-04-09-W37","68","1","cec9ac90af27b74546e22910bdc5bfff",2,110,"เชื่อมต่อ next cloud สาขาไม่ได้ค่ะ","14-CPK-60-07-02","IT2021-04-09-W37-image.jpg","IT2021-04-09-W37-after-image.jpg","ซายน์","กัญญาภัค","CPK","0.00","2e34609794290a770cb0349119d78d21","2021-04-09","2021-04-09","f21ada1d50ad6673ce1efb578513ead6","10:45:58","12:40:45",NULL,"2021-08-21 01:29:18");
INSERT INTO problem_list VALUES(150,"IT2021-04-09-W38","61","1","6340f02bed9ccc2a8a79007a3d67a9ad",7,101,"ลืมอีเมล์และรหัสเข้า food story","04-CR9-62-07-02",NULL,NULL,"ศิริพงษ์","ศิริพงษ์ มณีกาญจนา","CR9","0.00","2e34609794290a770cb0349119d78d21","2021-04-09","2021-04-09","11c0009be8f4e977c6998edce04c9b2e","10:58:53","10:59:46",NULL,"2021-08-21 00:37:23");
INSERT INTO problem_list VALUES(151,"IT2021-04-09-W39","43","1","6134ff997b6f5c7e403dc701c7b2cec9",2,110,"ติดตั้งโปรแกรม Next cloud ","IMP-61-115","IT2021-04-09-W39-20210409162141.jpg","IT2021-04-09-W39-after-E8D36288-8982-4FE0-9F5D-E185A6712102.jpeg","ไพบูลย์","ไพบูลย์","CR9","0.00","2e34609794290a770cb0349119d78d21","2021-04-09","2021-04-10","f21ada1d50ad6673ce1efb578513ead6","16:23:56","13:38:07",NULL,"2021-07-01 00:00:48");
INSERT INTO problem_list VALUES(152,"IT2021-04-10-W40","43","1","6134ff997b6f5c7e403dc701c7b2cec9",8,154,"ขอดูกล้องวงจรปิดที่โมโมพาราไดซ์ สาขาสยามเซ็นเตอร์ เนื่องจากพบว่าไข่ไก่ที่มาส่งได้ล้มทำให้เกิดความเสียหายมาก","ไม่มี","IT2021-04-10-W40-S2785342.jpg",NULL,"ไพบูลย์","ไพบูลย์","SCT","0.00","2e34609794290a770cb0349119d78d21","2021-04-10","2021-04-10","11c0009be8f4e977c6998edce04c9b2e","10:13:54","14:14:49",NULL,"2021-08-21 01:00:41");
INSERT INTO problem_list VALUES(153,"IT2021-04-10-W41","1","1","6ccdcc01b4cbc496cab3ed0c7fb20cac",2,141,"ไม่สามารถ connect ได้","IT64/04",NULL,"IT2021-04-10-W41-after-1618048891251.jpg","นางสาวนรลักษณ์  พงศภัคสกุล","นางสาวนรลักษณ์  พงศภัคสกุล","kitchen","0.00","2e34609794290a770cb0349119d78d21","2021-04-10","2021-04-11","11c0009be8f4e977c6998edce04c9b2e","11:05:39","13:54:40",NULL,"2021-07-01 00:00:48");
INSERT INTO problem_list VALUES(154,"IT2021-04-10-W42","78","1","bfa7daa6736959ef0ec9b2ee01c1d656",8,154,"ขอดูภาพจากกล้องวงจรปิด ตั้งแต่ช่วงเวลา 9.00 - 10.00 น. เนื่องจากเกิดปัญหาแผงไข่ไก่ล้ม ไข่ไก่แตกเสียหาย","ไม่มี","IT2021-04-10-W42-ไข่ไก่ซีพี-100464.jpg",NULL,"กมลนัทธวรรณ หาญจินดาพงษ์",NULL,"SCT","0.00","2e34609794290a770cb0349119d78d21","2021-04-10","2021-04-12","11c0009be8f4e977c6998edce04c9b2e","12:00:44","13:38:45",NULL,"2021-07-01 00:00:48");
INSERT INTO problem_list VALUES(155,"IT2021-04-10-W43","43","1","6134ff997b6f5c7e403dc701c7b2cec9",8,154,"ขอดูกล้องวงจรปิดสาขาพระราม 9 วันที่ 8/4/21 เวลา 11.00-16.30 เนื่องจากกระเป๋าใส่เงินหาย","ไม่มี",NULL,NULL,"ศร","ศร","SV","0.00","2e34609794290a770cb0349119d78d21","2021-04-10","2021-04-12","5997108712eef9df6ecab22f1f3728f9","14:03:26","17:04:10",NULL,"2021-08-21 01:00:43");
INSERT INTO problem_list VALUES(156,"IT2021-04-12-W44","5","1","d3cea0a13419c7b7d226a432af757ca4",2,142,"ไม่สามารถเปิดได้","ไม่มี","IT2021-04-12-W44-GULJAK.jpg",NULL,"ชนกนันท์",NULL,"HO","0.00","57995055c28df9e82476a54f852bd214","2021-04-12","2021-04-12","11c0009be8f4e977c6998edce04c9b2e","10:36:46","13:57:05",NULL,"2021-08-21 01:08:46");
INSERT INTO problem_list VALUES(157,"IT2021-04-12-W45","43","1","6134ff997b6f5c7e403dc701c7b2cec9",2,154,"เข้า Cloud สาขาไม่ได้","ไม่มี","IT2021-04-12-W45-1618211937045.jpg",NULL,"ไพบูลย์","ไพบูลย์","ทุกสาขา","0.00","2e34609794290a770cb0349119d78d21","2021-04-12","2021-04-13","f21ada1d50ad6673ce1efb578513ead6","14:19:33","16:33:44",NULL,"2021-08-21 01:00:46");
INSERT INTO problem_list VALUES(158,"IT2021-04-13-W46","20","1","cfef909e353c8db298c5afccf010578a",2,101,"เข้าเมลไม่ได้","08-WH-63-07-018",NULL,NULL,"ทราย",NULL,"WH","0.00","2e34609794290a770cb0349119d78d21","2021-04-13","2021-04-16","11c0009be8f4e977c6998edce04c9b2e","07:18:07","09:35:39",NULL,"2021-08-21 00:38:17");
INSERT INTO problem_list VALUES(159,"IT2021-04-14-W47","1","1","6ccdcc01b4cbc496cab3ed0c7fb20cac",2,141,"เข้า cloud ไม่ได้ ขอด่วน ขอบคุฯค่ะ","IT64/04",NULL,"IT2021-04-14-W47-after-83E7392D-4EA2-4C81-AB26-4FFC1101B673.jpeg","นางสาวนรลักษณ์  พงศภัคสกุล","นางสาวนรลักษณ์  พงศภัคสกุล","kitchen controller","0.00","2e34609794290a770cb0349119d78d21","2021-04-14","2021-04-14","11c0009be8f4e977c6998edce04c9b2e","11:56:04","12:58:45",NULL,"2021-07-01 00:00:48");
INSERT INTO problem_list VALUES(160,"IT2021-04-14-W48","58","1","cf4178eda791cfcbd3f20efe1a1ec35a",2,154,"E-mail ร้านไม่สามารถใช้งานได้ครับ","ไม่มี","IT2021-04-14-W48-ปัญหาE-mailใช้งานไม่ได้.png",NULL,"มนัสวิน กั๊กหนู","อิทธิพัทธ์ มณีกานต์กูล","CTW","0.00","2e34609794290a770cb0349119d78d21","2021-04-14","2021-04-15","11c0009be8f4e977c6998edce04c9b2e","16:42:32","13:08:09",NULL,"2021-08-21 01:31:23");
INSERT INTO problem_list VALUES(161,"IT2021-04-15-W49","43","1","6134ff997b6f5c7e403dc701c7b2cec9",2,101,"Cloud ไม่ Sync","ไม่มี","IT2021-04-15-W49-12121.jpg",NULL,"ไพบูลย์","ไพบูลย์","SCT","0.00","2e34609794290a770cb0349119d78d21","2021-04-15","2021-04-16","5997108712eef9df6ecab22f1f3728f9","19:11:54","15:46:39",NULL,"2021-08-21 01:01:12");
INSERT INTO problem_list VALUES(162,"IT2021-04-16-W50","43","1","6134ff997b6f5c7e403dc701c7b2cec9",2,101,"สาขา CWG ใน Next cloud หาย","ไม่มี","IT2021-04-16-W50-cwg.jpg",NULL,"ไพบูลย์","ไพบูลย์","CWG","0.00","2e34609794290a770cb0349119d78d21","2021-04-16","2021-04-16","5997108712eef9df6ecab22f1f3728f9","11:11:34","14:27:51",NULL,"2021-08-21 01:01:15");
INSERT INTO problem_list VALUES(163,"IT2021-04-16-W51","20","1","cfef909e353c8db298c5afccf010578a",2,151,"เข้าใช้งานแชร์ไม่ได้ ( ด่วนมากค่ะ)","08-WH-63-07-018",NULL,NULL,"ปนัดดา (ทราย)",NULL,"WH","0.00","2e34609794290a770cb0349119d78d21","2021-04-16","2021-04-16","ce63f18f7cf0a712fd4a2f47bc9ae14c","13:17:35","13:34:43",NULL,"2021-07-01 00:00:48");
INSERT INTO problem_list VALUES(164,"IT2021-04-16-W52","60","1","b17177683249bb2cda3472e14d984e60",2,110,"daliy slaes ไฟล์งานไม่ซิงค์ครับ","03-T21-57-07-01","IT2021-04-16-W52-S81674245.jpg",NULL,"วิสุทธิ์เทพ ห้าวเหิม",NULL,"T21","0.00","2e34609794290a770cb0349119d78d21","2021-04-16","2021-04-16","f21ada1d50ad6673ce1efb578513ead6","15:20:35","17:12:23",NULL,"2021-07-01 00:00:48");
INSERT INTO problem_list VALUES(165,"IT2021-04-18-W53","58","1","cf4178eda791cfcbd3f20efe1a1ec35a",7,138,"เพิ่มคำว่า Delivery หลังชื่อเมนูที่เป็น Delivery ","ไม่มี",NULL,"IT2021-04-18-W53-after-Screenshot(69).png","สาโรจน์ วงศ์ศรีแก้ว","อิทธิพัทธ์ มณีกานต์กูล","CTW","0.00","2e34609794290a770cb0349119d78d21","2021-04-18","2021-05-06","ce63f18f7cf0a712fd4a2f47bc9ae14c","15:51:23","11:07:30",NULL,"2021-08-21 01:01:16");
INSERT INTO problem_list VALUES(166,"IT2021-04-19-W54","5","1","d3cea0a13419c7b7d226a432af757ca4",2,110,"ทั้งแผนก HR ขอติดตั้งโปรแกรม Microsoft Team ในโน้ตบุ้คและเครื่องส่วนตัว และขอ User สำหรับใช้งาน","ไม่มี",NULL,NULL,"Fah",NULL,"HO","0.00","2e34609794290a770cb0349119d78d21","2021-04-19","2021-04-19","f21ada1d50ad6673ce1efb578513ead6","08:05:41","16:13:38",NULL,"2021-08-21 01:08:48");
INSERT INTO problem_list VALUES(167,"IT2021-04-19-W55","2","1","ed6b1d41694cc31a1bc8a0f659d5faf7",2,101,"E-Mail เข้าใช้งานไม่ได้ (ด่วน)","ไม่มี","IT2021-04-19-W55-Untitled.jpg",NULL,"กัมปนาท",NULL,"HO","0.00","2e34609794290a770cb0349119d78d21","2021-04-19","2021-04-19","11c0009be8f4e977c6998edce04c9b2e","08:38:19","10:34:53",NULL,"2021-08-21 01:03:18");
INSERT INTO problem_list VALUES(168,"IT2021-04-19-W56","18","1","d5b14c346b88725387c282ac7b851ad8",2,140,"ไม่สามารถใช้ PO Form Master 1wfh ","IT59/26",NULL,NULL,"รุ่งทิวารัตน์",NULL,"HO","0.00","2e34609794290a770cb0349119d78d21","2021-04-19","2021-04-19","5997108712eef9df6ecab22f1f3728f9","08:47:06","09:34:49",NULL,"2021-07-01 00:00:48");
INSERT INTO problem_list VALUES(169,"IT2021-04-19-W57","26","1","980b7ed37ca11aa01f35284afcad5dbb",2,141,"ใน Cloud ของสาขา ดังต่อไปนี้ ไฟล์ Daily Sales ไม่ปัญหาค่ะ ไม่อัปเดตเป็นปัจจุบัน (สาขา&amp;gt;Sales Report&amp;gt;Daily Sales&amp;gt;เดือนปัจจุบัน) ค่ะ
SCT = ไฟล์หาย
MGB = ไฟล์หาย
CDC = อัปเดตล่าสุดวันที่ 03/04/64
CR3 = อัปเดตล่าสุดวันที่ 10/04/64","ไม่มี","IT2021-04-19-W57-Capture.PNG",NULL,"วรกมล ใจรักษา","เจนจิรา แก้วสมบูรณ์","SCT MGB CDC CR3","0.00","2e34609794290a770cb0349119d78d21","2021-04-19","2021-04-19","5997108712eef9df6ecab22f1f3728f9","11:04:52","12:16:58",NULL,"2021-08-21 01:05:14");
INSERT INTO problem_list VALUES(170,"IT2021-04-19-W58","43","1","a60af60cc188e40bca694274e06eaf08",2,151,"หน้ารีโมท ไม่มีโปรแกรม winspeed","ไม่มี","IT2021-04-19-W58-91939.jpg",NULL,"ศุภชัย  หมื่นรัตน์","ศุภชัย ","HO","0.00","2e34609794290a770cb0349119d78d21","2021-04-19","2021-04-19","5997108712eef9df6ecab22f1f3728f9","13:38:44","14:57:09",NULL,"2021-08-21 01:06:15");
INSERT INTO problem_list VALUES(171,"IT2021-04-19-W59","5","1","d3cea0a13419c7b7d226a432af757ca4",4,153,"ขอเปิดสิทธิ์ VNC สำหรับ WFH ใน Macbook","ไม่มี",NULL,NULL,"ฟ้า",NULL,"HO","0.00","2e34609794290a770cb0349119d78d21","2021-04-19","2021-04-20","f21ada1d50ad6673ce1efb578513ead6","15:34:37","11:37:21",NULL,"2021-07-01 00:00:48");
INSERT INTO problem_list VALUES(172,"IT2021-04-20-W60","79","1","52f2a5ca589fe4b36097dd5c55c4ac9c",1,154,"เครื่องปริ้นมีปัญหา","24-CWG-63-07-011","IT2021-04-20-W60-20210420134707.jpg","IT2021-04-20-W60-after-69DC3344-8598-4021-9F53-03973215334F.jpeg","มิตรภาพ","มิตรภาพ","CWG","0.00","2e34609794290a770cb0349119d78d21","2021-04-20","2021-05-25","f21ada1d50ad6673ce1efb578513ead6","13:47:21","16:09:39",NULL,"2021-08-21 00:39:05");
INSERT INTO problem_list VALUES(173,"IT2021-04-21-W61","5","1","d3cea0a13419c7b7d226a432af757ca4",2,110,"ขอติดตั้งโปรแกรม WINSpeed ","ไม่มี",NULL,NULL,"พรกมล",NULL,"HO","0.00","2e34609794290a770cb0349119d78d21","2021-04-21","2021-04-21","f21ada1d50ad6673ce1efb578513ead6","11:14:10","11:31:18",NULL,"2021-08-21 01:08:51");
INSERT INTO problem_list VALUES(174,"IT2021-04-21-W62","66","1","e782c0270070c7ff34dc7984a3643741",1,148,"แฟลชไดร์ฟ วิดิโอที่เปิดหน้าร้านค้าง ต้องการลงไฟล์ใหม่","MBP","IT2021-04-21-W62-S18227250.jpg",NULL,"เจนจิรา โกพล","สุจิตรา เกษศิริ","MBP","0.00","2e34609794290a770cb0349119d78d21","2021-04-21","2021-04-21","f21ada1d50ad6673ce1efb578513ead6","11:24:42","11:30:59",NULL,"2021-07-01 00:00:48");
INSERT INTO problem_list VALUES(175,"IT2021-04-21-W63","61","1","6340f02bed9ccc2a8a79007a3d67a9ad",2,151,"โปรแกรม​ ไม่มี​ โปรแกรมสแกน​  โปรแกรมไลด์","04-CR9-59-07-02",NULL,"IT2021-04-21-W63-after-image.jpg","นพดล","นพดล","CR9","0.00","2e34609794290a770cb0349119d78d21","2021-04-21","2021-04-21","f21ada1d50ad6673ce1efb578513ead6","17:56:46","18:58:54",NULL,"2021-08-19 09:37:54");
INSERT INTO problem_list VALUES(176,"IT2021-04-21-W64","55","1","3ae8086fb05d3435d3dcd9cd1565a454",2,151,"โปรแกรม  winSpeed ในโน็ตบุ๊ค ภาษามันเพี้ยน","IT63/08",NULL,NULL,"เข็ม ",NULL,"HO","0.00","2e34609794290a770cb0349119d78d21","2021-04-21","2021-04-22","5997108712eef9df6ecab22f1f3728f9","18:17:00","09:16:01",NULL,"2021-08-21 01:16:07");
INSERT INTO problem_list VALUES(177,"IT2021-04-22-W65","55","1","3ae8086fb05d3435d3dcd9cd1565a454",2,151,"ภาษาโปรแกรม Assetts มันเพี้ยน ครับ รหัสเข้าโปรแกรม 
DI admin 
Pass V5062Q
","IT63/08",NULL,"IT2021-04-22-W65-after-2.jpg","เข็ม",NULL,"HO","0.00","2e34609794290a770cb0349119d78d21","2021-04-22","2021-04-26","f21ada1d50ad6673ce1efb578513ead6","09:26:56","10:56:57",NULL,"2021-08-21 01:15:41");
INSERT INTO problem_list VALUES(178,"IT2021-04-22-W66","2","1","ed6b1d41694cc31a1bc8a0f659d5faf7",2,151,"แผนกการเงินและจัดซื่อ อยากได้โปรแกรมzoomเพื่อประชุมทีม ในทุกเครื่อง พี่กาญ,น้องพี,แก้ม,พลอยต้องใช้ในมือถือ พี่นุ้ยใช้ในไอแพด ที่เหลือโนีตบุ๊คทั้งหมด ","ไม่มี",NULL,NULL,"นุ้ยการเงิน",NULL,"HO","0.00","2e34609794290a770cb0349119d78d21","2021-04-22","2021-04-22","5997108712eef9df6ecab22f1f3728f9","09:33:44","14:33:45",NULL,"2021-08-21 01:05:11");
INSERT INTO problem_list VALUES(179,"IT2021-04-22-W67","79","1","52f2a5ca589fe4b36097dd5c55c4ac9c",9,9,"ขอรหัส","24-CWG-63-07-001","IT2021-04-22-W67-20210422120924.jpg",NULL,"สโรชา","สโรชา","CWG","0.00","2e34609794290a770cb0349119d78d21","2021-04-22","2021-04-22","11c0009be8f4e977c6998edce04c9b2e","12:24:47","12:31:33",NULL,"2021-08-21 01:30:35");
INSERT INTO problem_list VALUES(180,"IT2021-04-22-W68","72","1","7611717e7dfb53c91a776dcd505f9802",1,3,"เครื่องปริ้นส์ Printer มีหมึกรั่วซึมออกมา","20-SCP-62-97-021",NULL,"IT2021-04-22-W68-after-3626C4A8-139E-4DF1-93A6-B1364C9C5341.jpeg","รุ้งทิพย์ พุฒซอน","พิชมณช์ อภิธรรมพิทักษ์","SCP","0.00","2e34609794290a770cb0349119d78d21","2021-04-22","2021-05-31","ce63f18f7cf0a712fd4a2f47bc9ae14c","13:35:45","10:31:17",NULL,"2021-07-01 00:00:48");
INSERT INTO problem_list VALUES(181,"IT2021-04-22-W69","2","1","ed6b1d41694cc31a1bc8a0f659d5faf7",2,101,"เครื่องของสุพัตรา แสงเพชร ไม่สามารถใช้งานvpn ได้ เชื่อมต่อไม่ได้","ไม่มี",NULL,NULL,"นุ้ยการเงิน",NULL,"HO","0","2e34609794290a770cb0349119d78d21","2021-04-22","2021-04-22","ce63f18f7cf0a712fd4a2f47bc9ae14c","14:53:33","20:04:44",NULL,"2021-08-21 01:03:59");
INSERT INTO problem_list VALUES(182,"IT2021-04-22-W70","75","1","3db564ba6fc573bad2628be5b7de4855",7,138,"รบกวนเพิ่มระบบชำระเงิน QR Code เครื่องรูดกรุงเทพ ให้หน่อยนะครับ ขอบคุณครับ","07-NEB-63-07-004","IT2021-04-22-W70-กรุงเทพ.jpg","IT2021-04-22-W70-after-90EC5530-4E0B-4FBA-8CB9-3C7058651AB3.png","อานัส สานิง","นายอิทธิพัทธ์  มณีกานต์กูล","NEB","0.00","2e34609794290a770cb0349119d78d21","2021-04-22","2021-04-22","11c0009be8f4e977c6998edce04c9b2e","17:57:07","18:39:19",NULL,"2021-07-01 00:00:48");
INSERT INTO problem_list VALUES(183,"IT2021-04-23-W71","60","1","b17177683249bb2cda3472e14d984e60",3,9,"ไวไฟไม่มี","ไม่มี",NULL,NULL,"ปุณญนุช","ศิริพงษ์","T21","0.00","57995055c28df9e82476a54f852bd214","2021-04-23","2021-04-23","f21ada1d50ad6673ce1efb578513ead6","15:54:44","16:28:05",NULL,"2021-07-01 00:00:48");
INSERT INTO problem_list VALUES(184,"IT2021-04-24-W72","60","1","b17177683249bb2cda3472e14d984e60",2,141,"ไฟล์ไม่ซิ้ง","ไม่มี","IT2021-04-24-W72-1619254585216-975176360.jpg","IT2021-04-24-W72-after-image.jpg","ปุณญนุช","ศิริพงษ์","T21","0.00","2e34609794290a770cb0349119d78d21","2021-04-24","2021-04-24","f21ada1d50ad6673ce1efb578513ead6","15:57:12","18:00:07",NULL,"2021-07-01 00:00:48");
INSERT INTO problem_list VALUES(185,"IT2021-04-25-W73","66","1","e782c0270070c7ff34dc7984a3643741",2,110,"ระบบ Time หาย ขอติดตั้งระบบ Time ใหม่","12-MBP-63-97-17","IT2021-04-25-W73-S18407458.jpg","IT2021-04-25-W73-after-BD1BF131-697A-4237-B28E-CAD569173442.png","เจนจิรา โกพล","สุจิตรา เกษศิริ","MBP","0.00","2e34609794290a770cb0349119d78d21","2021-04-25","2021-04-25","11c0009be8f4e977c6998edce04c9b2e","12:40:59","13:05:01",NULL,"2021-07-01 00:00:48");
INSERT INTO problem_list VALUES(186,"IT2021-04-26-W74","53","1","2d7a80fc55f6ff49c227852ac35fc3f5",1,3,"ปริ้นไม่ได้ค่ะ มันขึ้นแจ้งเตือนให้ติดต่อศูนย์ epson","ไม่มี",NULL,NULL,"สุวดี พงษ์สระพัง",NULL,"HO","0.00","2e34609794290a770cb0349119d78d21","2021-04-26","2021-04-26","f21ada1d50ad6673ce1efb578513ead6","08:48:27","10:43:27",NULL,"2021-08-21 01:07:02");
INSERT INTO problem_list VALUES(187,"IT2021-04-26-W75","2","1","ed6b1d41694cc31a1bc8a0f659d5faf7",2,151,"โปรแกรมใช้ไม่ได้","ไม่มี",NULL,"IT2021-04-26-W75-after-Capture.JPG","ชฎาพร พรหมวิชัย",NULL,"HO","0.00","2e34609794290a770cb0349119d78d21","2021-04-26","2021-04-26","f21ada1d50ad6673ce1efb578513ead6","14:37:38","15:16:02",NULL,"2021-08-21 01:05:10");
INSERT INTO problem_list VALUES(188,"IT2021-04-27-W76","66","1","e782c0270070c7ff34dc7984a3643741",2,110,"ระบบTime มีปัญหา","MBP","IT2021-04-27-W76-S18472995.jpg","IT2021-04-27-W76-after-image.jpg","เจนจิรา โกพล","สุจิตรา เกษศิริ","MBP","0.00","2e34609794290a770cb0349119d78d21","2021-04-27","2021-04-29","f21ada1d50ad6673ce1efb578513ead6","15:05:19","16:00:28",NULL,"2021-07-01 00:00:48");
INSERT INTO problem_list VALUES(189,"IT2021-04-27-W77","67","1","9fe4987d685fcbff9b1a3011cdd12b35",2,110,"ขอติดตั้งโปรแกรม Epson Scanner L360","13-SCQ-59-07-03",NULL,"IT2021-04-27-W77-after-sdf.JPG","กานต์รวี จันทร์บรรจง","กาญจนา บรรเรียนกิจ","SCQ","0.00","2e34609794290a770cb0349119d78d21","2021-04-27","2021-04-28","f21ada1d50ad6673ce1efb578513ead6","17:31:03","12:06:24",NULL,"2021-07-01 00:00:48");
INSERT INTO problem_list VALUES(190,"IT2021-04-28-W78","5","1","d3cea0a13419c7b7d226a432af757ca4",1,124,"Guljak สาขา ICS เวลาที่เครื่องสแกนนิ้วไม่ตรงตามเวลาจริง","ไม่มี","IT2021-04-28-W78-12428.jpg","IT2021-04-28-W78-after-295863.jpg","ชนกนันท์",NULL,"HO","0.00","2e34609794290a770cb0349119d78d21","2021-04-28","2021-04-28","f21ada1d50ad6673ce1efb578513ead6","09:48:28","10:44:23",NULL,"2021-08-21 01:08:54");
INSERT INTO problem_list VALUES(191,"IT2021-04-28-W79","5","1","d3cea0a13419c7b7d226a432af757ca4",1,124,"Guljak สาขา KVL เครื่องสแกนนิ้ว เวลาไม่ตรง","ไม่มี","IT2021-04-28-W79-817345.jpg","IT2021-04-28-W79-after-295863.jpg","ชนกนันท์",NULL,"HO","0.00","2e34609794290a770cb0349119d78d21","2021-04-28","2021-04-28","f21ada1d50ad6673ce1efb578513ead6","10:20:09","10:57:37",NULL,"2021-08-21 01:08:55");
INSERT INTO problem_list VALUES(192,"IT2021-04-28-W80","68","1","cec9ac90af27b74546e22910bdc5bfff",1,154,"หัวชาร์จ IPAD ระเบิด","ไม่มี","IT2021-04-28-W80-277BE8C0-11F2-4A52-9624-7F112BFAF0A8.jpeg","IT2021-04-28-W80-after-779516.jpg","อภิชญา","นายศร","CPK ","690.00","2e34609794290a770cb0349119d78d21","2021-04-28","2021-05-11","f21ada1d50ad6673ce1efb578513ead6","14:44:56","13:47:39",NULL,"2021-08-21 01:01:18");
INSERT INTO problem_list VALUES(193,"IT2021-04-28-W81","26","1","980b7ed37ca11aa01f35284afcad5dbb",2,154,"อีเมลล์ไม่ปัญหาไม่สามารถรับอีเมลล์จากที่อื่นได้","ไม่มี",NULL,"IT2021-04-28-W81-after-image.jpg","ณปภัช",NULL,"HO","0.00","2e34609794290a770cb0349119d78d21","2021-04-28","2021-04-30","f21ada1d50ad6673ce1efb578513ead6","17:27:32","15:55:44",NULL,"2021-08-21 01:04:03");
INSERT INTO problem_list VALUES(194,"IT2021-04-29-W82","72","1","7611717e7dfb53c91a776dcd505f9802",2,3,"เครื่องปริ้นส์ ปริ้นส์ไม่ออก","ไม่มี ","IT2021-04-29-W82-7BC27AE9-5886-4C2D-BC36-D4013991149F.jpeg","IT2021-04-29-W82-after-1.JPG","รุ้งทิพย์ พุฒซอน","พิชามญช์ อธิธรรมพิทักษ์","SCP","0.00","2e34609794290a770cb0349119d78d21","2021-04-29","2021-04-29","f21ada1d50ad6673ce1efb578513ead6","13:13:30","15:28:23",NULL,"2021-08-21 01:28:46");
INSERT INTO problem_list VALUES(195,"IT2021-04-29-W83","69","1","859cd041e3fe84e5e65b5c178452841f",2,141,"ข้อมูล ไฟล์ invoice หายทั้งหมดครับ ","ไม่มี","IT2021-04-29-W83-274073.jpg","IT2021-04-29-W83-after-image.jpg","wacharapon","กาญจนา บรรเรียนกิจ","MGB","0.00","2e34609794290a770cb0349119d78d21","2021-04-29","2021-04-30","f21ada1d50ad6673ce1efb578513ead6","16:05:38","15:41:04",NULL,"2021-08-21 01:06:27");
INSERT INTO problem_list VALUES(196,"IT2021-04-30-W84","5","1","d3cea0a13419c7b7d226a432af757ca4",1,124,"Guljak เครื่องสแกนนิ้วเวลาไม่ตรง","ไม่มี","IT2021-04-30-W84-S13893649.jpg","IT2021-04-30-W84-after-03998BFB-14FB-4524-B088-4C5D8EBDD3C0.jpeg","ชนกนันท์",NULL,"HO","0.00","2e34609794290a770cb0349119d78d21","2021-04-30","2021-04-30","f21ada1d50ad6673ce1efb578513ead6","10:56:21","14:37:49",NULL,"2021-08-21 01:09:06");
INSERT INTO problem_list VALUES(197,"IT2021-04-30-W85","60","1","b17177683249bb2cda3472e14d984e60",2,141,"ไฟล์ไม่ซิ้งค่ะ","ไม่มี",NULL,"IT2021-04-30-W85-after-image.jpg","ปุณญนุช","ศิริพงษ์","T21","0.00","2e34609794290a770cb0349119d78d21","2021-04-30","2021-04-30","f21ada1d50ad6673ce1efb578513ead6","15:17:17","15:58:13",NULL,"2021-07-01 00:00:48");
INSERT INTO problem_list VALUES(198,"IT2021-05-02-W01","74","1","06ac11af0ac13b221a953bfb54ecaa92",2,9,"วินสปรีดเมื่อวานเข้าไม่ได้ทั้งวันพอมาวันนี้เป็นภาษาอะไรไม่รู้","ไม่มี","IT2021-05-02-W01-1619926976205.jpg","IT2021-05-02-W01-after-image.jpg","แพรวรัตน์",NULL,"CCW","0.00","2e34609794290a770cb0349119d78d21","2021-05-02","2021-05-02","f21ada1d50ad6673ce1efb578513ead6","10:48:15","12:51:40",NULL,"2021-08-21 00:58:14");
INSERT INTO problem_list VALUES(199,"IT2021-05-02-W02","58","1","cf4178eda791cfcbd3f20efe1a1ec35a",2,154,"Nextcould มีโฟลเดอร์ไม่ครบ บางอย่างขาดหายไป คอมพิวเตอร์ASUS","01-CTW-64-07-01","IT2021-05-02-W02-223.jpg","IT2021-05-02-W02-after-C306149B-8343-4B12-84B0-5374811E7BE0.jpeg","สาโรจน์ วงศ์ศรีแก้ว","อิทธิพัทธ์ มณีกานต์กูล","CTW","0.00","2e34609794290a770cb0349119d78d21","2021-05-02","2021-05-02","f21ada1d50ad6673ce1efb578513ead6","11:19:26","13:12:26",NULL,"2021-08-21 00:41:30");
INSERT INTO problem_list VALUES(200,"IT2021-05-04-W03","55","1","3ae8086fb05d3435d3dcd9cd1565a454",2,110,"ติดตั้งโปรแกรม ภ.ง.ด3 , 53 เครื่องเข็ม กับพี่อิก","IT63/08",NULL,"IT2021-05-04-W03-after-1620113020676.jpg","เข็ม",NULL,"HO","0.00","2e34609794290a770cb0349119d78d21","2021-05-04","2021-05-04","f21ada1d50ad6673ce1efb578513ead6","12:51:02","15:00:42",NULL,"2021-07-01 00:00:48");
INSERT INTO problem_list VALUES(201,"IT2021-05-04-W04","18","1","d5b14c346b88725387c282ac7b851ad8",2,141,"cloud invoice สาขา MGB ไม่พบข้องมูล ตั้งแต่ วันที่ 26/04 ถึง ปัจจุบัน ","ไม่มี","IT2021-05-04-W04-1620112277670.jpg",NULL,"อุษา",NULL,"HO","0.00","2e34609794290a770cb0349119d78d21","2021-05-04","2021-05-06","ce63f18f7cf0a712fd4a2f47bc9ae14c","14:15:13","11:53:36",NULL,"2021-08-21 01:04:04");
INSERT INTO problem_list VALUES(202,"IT2021-05-04-W05","18","1","d5b14c346b88725387c282ac7b851ad8",2,141,"เปิดไฟล์ PDF ใน cloud invoice สาขา cr9 วันที่ 02-04 /05 /2564 ไม่ได้ค่ะ","ไม่มี","IT2021-05-04-W05-cr91.jpg","IT2021-05-04-W05-after-Capture.JPG","สุพัตรา(พลอย)",NULL,"HO","0.00","2e34609794290a770cb0349119d78d21","2021-05-04","2021-05-05","f21ada1d50ad6673ce1efb578513ead6","17:20:59","15:25:16",NULL,"2021-08-21 01:05:07");
INSERT INTO problem_list VALUES(203,"IT2021-05-05-W06","5","1","d3cea0a13419c7b7d226a432af757ca4",2,110,"ดาวน์โหลดโปรแกรมใบแนบ แบบ ภ.ง.ด.1
http://rdserver.rd.go.th/publish/progdownload.php?app=pnd1","ไม่มี",NULL,"IT2021-05-05-W06-after-904A1CAC-451B-4F82-BB06-C252AC4A3379.jpeg","พรกมล",NULL,"HO","0.00","2e34609794290a770cb0349119d78d21","2021-05-05","2021-05-05","f21ada1d50ad6673ce1efb578513ead6","16:44:33","22:35:22",NULL,"2021-08-21 01:09:09");
INSERT INTO problem_list VALUES(204,"IT2021-05-06-W07","5","1","d3cea0a13419c7b7d226a432af757ca4",2,110,"ดาวน์โหลดโปรแกรมใบแนบ แบบ ภ.ง.ด.1
http://rdserver.rd.go.th/publish/progdownload.php?app=pnd1
เครื่องมิ้งค์ เครื่องฟ้า","ไม่มี",NULL,NULL,"พรกมล",NULL,"HO","0.00","2e34609794290a770cb0349119d78d21","2021-05-06","2021-05-06","5997108712eef9df6ecab22f1f3728f9","08:22:20","12:41:11",NULL,"2021-08-21 01:09:11");
INSERT INTO problem_list VALUES(205,"IT2021-05-07-W08","5","1","d3cea0a13419c7b7d226a432af757ca4",2,142,"เปิดเว็บไม่ได้","ไม่มี","IT2021-05-07-W08-guljak.jpg",NULL,"ชนกนันท์",NULL,"HO","0.00","2e34609794290a770cb0349119d78d21","2021-05-07","2021-05-08","5997108712eef9df6ecab22f1f3728f9","08:28:02","08:35:10",NULL,"2021-08-21 01:09:14");
INSERT INTO problem_list VALUES(206,"IT2021-05-07-W09","80","1","fc9c93f00e53b47b7bf01b72cd6180bd",1,148,"ชาร์ตแบตแล้ว แบตหมดเร็ว เช้า 10โมง มีแบต 100% ตอนเวลา 4โมงเย็น เหลือเเบต 10%","26-CLP-64-07-02",NULL,NULL,"สุชัญญา","คุณณิชนันทน์ ","CLP ","0.00","57995055c28df9e82476a54f852bd214","2021-05-07","2021-05-12","ce63f18f7cf0a712fd4a2f47bc9ae14c","18:04:24","18:07:06",NULL,"2021-07-01 00:00:48");
INSERT INTO problem_list VALUES(207,"IT2021-05-10-W10","76","1","6809f49f86586a97cb888adc3119668b",2,144,"Win speed ภาษาต่างด้าว","15-NGS-06-07-04","IT2021-05-10-W10-C7A7B350-D119-4B80-B031-278BD670BA4A.jpeg",NULL,"จุรีมาศ","อิทธพัทธ์","NGS","0.00","2e34609794290a770cb0349119d78d21","2021-05-10","2021-05-10","5997108712eef9df6ecab22f1f3728f9","13:52:38","14:25:47",NULL,"2021-08-21 01:29:48");
INSERT INTO problem_list VALUES(208,"IT2021-05-10-W11","75","1","3db564ba6fc573bad2628be5b7de4855",7,131,"รบกวนเพิ่มไอเท็มปุ่มกดชุดปาร์ตี้สุกียากี้ของMO MOให้ด้วยนะครับ เนื่องจากมีไม่ครบครับ","07-NEB-63-07-004",NULL,NULL,"อานัส สานิง","นายอิทธิพัทธ์  มณีกานต์กูล","NEB","0.00","2e34609794290a770cb0349119d78d21","2021-05-10","2021-05-10","23ae8fd2022f767f5c90728825132b90","15:07:28","16:30:41",NULL,"2021-07-01 00:00:48");
INSERT INTO problem_list VALUES(209,"IT2021-05-10-W12","5","1","d3cea0a13419c7b7d226a432af757ca4",2,142,"CLP ไม่ออนไลน์ ","ไม่มี","IT2021-05-10-W12-1620645645858.jpg",NULL,"ชนกนันท์",NULL,"HO","0.00","2e34609794290a770cb0349119d78d21","2021-05-10","2021-05-11","5997108712eef9df6ecab22f1f3728f9","18:22:12","11:46:50",NULL,"2021-08-21 01:09:17");
INSERT INTO problem_list VALUES(210,"IT2021-05-11-W13","72","1","7611717e7dfb53c91a776dcd505f9802",1,3,"Printer ปริ้นส์ไม่ออก","ไม่มี",NULL,"IT2021-05-11-W13-after-sdsafdas.JPG","รุ้งทิพย์ พุฒซอน","พิชามณช์ อธิธรรมพิทักษ์","SCP","0.00","2e34609794290a770cb0349119d78d21","2021-05-11","2021-05-11","f21ada1d50ad6673ce1efb578513ead6","11:51:29","12:11:04",NULL,"2021-08-21 01:01:20");
INSERT INTO problem_list VALUES(211,"IT2021-05-11-W14","61","1","6340f02bed9ccc2a8a79007a3d67a9ad",1,148,"สายเสียบที่หลังเครื่องปริ้นเสีย ทำให้ดชื่อมต่อกับโน็ตบุ๊คไม่ได้","04-CR9-58-07-01","IT2021-05-11-W14-IMG20210511132734.jpg",NULL,"วณิชชญา","นพดล","CR9","0.00","2e34609794290a770cb0349119d78d21","2021-05-11","2021-05-11","5997108712eef9df6ecab22f1f3728f9","13:37:21","15:25:27",NULL,"2021-08-21 01:27:53");
INSERT INTO problem_list VALUES(212,"IT2021-05-11-W15","2","1","ed6b1d41694cc31a1bc8a0f659d5faf7",2,101," เอกสาร PAY IN สาขา CR3
ไม่ขึ้นตั้งแต่วันที่ 4/5/64
หน้าร้านแจ้งว่าอัฟแล้ว แต่ไม่ขึ้นในคราวครับ","ไม่มี","IT2021-05-11-W15-CR3.jpg","IT2021-05-11-W15-after-Capture.JPG","กัมปนาท เอี่ยมโอษฐ์",NULL,"HO","0.00","2e34609794290a770cb0349119d78d21","2021-05-11","2021-05-11","f21ada1d50ad6673ce1efb578513ead6","14:17:39","15:46:20",NULL,"2021-08-21 01:03:20");
INSERT INTO problem_list VALUES(213,"IT2021-05-11-W16","18","1","d5b14c346b88725387c282ac7b851ad8",2,141,"Cloud invoice สาขา CLP ไม่พบไฟล์ค่ะ","ไม่มี","IT2021-05-11-W16-CLP.jpg","IT2021-05-11-W16-after-sedfgh.JPG","อุษา",NULL,"HO","0.00","2e34609794290a770cb0349119d78d21","2021-05-11","2021-05-11","f21ada1d50ad6673ce1efb578513ead6","16:37:25","16:45:51",NULL,"2021-08-21 01:04:07");
INSERT INTO problem_list VALUES(214,"IT2021-05-12-W17","75","1","3db564ba6fc573bad2628be5b7de4855",7,138,"แจ้งปุ่ม addition หมดอายุ ทั้งหมด 16ปุ่ม รูปอยู่ในคลาวนะคะ ","07-NEB-63-07-004",NULL,NULL,"จุฑามาศ","นายอิทธิพัทธ์  มณีกานต์กูล","NEB","0.00","2e34609794290a770cb0349119d78d21","2021-05-12","2021-05-12","23ae8fd2022f767f5c90728825132b90","12:03:55","13:36:44",NULL,"2021-07-01 00:00:48");
INSERT INTO problem_list VALUES(215,"IT2021-05-12-W18","58","1","cf4178eda791cfcbd3f20efe1a1ec35a",7,138,"รบกวนลบปุ่มโปรโมชั่นที่ไม่ได้ใช้ค่ะ ","01-CTW-64-07-03","IT2021-05-12-W18-137729.jpg","IT2021-05-12-W18-after-511143E5-123D-4022-80E7-51ED0BF0FECB.jpg","ศศิวิไล จันลือชัย","อิทธิพัทธ์ มณีกานต์กูล","CTW","0.00","2e34609794290a770cb0349119d78d21","2021-05-12","2021-05-12","23ae8fd2022f767f5c90728825132b90","15:36:26","15:46:49",NULL,"2021-07-01 00:00:48");
INSERT INTO problem_list VALUES(216,"IT2021-05-12-W19","58","1","cf4178eda791cfcbd3f20efe1a1ec35a",7,138,"รบกวนลบปุ่มโฑปรโมชั่นที่ไม่ได้ใช้งานค่ะ","01-CTW-64-07-03","IT2021-05-12-W19-137730.jpg","IT2021-05-12-W19-after-511143E5-123D-4022-80E7-51ED0BF0FECB.jpg","ศศิวิไล จันลือชัย","อิทธิพัทธ์ มณีกานต์กูล","CTW","0.00","2e34609794290a770cb0349119d78d21","2021-05-12","2021-05-12","23ae8fd2022f767f5c90728825132b90","15:37:12","15:47:29",NULL,"2021-07-01 00:00:48");
INSERT INTO problem_list VALUES(217,"IT2021-05-12-W20","58","1","cf4178eda791cfcbd3f20efe1a1ec35a",7,138,"รบกวนลบปุ่มโปรโมชั่นที่ไม่ได้ใช้งานค่ะ ","01-CTW-64-07-03","IT2021-05-12-W20-137735.jpg","IT2021-05-12-W20-after-511143E5-123D-4022-80E7-51ED0BF0FECB.jpg","ศศิวิไล จันลือชัย","อิทธิพัทธ์ มณีกานต์กูล","CTW","0.00","2e34609794290a770cb0349119d78d21","2021-05-12","2021-05-12","23ae8fd2022f767f5c90728825132b90","15:38:24","15:45:06",NULL,"2021-07-01 00:00:48");
INSERT INTO problem_list VALUES(218,"IT2021-05-13-W21","64","1","9cc29e8c2b924de0fd3ef55737a159c0",8,101,"ขอดูกล้องย้อนหลังวันที่ 12-5-64 เวลา 11.05-11.10 น. / 13.05 - 13.10 ( เนื่องจากตรวจสอบ)","ไม่มี",NULL,"IT2021-05-13-W21-after-Capture.JPG","พิชามญช์","พิชามญช์ อธิธรรมพิทักษ์","CRP","0.00","2e34609794290a770cb0349119d78d21","2021-05-13","2021-05-13","f21ada1d50ad6673ce1efb578513ead6","12:08:19","12:41:34",NULL,"2021-08-21 01:02:37");
INSERT INTO problem_list VALUES(219,"IT2021-05-14-W22","76","1","6809f49f86586a97cb888adc3119668b",7,138,"เพิ่มปุ๋มส่วนลด โปรโมชั่นของMOMO50% จากราคา 990  เหลือ 495 ขอบคุณค่ะ","15-NGS-63-07-001","IT2021-05-14-W22-20210514153604.jpg",NULL,"ปราจรีย์  เมรรัตน์","อิทธิพัทธ์  ","NGS","0.00","57995055c28df9e82476a54f852bd214","2021-05-14","2021-05-14","ce63f18f7cf0a712fd4a2f47bc9ae14c","15:41:52","15:47:51",NULL,"2021-07-01 00:00:48");
INSERT INTO problem_list VALUES(220,"IT2021-05-14-W23","73","1","451453af732f6b70835c9dcec5db3b93",2,144,"ขึ้นภาษาต่างด้าว","05-PMN-57-07-01","IT2021-05-14-W23-236556.jpg",NULL,"โยทะกา","จรินทร","TMK","0.00","2e34609794290a770cb0349119d78d21","2021-05-14","2021-05-14","f21ada1d50ad6673ce1efb578513ead6","15:45:15","11:27:13",NULL,"2021-08-19 09:38:04");
INSERT INTO problem_list VALUES(221,"IT2021-05-14-W24","75","1","3db564ba6fc573bad2628be5b7de4855",7,138,"รบกวนเพิ่มปุ่มไดฟุกุ ดาร์คช็อคโกแลต หน่อยค่ะ ","07-NEB-63-07-004",NULL,"IT2021-05-14-W24-after-Screenshot2021-05-14181855.png","จุฑามาศ","นายอิทธิพัทธ์  มณีกานต์กูล","NEB","0.00","2e34609794290a770cb0349119d78d21","2021-05-14","2021-05-14","23ae8fd2022f767f5c90728825132b90","17:19:18","18:20:26",NULL,"2021-07-01 00:00:48");
INSERT INTO problem_list VALUES(222,"IT2021-05-14-W25","76","1","6809f49f86586a97cb888adc3119668b",7,138,"เพิ่มปุ๋มไดโฟกุรสช็อกโกแลต ให้ด้วยค่ะ","15-NGS-63-07-001","IT2021-05-14-W25-20210514181347.jpg","IT2021-05-14-W25-after-Screenshot2021-05-14181855.png","ปราจรีย์ เมรรัตน์","อิทธิพัทธ์","NGS","0.00","2e34609794290a770cb0349119d78d21","2021-05-14","2021-05-14","23ae8fd2022f767f5c90728825132b90","18:17:23","18:19:33",NULL,"2021-07-01 00:00:48");
INSERT INTO problem_list VALUES(223,"IT2021-05-17-W26","2","1","ed6b1d41694cc31a1bc8a0f659d5faf7",2,101,"รีโมทใช้งานไม่ได้, รีโมทตัวที่ลงใหม่ ไม่ทราบรหัสผ่าน","ไม่มี","IT2021-05-17-W26-0000000000000000.jpg",NULL,"kampanart",NULL,"HO","0.00","2e34609794290a770cb0349119d78d21","2021-05-17","2021-05-17","5997108712eef9df6ecab22f1f3728f9","08:06:26","11:07:39",NULL,"2021-08-21 01:03:22");
INSERT INTO problem_list VALUES(224,"IT2021-05-17-W27","43","1","a60af60cc188e40bca694274e06eaf08",2,151,"หน้ารีโมทเข้าไม่ได้","ไม่มี","IT2021-05-17-W27-1621215107034.jpg","IT2021-05-17-W27-after-FCB34606-C130-449D-AA09-FB772BD99DD1.png","ศุภชัย หมื่นรัตน์","ศุภชัย หมื่นรัตน์","HO","0.00","2e34609794290a770cb0349119d78d21","2021-05-17","2021-05-18","f21ada1d50ad6673ce1efb578513ead6","08:36:29","09:37:16",NULL,"2021-08-21 01:31:53");
INSERT INTO problem_list VALUES(225,"IT2021-05-17-W28","59","1","b496e28463b931118820246a08cf9826",8,154,"ขอดูกล้องวงจรปิด ภายในครัว วันที่ 15-16/05/64","ไม่มี","IT2021-05-17-W28-170564-ดูกล้อง.pdf",NULL,"ณัฏฐดล กาฬวงศ์","คุณสุจิตรา เกษศิริ","CDC","0.00","57995055c28df9e82476a54f852bd214","2021-05-17","2021-05-20","5997108712eef9df6ecab22f1f3728f9","19:15:13","09:51:43",NULL,"2021-08-21 01:01:57");
INSERT INTO problem_list VALUES(226,"IT2021-05-18-W29","73","1","451453af732f6b70835c9dcec5db3b93",2,144,"ขึ่นภาษาต่างด้าว","21-TMK-62-07-12",NULL,"IT2021-05-18-W29-after-66D845B2-B75D-4E38-B551-FCC1D586EF2B.jpeg","โยทะกา","จรินทร","TMK","0.00","2e34609794290a770cb0349119d78d21","2021-05-18","2021-05-18","f21ada1d50ad6673ce1efb578513ead6","18:53:15","19:18:51",NULL,"2021-07-01 00:00:48");
INSERT INTO problem_list VALUES(227,"IT2021-05-19-W30","2","1","ed6b1d41694cc31a1bc8a0f659d5faf7",2,101,"หน้าร้านแสกนเอกสารให้แล้ว แต่ในคราวไม่ขึ้น","ไม่มี",NULL,"IT2021-05-19-W30-after-FFE4A3D0-43E7-4394-8370-71D5F8E9D825.jpeg","kampanart",NULL,"HO","0.00","2e34609794290a770cb0349119d78d21","2021-05-19","2021-05-19","f21ada1d50ad6673ce1efb578513ead6","09:14:21","11:03:16",NULL,"2021-08-21 01:03:24");
INSERT INTO problem_list VALUES(228,"IT2021-05-19-W31","73","1","451453af732f6b70835c9dcec5db3b93",1,3,"ปริ้นกระดาษไม่ออก","21-TMK-62-07-14",NULL,"IT2021-05-19-W31-after-69D17547-4172-4BC0-999D-23ED25283B57.jpeg","โยทะกา","จรินทร","TMK","0.00","2e34609794290a770cb0349119d78d21","2021-05-19","2021-05-19","f21ada1d50ad6673ce1efb578513ead6","12:30:39","12:50:24",NULL,"2021-07-01 00:00:48");
INSERT INTO problem_list VALUES(229,"IT2021-05-19-W32","1","1","6ccdcc01b4cbc496cab3ed0c7fb20cac",2,141,"เข้า cloud ไม่ได้ ไม่ connect","IT64/04",NULL,"IT2021-05-19-W32-after-1621412257659.jpg","นางสาวนรลักษณ์  พงศภัคสกุล","นางสาวนรลักษณ์  พงศภัคสกุล","kitchen controller","0.00","2e34609794290a770cb0349119d78d21","2021-05-19","2021-05-19","f21ada1d50ad6673ce1efb578513ead6","14:14:25","08:52:29",NULL,"2021-07-01 00:00:48");
INSERT INTO problem_list VALUES(230,"IT2021-05-20-W33","75","1","3db564ba6fc573bad2628be5b7de4855",2,154,"Nextcloud ไม่เชื่อมต่ออินเตอร์เน็ต","07-NEB-63-97-19","IT2021-05-20-W33-D1E41D95-F63F-4BDE-B860-05C433213760.jpeg","IT2021-05-20-W33-after-123456.JPG","เบญจา","นายอิทธิพัทธ์ มณีกานต์กูล","NEB","0.00","2e34609794290a770cb0349119d78d21","2021-05-20","2021-05-20","f21ada1d50ad6673ce1efb578513ead6","11:36:19","11:55:22",NULL,"2021-08-21 00:43:08");
INSERT INTO problem_list VALUES(231,"IT2021-05-20-W34","78","1","bfa7daa6736959ef0ec9b2ee01c1d656",2,110,"กรุณาติดตั้งโปรแกรม printer เพื่อให้สแกนเอกสารค่ะ","23-SCT-63-07-010",NULL,"IT2021-05-20-W34-after-image.jpg","กมลนัทธวรรณ",NULL,"SCT","0.00","2e34609794290a770cb0349119d78d21","2021-05-20","2021-05-20","f21ada1d50ad6673ce1efb578513ead6","18:33:31","19:40:22",NULL,"2021-07-01 00:00:48");
INSERT INTO problem_list VALUES(232,"IT2021-05-20-W35","75","1","3db564ba6fc573bad2628be5b7de4855",2,110,"รบกวนติดตั้งโปรแกรม printer เพื่อปริ๊น&amp;amp;แสกนเอกสารค่ะ (printer รุ่น Brother MFC-1810)","07-NEB-63-07-003","IT2021-05-20-W35-1.png","IT2021-05-20-W35-after-image.jpg","จุฑามาศ ครอบบัวบาน","นายอิทธิพัทธ์ มณีกานต์กูล","NEB","0.00","2e34609794290a770cb0349119d78d21","2021-05-20","2021-05-20","f21ada1d50ad6673ce1efb578513ead6","19:36:37","20:07:27",NULL,"2021-08-21 01:25:57");
INSERT INTO problem_list VALUES(233,"IT2021-05-22-W36","5","1","d3cea0a13419c7b7d226a432af757ca4",2,149,"เนื่องจาก WFH แล้วไม่สะดวกที่จะนำจอคอมมาจากที่บ้าน จึงจะขอยืมอุปกรณ์ &amp;quot;จอคอมฯ&amp;quot; วันที่ 24/05/2564","ไม่มี",NULL,NULL,"ชนกนันท์",NULL,"HO","0.00","2e34609794290a770cb0349119d78d21","2021-05-22","2021-05-24","ce63f18f7cf0a712fd4a2f47bc9ae14c","10:43:00","10:35:48",NULL,"2021-08-21 01:09:20");
INSERT INTO problem_list VALUES(234,"IT2021-05-22-W37","5","1","d3cea0a13419c7b7d226a432af757ca4",2,142,"ต้องการที่จะส่งออกข้อมูล แต่ว่าใช้เวลานานกว่าปกติ 10-30 นาที ต่อ 1 ไฟล์ ไม่ได้เป็นแค่ที่ HO แต่ได้รับแจ้งจากทางสาขาด้วย ","ไม่มี","IT2021-05-22-W37-ส่งออกข้อมูล.jpg","IT2021-05-22-W37-after-Capture.JPG","ชนกนันท์",NULL,"HO","0.00","2e34609794290a770cb0349119d78d21","2021-05-22","2021-05-24","f21ada1d50ad6673ce1efb578513ead6","12:37:53","09:06:27",NULL,"2021-08-21 01:09:22");
INSERT INTO problem_list VALUES(235,"IT2021-05-22-W38","63","1","9aa946d6abfcb4cfc9ee258593eff00f",7,138,"ไม่สามารถกดส่วนลด5% ของ CITY BANK ได้ ทั้งที่ยอดลูกค้า2600 บาท","ไม่มี",NULL,"IT2021-05-22-W38-after-C9783010-B22A-4738-861A-8560413C1DA9.png","ณัฐพล","กาญจนา บรรเรียนกิจ","CBN","0.00","2e34609794290a770cb0349119d78d21","2021-05-22","2021-05-22","11c0009be8f4e977c6998edce04c9b2e","13:55:07","22:48:55",NULL,"2021-08-21 01:02:33");
INSERT INTO problem_list VALUES(236,"IT2021-05-22-W39","68","1","cec9ac90af27b74546e22910bdc5bfff",1,1,"โน๊ตบุ้คค้างบ่อยมากค่ะ เชื่อมเน็ตขึ้นแต่โหมเครื่องบินค่ะ รบกวนเช็คให้ด้วยนะคะ","14-CPK-60-07-02",NULL,"IT2021-05-22-W39-after-Capture.JPG","ซายน์","ศร","CPK","0.00","2e34609794290a770cb0349119d78d21","2021-05-22","2021-05-22","f21ada1d50ad6673ce1efb578513ead6","14:02:10","14:26:38",NULL,"2021-08-21 01:29:24");
INSERT INTO problem_list VALUES(237,"IT2021-05-22-W40","64","1","9cc29e8c2b924de0fd3ef55737a159c0",2,141,"รบกวนอัพเดท next Clound ค่ะ ไม่ซิงค์ เข้า โปรแกรม เซล ไม่ได้ค่ะ ","09-CRP-07-001 ","IT2021-05-22-W40-20210522213808.jpg","IT2021-05-22-W40-after-Capture.JPG","ชนัดท์ดา ","พิชามญช์ อธิธรรมพิทักษ์ ","CRP ","0.00","2e34609794290a770cb0349119d78d21","2021-05-22","2021-05-22","f21ada1d50ad6673ce1efb578513ead6","21:57:22","22:28:39",NULL,"2021-07-01 00:00:48");
INSERT INTO problem_list VALUES(238,"IT2021-05-22-W41","45","1","ce63f18f7cf0a712fd4a2f47bc9ae14c",7,138,"ปุ่มกดชื่อผิด","ไม่มี",NULL,"IT2021-05-22-W41-after-AFB0D0A8-B08D-4D21-B611-95DBB8DF2566.png","KIK IT (แจ้งแทน)","คุณตุ๊กตา SV","CDC","0.00","2e34609794290a770cb0349119d78d21","2021-05-22","2021-05-22","11c0009be8f4e977c6998edce04c9b2e","22:36:47","22:50:28",NULL,"2021-08-21 01:01:22");
INSERT INTO problem_list VALUES(239,"IT2021-05-23-W42","67","1","9fe4987d685fcbff9b1a3011cdd12b35",7,138,"เมนูเสริมแบบใหม่ คีย์แล้วบิลไม่ออกในครัว","ไม่มี","IT2021-05-23-W42-S6283346.jpg","IT2021-05-23-W42-after-S10403845.jpg","อนันต์ยศ จ้อยช้างเนียม","กาญจนา บรรเรียนกิจ","SCQ","0.00","2e34609794290a770cb0349119d78d21","2021-05-23","2021-05-24","ce63f18f7cf0a712fd4a2f47bc9ae14c","17:00:59","10:01:22",NULL,"2021-08-21 01:01:25");
INSERT INTO problem_list VALUES(240,"IT2021-05-23-W43","59","1","b496e28463b931118820246a08cf9826",7,138,"1.กดรวมโต๊ะแล้วเด้งออกให้ใส่รหัสเข้าใช้งานใหม่ พอเข้าไปอีกครั้งแล้วโต๊ะนั้นหายไป ต้องคีย์บิลเปิดโต๊ะใหม่
2.กดรวมโต๊ะ จาก 4 เป็น 1 โต๊ะแล้วเด้งกลายเป็น 2 โต๊ะ","ไม่มี",NULL,"IT2021-05-23-W43-after-1621825464675.jpg","สาริญา ดาโฉม","คุณสุจิตรา เกษศิริ","CDC","0.00","2e34609794290a770cb0349119d78d21","2021-05-23","2021-06-05","11c0009be8f4e977c6998edce04c9b2e","17:17:45","16:01:03",NULL,"2021-08-21 01:02:01");
INSERT INTO problem_list VALUES(241,"IT2021-05-24-W44","18","1","d5b14c346b88725387c282ac7b851ad8",2,151,"ใช้ PO Form Master ไม่ได้","ไม่มี",NULL,"IT2021-05-24-W44-after-Capture.JPG","รุ่งทิวารัตน์",NULL,"HO","0.00","2e34609794290a770cb0349119d78d21","2021-05-24","2021-05-24","f21ada1d50ad6673ce1efb578513ead6","08:23:43","08:48:59",NULL,"2021-08-21 01:05:50");
INSERT INTO problem_list VALUES(242,"IT2021-05-24-W45","2","1","ed6b1d41694cc31a1bc8a0f659d5faf7",2,101,"เปิดไฟล์ Payin สาขา CBN  210564 ใน Cloud ไม่ได้ ","ไม่มี","IT2021-05-24-W45-2105cbn.jpg","IT2021-05-24-W45-after-Capture.JPG","กระแต",NULL,"HO","0.00","2e34609794290a770cb0349119d78d21","2021-05-24","2021-05-24","f21ada1d50ad6673ce1efb578513ead6","09:54:40","10:29:58",NULL,"2021-08-21 01:18:44");
INSERT INTO problem_list VALUES(243,"IT2021-05-24-W46","2","1","ed6b1d41694cc31a1bc8a0f659d5faf7",2,151,"Print ฟร์อม Voucher แสดงรายละเอียด ไม่ได้ค่ะ","ไม่มี","IT2021-05-24-W46-B50F26ED-AF00-4E38-B156-8A140D8C5975.jpeg","IT2021-05-24-W46-after-Capture.JPG","อิม",NULL,"HO","0.00","2e34609794290a770cb0349119d78d21","2021-05-24","2021-05-24","f21ada1d50ad6673ce1efb578513ead6","10:05:07","10:21:37",NULL,"2021-08-21 01:05:52");
INSERT INTO problem_list VALUES(244,"IT2021-05-24-W47","1","1","6ccdcc01b4cbc496cab3ed0c7fb20cac",8,154,"ขอดูกล้องวงจรปิด เนื่องจาก มีอุปกรณ์เสียหาย อาจเกิดจากซัพ","ไม่มี","IT2021-05-24-W47-1621831238153.jpg","IT2021-05-24-W47-after-1621846136198.jpg","ปวีณา หุ่นเขียว",NULL,"CR3","0.00","2e34609794290a770cb0349119d78d21","2021-05-24","2021-05-24","f21ada1d50ad6673ce1efb578513ead6","11:50:16","16:03:00",NULL,"2021-08-21 01:02:39");
INSERT INTO problem_list VALUES(245,"IT2021-05-24-W48","60","1","b17177683249bb2cda3472e14d984e60",2,140,"winspeed ค้าง ค่ะ ","ไม่มี",NULL,"IT2021-05-24-W48-after-Capture.JPG","ธัญสุดา จันทร์ดวง","ศิริพงษ์","T21","0.00","2e34609794290a770cb0349119d78d21","2021-05-24","2021-05-24","f21ada1d50ad6673ce1efb578513ead6","14:57:14","15:11:26",NULL,"2021-07-01 00:00:48");
INSERT INTO problem_list VALUES(246,"IT2021-05-24-W49","76","1","6809f49f86586a97cb888adc3119668b",1,109,"เม้าใช้กับโนน๊คบุต 1 อัน","ไม่มี","IT2021-05-24-W49-C1F3F6FF-448D-4A1A-AB68-4509241029C8.png",NULL,"จุรีมาศ","อิทธิพัทธิ","NGS","0.00","2e34609794290a770cb0349119d78d21","2021-05-24","2021-05-24","f21ada1d50ad6673ce1efb578513ead6","17:19:51","17:47:01",NULL,"2021-08-21 01:01:27");
INSERT INTO problem_list VALUES(247,"IT2021-05-25-W50","18","1","d5b14c346b88725387c282ac7b851ad8",2,154,"ปริ้น form Voucher แสดงรายละเอียดไม่ได้","ไม่มี","IT2021-05-25-W50-1621908703611.jpg","IT2021-05-25-W50-after-Capture.JPG","อุษา",NULL,"HO","0.00","2e34609794290a770cb0349119d78d21","2021-05-25","2021-05-25","f21ada1d50ad6673ce1efb578513ead6","09:14:56","09:23:35",NULL,"2021-08-21 01:05:05");
INSERT INTO problem_list VALUES(248,"IT2021-05-25-W51","60","1","b17177683249bb2cda3472e14d984e60",7,11,"คีย์ออเดอเข้าระบบแต่ขึ้นเป็นอีกรหัสนึงที่ไม่ใช่รหัสพนักงานสาขาt21 ทำให้ปริ้นบิลไม่ได้","ไม่มี","IT2021-05-25-W51-1621916918987-1165146498.jpg",NULL,"ปุณญนุช","ศิริพงษ์","T21","0.00","2e34609794290a770cb0349119d78d21","2021-05-25","2021-05-26","ce63f18f7cf0a712fd4a2f47bc9ae14c","11:31:33","19:42:30",NULL,"2021-08-21 00:44:08");
INSERT INTO problem_list VALUES(249,"IT2021-05-25-W52","60","1","b17177683249bb2cda3472e14d984e60",2,140,"winspeed ค้างต้องออกและเข้าหลายรอบค่ะ","ไม่มี",NULL,"IT2021-05-25-W52-after-Capture.JPG","ปุณญนุช","ศิริพงษ์","T21","0.00","2e34609794290a770cb0349119d78d21","2021-05-25","2021-05-25","f21ada1d50ad6673ce1efb578513ead6","13:32:28","14:07:02",NULL,"2021-07-01 00:00:48");
INSERT INTO problem_list VALUES(250,"IT2021-05-25-W53","67","1","9fe4987d685fcbff9b1a3011cdd12b35",2,141,"Nexcloud ไม่ sync ","ไม่มี","IT2021-05-25-W53-1621932306097.jpg","IT2021-05-25-W53-after-Capture.JPG","อนันต์ยศ จ้อยช้างเนียม","กาญจนา บรรเรียนกิจ","SCQ","0.00","2e34609794290a770cb0349119d78d21","2021-05-25","2021-05-25","f21ada1d50ad6673ce1efb578513ead6","15:45:48","15:52:09",NULL,"2021-08-21 01:01:32");
INSERT INTO problem_list VALUES(251,"IT2021-05-25-W54","68","1","cec9ac90af27b74546e22910bdc5bfff",2,148,"ไอแพดช้า และอืดมากค่ะ ต้องอัพเดตios รึป่าวคะ","14-CPK-63-07-004",NULL,NULL,"ซายน์","ศร","CPK","0.00","2e34609794290a770cb0349119d78d21","2021-05-25","2021-05-25","f21ada1d50ad6673ce1efb578513ead6","17:41:29","19:29:57",NULL,"2021-08-21 01:29:43");
INSERT INTO problem_list VALUES(252,"IT2021-05-28-W55","43","1","6134ff997b6f5c7e403dc701c7b2cec9",7,138,"ลบเมนูที่หมดโปรโมชั่นแล้ว","ไม่มี","IT2021-05-28-W55-S960195.jpg",NULL,"ไพบูลย์","ไพบูลย์","เฉพาะโมโมพาราไดซ์ Standard","0.00","2e34609794290a770cb0349119d78d21","2021-05-28","2021-05-28","5997108712eef9df6ecab22f1f3728f9","14:42:27","17:12:32",NULL,"2021-08-21 01:01:29");
INSERT INTO problem_list VALUES(253,"IT2021-05-28-W56","2","1","ed6b1d41694cc31a1bc8a0f659d5faf7",2,110,"ติดตั้งโปรแกรม JAVA ใช้ในการยื่นงบ","ไม่มี",NULL,"IT2021-05-28-W56-after-Capture.JPG","ชฎาพร พรหมวิชัย",NULL,"HO","0.00","2e34609794290a770cb0349119d78d21","2021-05-28","2021-05-28","f21ada1d50ad6673ce1efb578513ead6","14:50:12","14:57:24",NULL,"2021-08-21 01:05:03");
INSERT INTO problem_list VALUES(254,"IT2021-05-28-W57","43","1","6134ff997b6f5c7e403dc701c7b2cec9",7,138,"ลบเมนูซอสเมนซึยุ(Mentsuyu)","ไม่มี","IT2021-05-28-W57-S960199.jpg",NULL,"ไพบูลย์","ไพบูลย์","ทุกสาขา Mo-Mo-Paradise Standard","0.00","2e34609794290a770cb0349119d78d21","2021-05-28","2021-05-28","5997108712eef9df6ecab22f1f3728f9","14:55:41","17:11:54",NULL,"2021-08-21 01:01:34");
INSERT INTO problem_list VALUES(255,"IT2021-05-30-W58","69","1","859cd041e3fe84e5e65b5c178452841f",2,144,"ภาษา ต่างด้าว ในระบบ winspeed และตัวโปรแกรม ออฟฟิศอื่นๆ","ไม่มี",NULL,NULL,"Wacharapon","Kanchana","MGB","0.00","2e34609794290a770cb0349119d78d21","2021-05-30","2021-05-31","f21ada1d50ad6673ce1efb578513ead6","19:09:06","08:37:13",NULL,"2021-08-21 01:01:36");
INSERT INTO problem_list VALUES(256,"IT2021-05-30-W59","69","1","859cd041e3fe84e5e65b5c178452841f",2,3,"ใช้คอมสำลอง ไม่เชื่อมต่อกับ เครื่องปริ้นของร้านรุ่น DCP-1510","ไม่มี",NULL,NULL,"Wacharapon","Kanchana","MGB","0.00","2e34609794290a770cb0349119d78d21","2021-05-30","2021-05-31","f21ada1d50ad6673ce1efb578513ead6","19:10:45","08:37:36",NULL,"2021-08-21 00:58:23");
INSERT INTO problem_list VALUES(257,"IT2021-05-30-W60","80","1","fc9c93f00e53b47b7bf01b72cd6180bd",7,130,"ส่วนลดของ Value set สำหรับพนักงานลดไม่ได้ค่ะ ","26-CLP-64-07-02",NULL,NULL,"สุชัญญา","คุณณิชนันทน์ ","CLP ","0.00","57995055c28df9e82476a54f852bd214","2021-05-30","2021-05-31","ce63f18f7cf0a712fd4a2f47bc9ae14c","19:21:02","10:29:52",NULL,"2021-07-01 00:00:48");
INSERT INTO problem_list VALUES(258,"IT2021-05-31-W61","2","1","ed6b1d41694cc31a1bc8a0f659d5faf7",1,1,"คอมดับเอง บ่อยครั้ง","ไม่มี","IT2021-05-31-W61-S9633795.jpg",NULL,"วรากรณ์",NULL,"HO","0.00","2e34609794290a770cb0349119d78d21","2021-05-31","2021-06-02","f21ada1d50ad6673ce1efb578513ead6","13:41:53","13:29:45",NULL,"2021-08-21 00:58:26");
INSERT INTO problem_list VALUES(259,"IT2021-05-31-W62","72","1","7611717e7dfb53c91a776dcd505f9802",8,152,"ขอดูกล้องหน้าร้านเนื่องจากประตูหน้าร้านพังเรื่องจากมีคนเข้ามาและไม่ได้นำแท่นวางของออก ช่วงเวลา 08:00-10:00 ทำให้ประตูดสียหาย","ไม่มี","IT2021-05-31-W62-1AB5E5E8-8CA8-4B54-B1D5-207737AB271A.MOV",NULL,"จักรพันธ์","พิชามญช์ อธิธรรมพิทักษ์","SCP","0.00","57995055c28df9e82476a54f852bd214","2021-05-31","2021-05-31","f21ada1d50ad6673ce1efb578513ead6","13:59:32","14:57:15",NULL,"2021-08-21 00:58:28");
INSERT INTO problem_list VALUES(260,"IT2021-05-31-W63","72","1","7611717e7dfb53c91a776dcd505f9802",8,152,"ขอดูกล้องหน้าร้านเนื่องจากประตูหน้าร้านพังเรื่องจากมีคนเข้ามาและไม่ได้นำแท่นวางของออกวันที่ 30/05/64 ช่วงเวลา 08:00-10:00 ทำให้ประตูดสียหาย","ไม่มี","IT2021-05-31-W63-1AB5E5E8-8CA8-4B54-B1D5-207737AB271A.MOV","IT2021-05-31-W63-after-Capture.JPG","จักรพันธ์","พิชามญช์ อธิธรรมพิทักษ์","SCP","0.00","2e34609794290a770cb0349119d78d21","2021-05-31","2021-05-31","f21ada1d50ad6673ce1efb578513ead6","14:01:40","14:56:50",NULL,"2021-08-21 00:58:30");
INSERT INTO problem_list VALUES(261,"IT2021-05-31-W64","68","1","cec9ac90af27b74546e22910bdc5bfff",8,154,"ขอดูกล้องวงจรปิด วันที่1-10 พฤษภาคม","ไม่มี",NULL,"IT2021-05-31-W64-after-Capture.JPG","แคร์","ศร","CPK ","0.00","2e34609794290a770cb0349119d78d21","2021-05-31","2021-06-01",NULL,"15:13:56","12:52:48",NULL,"2021-08-21 01:03:26");
INSERT INTO problem_list VALUES(262,"IT2021-05-31-W65","75","1","3db564ba6fc573bad2628be5b7de4855",7,127,"ระบบ food story ขึ้น connection fail และไม่สามารถเชื่อมต่อฐานข้อมูลได้","07-NEB-63-07-004","IT2021-05-31-W65-S60063749.jpg",NULL,"จุฑามาศ ครอบบัวบาน","นายอิทธิพัทธ์ มณีกานต์กูล","NEB","0.00","2e34609794290a770cb0349119d78d21","2021-05-31","2021-06-07","ce63f18f7cf0a712fd4a2f47bc9ae14c","19:27:51","10:36:29",NULL,"2021-08-21 01:25:54");
INSERT INTO problem_list VALUES(263,"IT2021-05-31-W66","67","1","9fe4987d685fcbff9b1a3011cdd12b35",1,9,"ใช้งานผ่านสายแลนไม่ได้","ไม่มี",NULL,NULL,"อนันต์ยศ จ้อยช้างเนียม","กาญจนา บรรเรียนกิจ","SCQ","0.00","2e34609794290a770cb0349119d78d21","2021-05-31","2021-06-01","f21ada1d50ad6673ce1efb578513ead6","19:29:56","10:38:37",NULL,"2021-08-21 00:58:33");
INSERT INTO problem_list VALUES(264,"IT2021-06-01-W01","70","1","b29017088b3135c435f9c7912ec2cdb2",2,110,"Application Line Man ค้างหน้านี้เข้าไม่ได้เลยครับ","ไม่มี","IT2021-06-01-W01-43398.jpg",NULL,"วัชระ คำมิ่ง","ศร สมพีร์วงศ์","CR3","0.00","2e34609794290a770cb0349119d78d21","2021-06-01","2021-06-04","ce63f18f7cf0a712fd4a2f47bc9ae14c","13:08:12","16:11:12",NULL,"2021-08-21 01:03:30");
INSERT INTO problem_list VALUES(265,"IT2021-06-01-W02","74","1","06ac11af0ac13b221a953bfb54ecaa92",2,6,"Excel ใช้งานไม่ได้ค่ะ ","22-CCW-62-07-10",NULL,"IT2021-06-01-W02-after-Capture.JPG","คณิตศร","ศิริพงษ์","CCW","0.00","2e34609794290a770cb0349119d78d21","2021-06-01","2021-06-01","f21ada1d50ad6673ce1efb578513ead6","16:23:29","16:37:08",NULL,"2021-07-01 00:00:48");
INSERT INTO problem_list VALUES(266,"IT2021-06-02-W03","2","1","ed6b1d41694cc31a1bc8a0f659d5faf7",2,6,"Excel ใช้งานไม่ได้","ไม่มี",NULL,NULL,"นิสาชล แสงทอง",NULL,"HO","0.00","2e34609794290a770cb0349119d78d21","2021-06-02","2021-06-02","f21ada1d50ad6673ce1efb578513ead6","11:36:05","13:32:08",NULL,"2021-08-21 01:04:17");
INSERT INTO problem_list VALUES(267,"IT2021-06-02-W04","71","1","79ba10e5305e95e757761317a07fca37",2,151,"ไฟลล์ เอกสารของสาขา หายหมดเลยค่ะ มีเป็นของสาขาอื่นเข้ามาแทนที่ค่ะ ","ไม่มี",NULL,NULL,"สุนิสา",NULL,"ICS","0.00","2e34609794290a770cb0349119d78d21","2021-06-02","2021-06-07","f21ada1d50ad6673ce1efb578513ead6","22:07:11","10:57:33",NULL,"2021-08-21 01:02:06");
INSERT INTO problem_list VALUES(268,"IT2021-06-03-W05","60","1","b17177683249bb2cda3472e14d984e60",7,151," ออเดอร์เดลิเวอรี่ ออกเครื่องปริ้นแคชเชียค่ะ","ไม่มี",NULL,NULL,"ปุณญนุช","ศิริพงษ์","T21","0.00","2e34609794290a770cb0349119d78d21","2021-06-03","2021-06-04","5997108712eef9df6ecab22f1f3728f9","11:21:34","10:02:12",NULL,"2021-08-21 00:45:50");
INSERT INTO problem_list VALUES(269,"IT2021-06-04-W06","2","1","ed6b1d41694cc31a1bc8a0f659d5faf7",2,151,"Print Form Voucher แสดงรายละเอียด ไม่ได้","ไม่มี",NULL,"IT2021-06-04-W06-after-Capture.JPG","อิม",NULL,"HO","0.00","2e34609794290a770cb0349119d78d21","2021-06-04","2021-06-04","f21ada1d50ad6673ce1efb578513ead6","10:55:01","11:21:32",NULL,"2021-08-21 01:05:47");
INSERT INTO problem_list VALUES(270,"IT2021-06-04-W07","2","1","ed6b1d41694cc31a1bc8a0f659d5faf7",1,154,"เชื่อมต่อเครื่องปริ้นเล็ก","ไม่มี",NULL,"IT2021-06-04-W07-after-Capture.PNG","ชฎาพร พรหมวิชัย",NULL,"HO","0.00","2e34609794290a770cb0349119d78d21","2021-06-04","2021-06-04","f21ada1d50ad6673ce1efb578513ead6","14:05:22","14:12:03",NULL,"2021-08-21 01:04:25");
INSERT INTO problem_list VALUES(271,"IT2021-06-04-W08","67","1","9fe4987d685fcbff9b1a3011cdd12b35",2,141,"Cloud ไม่ Sync","ไม่มี",NULL,"IT2021-06-04-W08-after-Capture.PNG","อนันต์ยศ จ้อยช้างเนียม","กาญจนา บรรเรียนกิจ","SCQ","0.00","2e34609794290a770cb0349119d78d21","2021-06-04","2021-06-04","f21ada1d50ad6673ce1efb578513ead6","15:20:24","15:35:17",NULL,"2021-08-21 00:58:35");
INSERT INTO problem_list VALUES(272,"IT2021-06-05-W09","67","1","9fe4987d685fcbff9b1a3011cdd12b35",2,141,"Cloud ไม่ Sync ข้อมูล","ไม่มี",NULL,"IT2021-06-05-W09-after-Capture.JPG","อนันต์ยศ จ้อยช้างเนียม","กาญจนา บรรเรียนกิจ","SCQ","0.00","2e34609794290a770cb0349119d78d21","2021-06-05","2021-06-07","f21ada1d50ad6673ce1efb578513ead6","15:58:34","10:50:11",NULL,"2021-08-21 00:58:39");
INSERT INTO problem_list VALUES(273,"IT2021-06-06-W10","60","1","b17177683249bb2cda3472e14d984e60",2,140,"winspeedค้างบ่อยค่ะ ","ไม่มี",NULL,"IT2021-06-06-W10-after-Capture.JPG","ปุณญนุช","ศิริพงษ์","T21","0.00","2e34609794290a770cb0349119d78d21","2021-06-06","2021-06-07","f21ada1d50ad6673ce1efb578513ead6","17:40:20","11:51:58",NULL,"2021-07-01 00:00:48");
INSERT INTO problem_list VALUES(274,"IT2021-06-06-W11","70","1","b29017088b3135c435f9c7912ec2cdb2",7,131,"ปุ่มเดลิ ในช่องของชาบูไม่มีปุ่ม Shabu Aus-Us ค่ะ","17-CR3-61-07-01(04)",NULL,NULL,"มณฑ์ณลิน","ศร สมพีร์วงศ์","CR3","0.00","2e34609794290a770cb0349119d78d21","2021-06-06","2021-06-07","5997108712eef9df6ecab22f1f3728f9","17:52:55","09:21:38",NULL,"2021-07-01 00:00:48");
INSERT INTO problem_list VALUES(275,"IT2021-06-07-W12","2","1","ed6b1d41694cc31a1bc8a0f659d5faf7",2,146,"โปรแกรม Winspeed ค้างค่ะ","ไม่มี",NULL,"IT2021-06-07-W12-after-Capture.JPG","กระแต",NULL,"HO","0.00","2e34609794290a770cb0349119d78d21","2021-06-07","2021-06-07","f21ada1d50ad6673ce1efb578513ead6","10:31:04","10:42:49",NULL,"2021-08-21 01:14:52");
INSERT INTO problem_list VALUES(276,"IT2021-06-07-W13","68","1","cec9ac90af27b74546e22910bdc5bfff",7,138,"ตอนกลางคืนปิดรอบขายไมาสำเร็จ จึงทำให้ต้องปิดรอบขายใหม่ตอนเช้าค่ะ","ไม่มี","IT2021-06-07-W13-DA101832-6768-4AC5-A297-311121C78B79.jpeg",NULL,"แคร์","ศร","CPK ","0.00","2e34609794290a770cb0349119d78d21","2021-06-07","2021-06-08","5997108712eef9df6ecab22f1f3728f9","12:10:07","16:15:25",NULL,"2021-08-21 01:03:28");
INSERT INTO problem_list VALUES(277,"IT2021-06-08-W14","5","1","d3cea0a13419c7b7d226a432af757ca4",2,3,"เครื่อง Samsung ปริ้นไม่ออก","ไม่มี",NULL,"IT2021-06-08-W14-after-91A03CD7-D1B5-4A85-801E-3EB2E19E3849.jpeg","พรกมล",NULL,"HO","0.00","2e34609794290a770cb0349119d78d21","2021-06-08","2021-06-08","f21ada1d50ad6673ce1efb578513ead6","09:25:55","10:07:56",NULL,"2021-08-21 01:07:06");
INSERT INTO problem_list VALUES(278,"IT2021-06-08-W15","67","1","9fe4987d685fcbff9b1a3011cdd12b35",2,141,"Cloud ไม่ Sync ข้อมูล","ไม่มี",NULL,"IT2021-06-08-W15-after-Capture.JPG","อนันต์ยศ จ้อยช้างเนียม","กาญจนา บรรเรียนกิจ","SCQ","0.00","2e34609794290a770cb0349119d78d21","2021-06-08","2021-06-08","f21ada1d50ad6673ce1efb578513ead6","15:47:31","16:08:59",NULL,"2021-08-21 00:58:41");
INSERT INTO problem_list VALUES(279,"IT2021-06-08-W16","60","1","b17177683249bb2cda3472e14d984e60",2,151,"โปรแกรมหน้าdesktop หายทั้งหมด","ไม่มี",NULL,NULL,"ปุณญนุช","ศิริพงษ์","T21","0.00","2e34609794290a770cb0349119d78d21","2021-06-08","2021-06-10","5997108712eef9df6ecab22f1f3728f9","19:24:42","13:44:16",NULL,"2021-07-01 00:00:48");
INSERT INTO problem_list VALUES(280,"IT2021-06-09-W17","68","1","cec9ac90af27b74546e22910bdc5bfff",3,9,"รบกวนเช็คไอแพดเครื่องลูก2เครื่อง เชื่อมสัญญาณเน็ตไม่ได้เลยค่ะ ขอบคุณมากนะคะ","ไม่มี",NULL,NULL,"ซายน์","ศร","CPK","0.00","2e34609794290a770cb0349119d78d21","2021-06-09","2021-06-09","5997108712eef9df6ecab22f1f3728f9","11:02:51","16:39:17",NULL,"2021-08-21 01:03:34");
INSERT INTO problem_list VALUES(281,"IT2021-06-09-W18","68","1","cec9ac90af27b74546e22910bdc5bfff",2,110,"รบกวนติดตั้งเครื่องปริ้นให้ด้วยนะคะ","14-CPK-60-07-02",NULL,NULL,"ซายน์","ศร","CPK","0.00","2e34609794290a770cb0349119d78d21","2021-06-09","2021-06-09","5997108712eef9df6ecab22f1f3728f9","12:05:13","16:39:41",NULL,"2021-08-21 01:29:05");
INSERT INTO problem_list VALUES(282,"IT2021-06-10-W19","68","1","cec9ac90af27b74546e22910bdc5bfff",2,154,"รบกวนช่วยเช็ตรหัสผ่าน เว็บแก้กะให้หนูหน่อยค่า","14-CPK-60-07-02",NULL,NULL,"ซายน์","ศร","CPK","0.00","2e34609794290a770cb0349119d78d21","2021-06-10","2021-06-10","f21ada1d50ad6673ce1efb578513ead6","10:15:27","10:48:18",NULL,"2021-08-21 01:29:12");
INSERT INTO problem_list VALUES(283,"IT2021-06-10-W20","68","1","cec9ac90af27b74546e22910bdc5bfff",3,9,"เครื่องลูกไม่สามารถเชื่อมเน็ตได้ค่ะ","ไม่มี",NULL,"IT2021-06-10-W20-after-A74BAB2B-9103-403A-8CE7-2E048083F611.jpeg","ซายน์","ศร","CPK","0.00","2e34609794290a770cb0349119d78d21","2021-06-10","2021-06-10","f21ada1d50ad6673ce1efb578513ead6","10:51:37","12:32:03",NULL,"2021-08-21 01:03:36");
INSERT INTO problem_list VALUES(284,"IT2021-06-10-W21","64","1","9cc29e8c2b924de0fd3ef55737a159c0",2,110,"ไฟล์ Pay-In หาย จากคลาวน์ ค่ะ รบกวนตรวจสอบให้ด้วยค่ะ ","09-CRP-07-001 ",NULL,"IT2021-06-10-W21-after-Capture.JPG","ชนัดท์ดา ","พิชามญช์ อธิธรรมพิทักษ์ ","CRP ","0.00","2e34609794290a770cb0349119d78d21","2021-06-10","2021-06-10","f21ada1d50ad6673ce1efb578513ead6","13:26:56","14:26:13",NULL,"2021-07-01 00:00:48");
INSERT INTO problem_list VALUES(285,"IT2021-06-11-W22","5","1","d3cea0a13419c7b7d226a432af757ca4",2,142,"เครื่องสแกนนิ้วไม่ออนไลน์","ไม่มี","IT2021-06-11-W22-สถานะไม่ออนไลน์.jpg",NULL,"ฟ้า",NULL,"HO","0.00","2e34609794290a770cb0349119d78d21","2021-06-11","2021-06-11","5997108712eef9df6ecab22f1f3728f9","11:53:47","13:55:27",NULL,"2021-08-21 01:07:14");
INSERT INTO problem_list VALUES(286,"IT2021-06-11-W23","68","1","cec9ac90af27b74546e22910bdc5bfff",2,124,"เครื่องสแกนนิ้วใช้งานไม่ได้ค่ะ ลายสแกนไม่ขึ้นค่ะ รบกวนเช็คสัญญาณให้หน่อยค่า","14-CPK-60-06-02",NULL,NULL,"ซายน์","ศร","CPK","0.00","2e34609794290a770cb0349119d78d21","2021-06-11","2021-06-11","5997108712eef9df6ecab22f1f3728f9","12:59:29","13:59:13",NULL,"2021-08-21 01:28:57");
INSERT INTO problem_list VALUES(287,"IT2021-06-11-W24","69","1","859cd041e3fe84e5e65b5c178452841f",2,143,"Please set Outlook and Scanner ","ไม่มี",NULL,NULL,"Wacharapon","Kanchana","MGB","0.00","2e34609794290a770cb0349119d78d21","2021-06-11","2021-06-11","5997108712eef9df6ecab22f1f3728f9","16:37:38","17:12:42",NULL,"2021-08-21 00:58:44");
INSERT INTO problem_list VALUES(288,"IT2021-06-11-W25","69","1","859cd041e3fe84e5e65b5c178452841f",2,140,"Winspeed Report ไม่มีรายละเอียดครับ","ไม่มี",NULL,"IT2021-06-11-W25-after-AF238AE7-0A73-4CE2-8C1D-7885FC184991.jpeg","Wacharapon","Kanchana","MGB","0.00","2e34609794290a770cb0349119d78d21","2021-06-11","2021-06-11","f21ada1d50ad6673ce1efb578513ead6","18:56:50","13:55:17",NULL,"2021-08-21 00:58:46");
INSERT INTO problem_list VALUES(289,"IT2021-06-11-W26","60","1","b17177683249bb2cda3472e14d984e60",2,141,"คลาวขึ้นขึ้นข้อมูลสาขาอื่น","ไม่มี","IT2021-06-11-W26-1623414052045-156405103.jpg","IT2021-06-11-W26-after-Capture.JPG","ปุณญนุช","ศิริพงษ์","T21","0.00","2e34609794290a770cb0349119d78d21","2021-06-11","2021-06-11","f21ada1d50ad6673ce1efb578513ead6","19:21:24","20:39:58",NULL,"2021-07-01 00:00:48");
INSERT INTO problem_list VALUES(290,"IT2021-06-12-W27","58","1","cf4178eda791cfcbd3f20efe1a1ec35a",1,3,"เครื่องปริ้นต์ปริ้นไม่ออก และคอมพิวเตอร์ไม่อ่านสายเครื่องปริ้นต์ทั้ง 2 เครื่อง","01-CTW-61-07-11","IT2021-06-12-W27-146010.jpg",NULL,"ศศิวิไล จันลือชัย","อิทธิพัทธ์ มณีกานต์กูล","CTW","0.00","2e34609794290a770cb0349119d78d21","2021-06-12","2021-06-14","f21ada1d50ad6673ce1efb578513ead6","20:24:59","13:33:59",NULL,"2021-07-01 00:00:48");
INSERT INTO problem_list VALUES(291,"IT2021-06-13-W28","60","1","b17177683249bb2cda3472e14d984e60",2,8,"โปรแกรม Time เข้าไม่ได้ค่ะ","ไม่มี",NULL,NULL,"ปุณญนุช จันทร","ศิริพงษ์","T21","0.00","2e34609794290a770cb0349119d78d21","2021-06-13","2021-06-13","5997108712eef9df6ecab22f1f3728f9","18:44:49","08:35:39",NULL,"2021-07-01 00:00:48");
INSERT INTO problem_list VALUES(292,"IT2021-06-14-W29","18","1","d5b14c346b88725387c282ac7b851ad8",2,141,"cloud invoice สาขา MBP วันที่ 01-05 /06 ไม่พบไฟล์สแกน","ไม่มี","IT2021-06-14-W29-MBP.jpg","IT2021-06-14-W29-after-1623641481027.jpg","อุษา",NULL,"HO","0.00","2e34609794290a770cb0349119d78d21","2021-06-14","2021-06-14","f21ada1d50ad6673ce1efb578513ead6","09:13:12","10:36:30",NULL,"2021-08-21 01:03:38");
INSERT INTO problem_list VALUES(293,"IT2021-06-14-W30","5","1","d3cea0a13419c7b7d226a432af757ca4",2,142,"เข้าเว็บสแกนนิ้วไม่ได้","ไม่มี","IT2021-06-14-W30-เว็บสแกนนิ้วเข้าไม่ได้14.06.64.jpg",NULL,"ชนกนันท์",NULL,"HO","0.00","2e34609794290a770cb0349119d78d21","2021-06-14","2021-06-14","5997108712eef9df6ecab22f1f3728f9","09:48:51","10:21:54",NULL,"2021-08-21 01:07:19");
INSERT INTO problem_list VALUES(294,"IT2021-06-14-W31","70","1","b29017088b3135c435f9c7912ec2cdb2",2,101,"เข้าโปรแกรม Time ไม่ได้ครับ","17-CR3-61-07-03",NULL,NULL,"วัชระ คำมิ่ง",NULL,"CR3","0.00","2e34609794290a770cb0349119d78d21","2021-06-14","2021-06-14","5997108712eef9df6ecab22f1f3728f9","12:30:49","16:31:10",NULL,"2021-08-21 00:47:26");
INSERT INTO problem_list VALUES(295,"IT2021-06-14-W32","20","1","cfef909e353c8db298c5afccf010578a",2,110,"winspeed ค้าง","08- WH-63-07-015",NULL,"IT2021-06-14-W32-after-Capture.JPG","ป้าเป้า",NULL,"WH","0.00","2e34609794290a770cb0349119d78d21","2021-06-14","2021-06-14","f21ada1d50ad6673ce1efb578513ead6","14:29:40","14:50:29",NULL,"2021-07-01 00:00:48");
INSERT INTO problem_list VALUES(296,"IT2021-06-14-W33","18","1","d5b14c346b88725387c282ac7b851ad8",2,141,"cloud invoice สาขา ICS วันที่ เดือน 6  พบไฟล์สแกนแค่วันที่ 13/06 นอกนั้นไม่มีข้อมูลค่ะ","ไม่มี","IT2021-06-14-W33-ICS.jpg","IT2021-06-14-W33-after-1623723763971.jpg","อุษา",NULL,"HO","0.00","2e34609794290a770cb0349119d78d21","2021-06-14","2021-06-15","f21ada1d50ad6673ce1efb578513ead6","17:26:57","11:16:59",NULL,"2021-08-21 01:03:40");
INSERT INTO problem_list VALUES(297,"IT2021-06-15-W34","71","1","79ba10e5305e95e757761317a07fca37",6,121,"ดรัมเสีย","19-ICS-61-07-15","IT2021-06-15-W34-0C8BF4FD-9E1F-4274-80EF-3E77C3AA2211.jpeg",NULL,"ธิดารัตน์ พรมพิลา",NULL,"ICS","0.00","2e34609794290a770cb0349119d78d21","2021-06-15","2021-07-21","5997108712eef9df6ecab22f1f3728f9","14:24:03","16:25:42",NULL,"2021-08-10 16:25:42");
INSERT INTO problem_list VALUES(298,"IT2021-06-16-W35","66","1","e782c0270070c7ff34dc7984a3643741",2,151,"ลงโปรแกรมเครื่องสแกนเครื่องปริ้นให้ด้วยค่ะ EPSON L220","MBP",NULL,"IT2021-06-16-W35-after-Capture.JPG","เจนจิรา โกพล","สุจิตรา เกษศิริ","MBP","0.00","2e34609794290a770cb0349119d78d21","2021-06-16","2021-06-17","f21ada1d50ad6673ce1efb578513ead6","17:57:12","10:18:45",NULL,"2021-07-01 00:00:48");
INSERT INTO problem_list VALUES(299,"IT2021-06-17-W36","75","1","3db564ba6fc573bad2628be5b7de4855",7,132,"เพิ่ม ประเภทรายการคิดเงิน   
1.Alipay.  2.QR KBank","07-NEB-63-07-004","IT2021-06-17-W36-20210617124052.jpg","IT2021-06-17-W36-after-S2490372.jpg","ปราจรีย์ เมรรัตน์","อิทธิพัทธ์ ","NEB","0.00","2e34609794290a770cb0349119d78d21","2021-06-17","2021-06-17","5997108712eef9df6ecab22f1f3728f9","12:54:30","13:26:28",NULL,"2021-07-01 00:00:48");
INSERT INTO problem_list VALUES(300,"IT2021-06-17-W37","60","1","b17177683249bb2cda3472e14d984e60",2,151,"โปรแกรม Time ขึ้นภาษาต่างด้าว","ไม่มี",NULL,"IT2021-06-17-W37-after-Capture.JPG","ธัญสุดา จันทร์ดวง","ศิริพงษ์","T21","0.00","2e34609794290a770cb0349119d78d21","2021-06-17","2021-06-17","f21ada1d50ad6673ce1efb578513ead6","14:05:50","14:58:22",NULL,"2021-07-01 00:00:48");
INSERT INTO problem_list VALUES(301,"IT2021-06-17-W38","18","1","d5b14c346b88725387c282ac7b851ad8",2,141,"cloud invoice สาขา MBP ตั้งแต่ เดือน 1 - เดือน 5 ไม่พบไฟล์สแกน","ไม่มี",NULL,"IT2021-06-17-W38-after-Capture.JPG","อุษา",NULL,"HO","0.00","2e34609794290a770cb0349119d78d21","2021-06-17","2021-06-17","f21ada1d50ad6673ce1efb578513ead6","14:07:41","15:20:29",NULL,"2021-08-21 01:03:41");
INSERT INTO problem_list VALUES(302,"IT2021-06-17-W39","69","1","859cd041e3fe84e5e65b5c178452841f",2,142,"โปรแกรม TIME ประมวณผลไม่ได้ค่ะ รบกวนดูให้หน่อยค่ะ","ไม่มี",NULL,NULL,"ปรารถนา","Kanchana","MGB","0.00","2e34609794290a770cb0349119d78d21","2021-06-17","2021-06-17",NULL,"15:21:50","10:20:23",NULL,"2021-08-21 00:58:48");
INSERT INTO problem_list VALUES(303,"IT2021-06-17-W40","60","1","b17177683249bb2cda3472e14d984e60",2,151,"โปรแกรม TIME  ใช้งานไม่ได้ค่ะ","ไม่มี",NULL,NULL,"ธัญสุดา จันทร์ดวง","ศิริพงษ์","T21","0.00","2e34609794290a770cb0349119d78d21","2021-06-17","2021-06-17","5997108712eef9df6ecab22f1f3728f9","15:27:20","10:20:37",NULL,"2021-07-01 00:00:48");
INSERT INTO problem_list VALUES(304,"IT2021-06-17-W41","26","1","980b7ed37ca11aa01f35284afcad5dbb",2,110,"ขอติดตั้งโปรแกรม winspeed ของทุกคนในแผนก","ไม่มี",NULL,"IT2021-06-17-W41-after-Capture.JPG","ณภัทร","เจนจิรา ฝ่าย IT","HO","0.00","2e34609794290a770cb0349119d78d21","2021-06-17","2021-06-17","f21ada1d50ad6673ce1efb578513ead6","16:44:26","17:14:51",NULL,"2021-08-21 01:04:43");
INSERT INTO problem_list VALUES(305,"IT2021-06-18-W42","70","1","b29017088b3135c435f9c7912ec2cdb2",2,9,"เข้าโปรแกรม time ไม่ได้ค่ะ","17-CR3-61-07-03",NULL,NULL,"มณฑ์ณลิน",NULL,"CR3","0.00","2e34609794290a770cb0349119d78d21","2021-06-18","2021-06-18","5997108712eef9df6ecab22f1f3728f9","11:46:52","15:08:13",NULL,"2021-08-21 00:48:01");
INSERT INTO problem_list VALUES(306,"IT2021-06-18-W43","73","1","451453af732f6b70835c9dcec5db3b93",2,154,"โปรแกรม Time ใช้งานไม่ได้ค่ะ","ไม่มี","IT2021-06-18-W43-1623991697653.jpeg",NULL,"สิดาพร อารามพงษ์","จรินทร เจริญสุข","TMK","0.00","2e34609794290a770cb0349119d78d21","2021-06-18","2021-06-18","5997108712eef9df6ecab22f1f3728f9","11:50:25","15:08:02",NULL,"2021-08-21 00:58:51");
INSERT INTO problem_list VALUES(307,"IT2021-06-18-W44","79","1","52f2a5ca589fe4b36097dd5c55c4ac9c",2,154,"โปรแกรม Time ไม่สามารถใช้งานได้ค่ะ","ไม่มี","IT2021-06-18-W44-,ff.jpg",NULL,"สโรชา","สโรชา","CWG","0.00","2e34609794290a770cb0349119d78d21","2021-06-18","2021-06-18","5997108712eef9df6ecab22f1f3728f9","12:01:53","15:07:51",NULL,"2021-08-21 01:02:26");
INSERT INTO problem_list VALUES(308,"IT2021-06-18-W45","66","1","e782c0270070c7ff34dc7984a3643741",2,8,"ระบบ Time ไม่สามารถเข้าใช้งานได้","MBP",NULL,NULL,"พิชญาภัค บำรุงสุข","สุจิตรา เกตุศิริ","MBP","0.00","2e34609794290a770cb0349119d78d21","2021-06-18","2021-06-18","5997108712eef9df6ecab22f1f3728f9","15:31:01","13:42:23",NULL,"2021-07-01 00:00:48");
INSERT INTO problem_list VALUES(309,"IT2021-06-18-W46","70","1","b29017088b3135c435f9c7912ec2cdb2",4,153,"ขอPassword เข้าแอฟของGrabด้วยค่ะ","ไม่มี",NULL,NULL,"มณฑ์ณลิน",NULL,"CR3","0.00","2e34609794290a770cb0349119d78d21","2021-06-18","2021-06-18","5997108712eef9df6ecab22f1f3728f9","16:18:36","17:11:03",NULL,"2021-08-21 01:03:44");
INSERT INTO problem_list VALUES(310,"IT2021-06-19-W47","60","1","b17177683249bb2cda3472e14d984e60",2,8,"โปรแกรมTime เปิดเข้ามาไม่มีรายละเอียด","ไม่มี","IT2021-06-19-W47-1624079708977-916179812.jpg",NULL,"ปุณญนุช","ศิริพงษ์","T21","0.00","2e34609794290a770cb0349119d78d21","2021-06-19","2021-06-21","5997108712eef9df6ecab22f1f3728f9","12:17:41","13:42:35",NULL,"2021-07-01 00:00:48");
INSERT INTO problem_list VALUES(311,"IT2021-06-19-W48","75","1","3db564ba6fc573bad2628be5b7de4855",2,151,"โปรแกรม Microsoft ไม่สามารถใช้งานได้ค่ะ","07-NEB-63-07-003","IT2021-06-19-W48-1.png","IT2021-06-19-W48-after-Capture.JPG","จุฑามาศ ครอบบัวบาน","นายอิทธิพัทธ์ มณีกานต์กูล","NEB","0.00","2e34609794290a770cb0349119d78d21","2021-06-19","2021-06-21","f21ada1d50ad6673ce1efb578513ead6","16:08:43","11:00:14",NULL,"2021-08-21 01:25:52");
INSERT INTO problem_list VALUES(312,"IT2021-06-21-W49","26","1","980b7ed37ca11aa01f35284afcad5dbb",2,155,"ลง Driver เครื่องปริ้นของการตลาด","ไม่มี",NULL,"IT2021-06-21-W49-after-Capture.JPG","ณปภัช",NULL,"HO","0.00","2e34609794290a770cb0349119d78d21","2021-06-21","2021-06-22","f21ada1d50ad6673ce1efb578513ead6","10:50:23","09:18:05",NULL,"2021-08-21 01:05:01");
INSERT INTO problem_list VALUES(313,"IT2021-06-21-W50","2","1","ed6b1d41694cc31a1bc8a0f659d5faf7",2,101,"ไฟล์ PAYIN ใน Cloud สาขา NGS ไม่เป็นปัจจุบัน หน้าร้านแจ้งว่าอัพไฟล์ถึงวันที่ 20/06/64","ไม่มี","IT2021-06-21-W50-1624250344951.jpg","IT2021-06-21-W50-after-Capture.JPG","พิพิธพร",NULL,"HO","0.00","2e34609794290a770cb0349119d78d21","2021-06-21","2021-06-21","f21ada1d50ad6673ce1efb578513ead6","11:40:41","11:54:42",NULL,"2021-08-21 01:03:07");
INSERT INTO problem_list VALUES(314,"IT2021-06-21-W51","70","1","b29017088b3135c435f9c7912ec2cdb2",2,110,"ขอติดตั้งโปรแกรมเครื่องปริ้น Epson L360 ค่ะ","05-PMN-57-07-01",NULL,"IT2021-06-21-W51-after-Capture.JPG","มณฑ์ณลิน",NULL,"CR3","0.00","2e34609794290a770cb0349119d78d21","2021-06-21","2021-06-21","f21ada1d50ad6673ce1efb578513ead6","11:54:22","14:08:37",NULL,"2021-07-01 00:00:48");
INSERT INTO problem_list VALUES(315,"IT2021-06-21-W52","73","1","451453af732f6b70835c9dcec5db3b93",7,130,"ไม่มีปุ่มกด voucher ลด 50 เปอร์เซ็น ของสุกี้ด้งหมูและเนื้อ","21-TMK-62-07-03",NULL,"IT2021-06-21-W52-after-8AD4ACD1-0FF3-4B19-BA3D-9340D87B8F9A.png","โยทะกา","จรินทร","TMK","0.00","2e34609794290a770cb0349119d78d21","2021-06-21","2021-06-21","5997108712eef9df6ecab22f1f3728f9","12:10:04","13:41:41",NULL,"2021-07-01 00:00:48");
INSERT INTO problem_list VALUES(316,"IT2021-06-21-W53","59","1","b496e28463b931118820246a08cf9826",1,109,"ขอเปลี่ยน keyboard, adapter อันใหม่ เนื่องจากของเดิมชำรุด","ไม่มี",NULL,"IT2021-06-21-W53-after-D4F6AA6B-40CF-4950-9EE1-E2E25FE8FE89.jpeg","สาริญา ดาโฉม","คุณสุจิตรา เกษศิริ","CDC","0.00","2e34609794290a770cb0349119d78d21","2021-06-21","2021-06-23","5997108712eef9df6ecab22f1f3728f9","12:48:51","16:45:49",NULL,"2021-08-21 01:01:46");
INSERT INTO problem_list VALUES(317,"IT2021-06-21-W54","26","1","980b7ed37ca11aa01f35284afcad5dbb",2,151,"ขอติดตั้งโปรเเกรมMicrosoft Office อันเก่าเปิดเเล้วโปรเเกรมใช้งานไม่ได้","ไม่มี",NULL,"IT2021-06-21-W54-after-Capture.JPG","อภิรมย์",NULL,"HO","0.00","2e34609794290a770cb0349119d78d21","2021-06-21","2021-06-21","f21ada1d50ad6673ce1efb578513ead6","13:34:05","14:15:02",NULL,"2021-08-21 01:04:59");
INSERT INTO problem_list VALUES(318,"IT2021-06-21-W55","69","1","859cd041e3fe84e5e65b5c178452841f",1,3,"เครื่องปริ้นมีปัญหาการดึงกระดาษครับ","ไม่มี","IT2021-06-21-W55-294357.jpg","IT2021-06-21-W55-after-545.PNG","Wacharapon","Kanchana","MGB","0.00","2e34609794290a770cb0349119d78d21","2021-06-21","2021-06-28","5997108712eef9df6ecab22f1f3728f9","14:59:57","11:23:20",NULL,"2021-08-21 01:06:25");
INSERT INTO problem_list VALUES(319,"IT2021-06-21-W56","18","1","d5b14c346b88725387c282ac7b851ad8",2,141,"cloud  invoice สาขา MBP ไฟล์ PDF เปิดไม่ได้ ของวันที่ 18-19 /06","ไม่มี","IT2021-06-21-W56-MBP1.jpg",NULL,"อุษา",NULL,"HO","0.00","2e34609794290a770cb0349119d78d21","2021-06-21","2021-06-21","f21ada1d50ad6673ce1efb578513ead6","15:04:27","15:52:09",NULL,"2021-08-21 01:03:46");
INSERT INTO problem_list VALUES(320,"IT2021-06-21-W57","2","1","ed6b1d41694cc31a1bc8a0f659d5faf7",2,154,"หน้าร้านอัฟเอกสารแล้ว ใน Cloud ไม่เห็นเอกสาร","ไม่มี","IT2021-06-21-W57-1111.jpg","IT2021-06-21-W57-after-1111.JPG","กัมปนาท",NULL,"HO","0.00","2e34609794290a770cb0349119d78d21","2021-06-21","2021-06-21","f21ada1d50ad6673ce1efb578513ead6","15:13:20","15:51:31",NULL,"2021-08-21 01:03:09");
INSERT INTO problem_list VALUES(321,"IT2021-06-22-W58","18","1","d5b14c346b88725387c282ac7b851ad8",2,141,"Cloud invoice สาขา CR3 วันที่ 18-20 /06 หน้าร้านสแกนแล้ว แต่ข้อมูลหาย","ไม่มี","IT2021-06-22-W58-cr3.jpg","IT2021-06-22-W58-after-Capture.JPG","อุษา",NULL,"HO","0.00","2e34609794290a770cb0349119d78d21","2021-06-22","2021-06-22","f21ada1d50ad6673ce1efb578513ead6","10:17:27","12:08:07",NULL,"2021-08-21 01:03:50");
INSERT INTO problem_list VALUES(322,"IT2021-06-22-W59","73","1","451453af732f6b70835c9dcec5db3b93",2,140,"เข้าวินสปีดไม่ได้ค่ะ ใส่รหัสแล้วเด้งออก","ไม่มี",NULL,NULL,"สิดาพร","จรินทร","TMK","0.00","2e34609794290a770cb0349119d78d21","2021-06-22","2021-06-23","f21ada1d50ad6673ce1efb578513ead6","16:10:55","13:31:50",NULL,"2021-08-21 00:58:59");
INSERT INTO problem_list VALUES(323,"IT2021-06-23-W60","18","1","d5b14c346b88725387c282ac7b851ad8",2,141,"cloud invoice สาขา CR3 ไฟล์ PDF เปิดไม่ได้ ของวันที่ 22/06
","ไม่มี","IT2021-06-23-W60-cr3..jpg",NULL,"อุษา",NULL,"HO","0.00","2e34609794290a770cb0349119d78d21","2021-06-23","2021-06-23","f21ada1d50ad6673ce1efb578513ead6","10:10:59","13:14:03",NULL,"2021-08-21 01:03:52");
INSERT INTO problem_list VALUES(324,"IT2021-06-23-W61","73","1","451453af732f6b70835c9dcec5db3b93",2,140,"ไม่สามารถเข้า WINSPEED ได้ค่ะระบบเด้งออกตลอด","21-TMK-62-07-12",NULL,"IT2021-06-23-W61-after-q.jpg","โยทะกา","จรินทร","TMK","0.00","2e34609794290a770cb0349119d78d21","2021-06-23","2021-06-23","f21ada1d50ad6673ce1efb578513ead6","15:34:14","16:23:58",NULL,"2021-07-01 00:00:48");
INSERT INTO problem_list VALUES(325,"IT2021-06-23-W62","59","1","b496e28463b931118820246a08cf9826",2,110,"เชื่อมต่อเครื่่องปริ้น EPSON L3150 ไม่ได้
","02-CDC-63-97-16","IT2021-06-23-W62-386846.jpg","IT2021-06-23-W62-after-Capture.PNG","ณัฏฐดล กาฬวงศ์","คุณสุจิตรา เกษศิริ","CDC","0.00","2e34609794290a770cb0349119d78d21","2021-06-23","2021-06-23","f21ada1d50ad6673ce1efb578513ead6","15:50:18","16:46:34",NULL,"2021-07-01 00:00:48");
INSERT INTO problem_list VALUES(326,"IT2021-06-24-W63","5","1","d3cea0a13419c7b7d226a432af757ca4",2,148,"ขอแอดเครื่องปริ้นเตอร์ซัมซุงกับepson ในเครื่องพี่หมี กับฟ้า","ไม่มี",NULL,"IT2021-06-24-W63-after-Capture.JPG","ชนกนันท์",NULL,"HO","0.00","2e34609794290a770cb0349119d78d21","2021-06-24","2021-06-24","f21ada1d50ad6673ce1efb578513ead6","08:34:21","11:09:50",NULL,"2021-08-21 01:07:31");
INSERT INTO problem_list VALUES(327,"IT2021-06-24-W64","60","1","b17177683249bb2cda3472e14d984e60",7,125,"ค้างกำลังดาวโหลดค่ะ","ไม่มี","IT2021-06-24-W64-16245269864201687974156.jpg",NULL,"ธัญสุดา","ศิริพงษ์","T21","0.00","2e34609794290a770cb0349119d78d21","2021-06-24","2021-06-24","f21ada1d50ad6673ce1efb578513ead6","16:30:04","17:07:36",NULL,"2021-07-01 00:00:48");
INSERT INTO problem_list VALUES(328,"IT2021-06-24-W65","73","1","451453af732f6b70835c9dcec5db3b93",2,140,"เข้าระบบ winspeed ไม่ได้เด้งออกตลอดค่ะ","21-TMK-62-07-12",NULL,NULL,"โยทะกา","จรินทร","TMK","0.00","57995055c28df9e82476a54f852bd214","2021-06-24","2021-06-25","f21ada1d50ad6673ce1efb578513ead6","18:39:11","17:24:49",NULL,"2021-07-01 00:00:48");
INSERT INTO problem_list VALUES(329,"IT2021-06-24-W66","80","1","fc9c93f00e53b47b7bf01b72cd6180bd",8,154,"ขอดูกล้องวงจรปิดวันที่ 20/6/64 เวลา 18:00 - 19:30 น. โซน I ตำแหน่ง โต๊ะ I4 
และในครัววัน 20/6/64 ทั้งวันตรงตำแหน่ง Runner ","ไม่มี",NULL,NULL,"สุชัญญา","ณิชนันทน์","CLP ","0.00","57995055c28df9e82476a54f852bd214","2021-06-24","2021-06-25","5997108712eef9df6ecab22f1f3728f9","20:59:08","09:52:57",NULL,"2021-07-01 00:00:48");
INSERT INTO problem_list VALUES(330,"IT2021-06-25-W67","26","1","980b7ed37ca11aa01f35284afcad5dbb",2,110,"ขอติดตั้งโปรแกรม winspeed ของทุกคนในแผนกการตลาด (บีม พี่ใบตอง ใบเฟิน)","ไม่มี",NULL,NULL,"อภิรมย์",NULL,"HO","0.00","2e34609794290a770cb0349119d78d21","2021-06-25","2021-06-25","5997108712eef9df6ecab22f1f3728f9","14:44:44","16:45:15",NULL,"2021-08-21 01:04:50");
INSERT INTO problem_list VALUES(331,"IT2021-06-25-W68","73","1","451453af732f6b70835c9dcec5db3b93",2,140,"เข้าระบบ winspeed  ไม่ได้ค่ะ","21-TMK-62-07-12",NULL,NULL,"โยทะกา","จรินทร","TMK","0.00","2e34609794290a770cb0349119d78d21","2021-06-25","2021-06-25","f21ada1d50ad6673ce1efb578513ead6","16:53:54","17:24:18",NULL,"2021-07-01 00:00:48");
INSERT INTO problem_list VALUES(332,"IT2021-06-25-W69","60","1","b17177683249bb2cda3472e14d984e60",2,110,"โปรแกรม Time ค้าง","ไม่มี",NULL,NULL,"ปุณญนุช ","ศิริพงษ์","T21","0.00","2e34609794290a770cb0349119d78d21","2021-06-25","2021-06-28","5997108712eef9df6ecab22f1f3728f9","17:58:26","12:51:54",NULL,"2021-07-01 00:00:48");
INSERT INTO problem_list VALUES(333,"IT2021-06-28-W70","2","1","ed6b1d41694cc31a1bc8a0f659d5faf7",2,101,"ไฟล์ 2. Pay in หายไป","ไม่มี","IT2021-06-28-W70-1624848419784.jpg","IT2021-06-28-W70-after-7.PNG","กัมปนาท",NULL,"HO","0.00","2e34609794290a770cb0349119d78d21","2021-06-28","2021-06-28","5997108712eef9df6ecab22f1f3728f9","09:49:41","12:29:55",NULL,"2021-08-21 01:03:11");
INSERT INTO problem_list VALUES(334,"IT2021-06-28-W71","53","1","2d7a80fc55f6ff49c227852ac35fc3f5",1,3,"ปริ้นไม่ออกขึ้นแจ้งเตือนน้ำหมึก พี่เติมหมึกแล้วไม่ต่ำกว่าระดับน้ำหมึกก็ปริ้นไม่ออก","ไม่มี","IT2021-06-28-W71-แจ้งซ่อม.jpg",NULL,"สุวดี พงษ์สระพัง",NULL,"HO","0.00","2e34609794290a770cb0349119d78d21","2021-06-28","2021-06-29","5997108712eef9df6ecab22f1f3728f9","13:36:38","08:26:46",NULL,"2021-08-21 01:06:52");
INSERT INTO problem_list VALUES(335,"IT2021-06-29-W72","26","1","980b7ed37ca11aa01f35284afcad5dbb",2,151,"โฟลเดอร์เปิดไม่ขึ้น ค้าง รอมากกว่า 10 นาที เปิดโฟลเดอร์ย่อยไม่ได้","ไม่มี",NULL,NULL,"ณภัทร","เจนจิรา ฝ่าย IT","HO","0.00","2e34609794290a770cb0349119d78d21","2021-06-29","2021-06-29","f21ada1d50ad6673ce1efb578513ead6","09:46:32","09:53:19",NULL,"2021-08-21 01:04:55");
INSERT INTO problem_list VALUES(336,"IT2021-06-29-W73","2","1","ed6b1d41694cc31a1bc8a0f659d5faf7",2,101,"ไฟล์ PAYIN ใน Cloud สาขา MBP 270621 เปิดไม่ได้ ","ไม่มี","IT2021-06-29-W73-MBP.jpeg",NULL,"พิพิธพร",NULL,"HO","0.00","2e34609794290a770cb0349119d78d21","2021-06-29","2021-06-29","f21ada1d50ad6673ce1efb578513ead6","14:15:34","16:17:38",NULL,"2021-08-21 01:03:15");
INSERT INTO problem_list VALUES(337,"IT2021-06-30-W74","70","1","b29017088b3135c435f9c7912ec2cdb2",2,110,"ติดตั้งโปรแกรมเครื่องปริ้น L360 ครับ","17-CR3-61-07-03",NULL,"IT2021-06-30-W74-after-Capture.JPG","มณฑ์ณลิน",NULL,"CR3","0.00","2e34609794290a770cb0349119d78d21","2021-06-30","2021-06-30","f21ada1d50ad6673ce1efb578513ead6","11:27:23","12:08:00",NULL,"2021-07-01 00:00:48");
INSERT INTO problem_list VALUES(338,"IT2021-06-30-W75","60","1","b17177683249bb2cda3472e14d984e60",2,151,"โปรแกรม Time เข้าไม่ได้ค่ะ","ไม่มี",NULL,NULL,"ธัญสุดา จันทร์ดวง","ศิริพงษ์","T21","0.00","2e34609794290a770cb0349119d78d21","2021-06-30","2021-07-05","f21ada1d50ad6673ce1efb578513ead6","16:49:12","17:19:11",NULL,"2021-07-05 17:19:11");
INSERT INTO problem_list VALUES(339,"IT2021-07-03-W01","70","1","b29017088b3135c435f9c7912ec2cdb2",2,154,"รูปที่อยู่ในPicturesหายไปค่ะ รบกวนดึงขึ้นมาให้หน่อยค่ะ","17-CR3-61-07-03",NULL,NULL,"มณฑ์ณลิน",NULL,"CR3","0.00","57995055c28df9e82476a54f852bd214","2021-07-03","2021-07-05","f21ada1d50ad6673ce1efb578513ead6","11:40:30","17:17:49",NULL,"2021-08-21 00:49:58");
INSERT INTO problem_list VALUES(340,"IT2021-07-03-W02","71","1","79ba10e5305e95e757761317a07fca37",2,154,"กู้ไฟล์ sales report เพือน1-5 คืน","ไม่มี","IT2021-07-03-W02-5C44A718-201E-4F39-96DA-D98A59421761.jpeg","IT2021-07-03-W02-after-1625308557041.jpeg","ธิดารัตน์ พรมพิลา",NULL,"ICS ","0.00","2e34609794290a770cb0349119d78d21","2021-07-03","2021-07-05","f21ada1d50ad6673ce1efb578513ead6","15:59:00","17:20:46",NULL,"2021-08-21 00:59:02");
INSERT INTO problem_list VALUES(341,"IT2021-07-04-W03","58","1","cf4178eda791cfcbd3f20efe1a1ec35a",7,138,"ปุ่มซื้อกลับ ปุ่มจัดส่งของ และ Add on Mo-Mo-Paradise Standard กดแล้วออเดอร์ไม่ออกด้านในครัว ","ไม่มี","IT2021-07-04-W03-151684.jpg","IT2021-07-04-W03-after-4.JPG","ศศิวิไล จันลือชัย","อิทธิพัทธ์ มณีกานต์กูล","CTW","0.00","2e34609794290a770cb0349119d78d21","2021-07-04","2021-07-04","5997108712eef9df6ecab22f1f3728f9","12:33:08","08:25:39",NULL,"2021-08-21 00:59:05");
INSERT INTO problem_list VALUES(342,"IT2021-07-04-W04","67","1","9fe4987d685fcbff9b1a3011cdd12b35",7,132,"ไม่มีปุ่มกด food panda","ไม่มี",NULL,"IT2021-07-04-W04-after-Capture.JPG","อนันต์ยศ จ้อยช้างเนียม","กาญจนา บรรเรียนกิจ","SCQ","0.00","2e34609794290a770cb0349119d78d21","2021-07-04","2021-07-05","5997108712eef9df6ecab22f1f3728f9","15:25:11","08:24:38",NULL,"2021-08-21 00:59:07");
INSERT INTO problem_list VALUES(343,"IT2021-07-04-W05","67","1","9fe4987d685fcbff9b1a3011cdd12b35",7,132,"ไม่มีปุ่มกด food panda","ไม่มี",NULL,"IT2021-07-04-W05-after-Capture.JPG","อนันต์ยศ จ้อยช้างเนียม","กาญจนา บรรเรียนกิจ","SCQ","0.00","2e34609794290a770cb0349119d78d21","2021-07-04","2021-07-05","5997108712eef9df6ecab22f1f3728f9","15:25:22","08:24:04",NULL,"2021-08-21 00:59:15");
INSERT INTO problem_list VALUES(344,"IT2021-07-04-W06","67","1","9fe4987d685fcbff9b1a3011cdd12b35",7,132,"ไม่มีปุ่มกด food panda","ไม่มี",NULL,"IT2021-07-04-W06-after-Capture.JPG","อนันต์ยศ จ้อยช้างเนียม","กาญจนา บรรเรียนกิจ","SCQ","0.00","2e34609794290a770cb0349119d78d21","2021-07-04","2021-07-05","5997108712eef9df6ecab22f1f3728f9","15:25:37","08:23:39",NULL,"2021-08-21 00:59:17");
INSERT INTO problem_list VALUES(345,"IT2021-07-05-W07","59","1","b496e28463b931118820246a08cf9826",2,110,"ขอติดตั้งปริ้นเตอร์ของสาขา","02-CDC-57-07-01",NULL,"IT2021-07-05-W07-after-Capture.JPG","สาริญา ดาโฉม","สุจิตรา เกศสิริ","CDC","0.00","2e34609794290a770cb0349119d78d21","2021-07-05","2021-07-05","f21ada1d50ad6673ce1efb578513ead6","16:59:21","17:28:00",NULL,"2021-07-05 17:28:00");
INSERT INTO problem_list VALUES(346,"IT2021-07-06-W08","59","1","b496e28463b931118820246a08cf9826",2,110,"โปรแกรมเครื่องปริ้นเตอร์ไม่สามารถสแกนไฟล์แบบต่อเนื่องได้ค่ะ","02-CDC-57-07-01",NULL,NULL,"สุจิตรา","สุจิตรา","CDC","0.00","2e34609794290a770cb0349119d78d21","2021-07-06","2021-07-06","f21ada1d50ad6673ce1efb578513ead6","12:59:33","13:15:23",NULL,"2021-08-21 01:27:46");
INSERT INTO problem_list VALUES(347,"IT2021-07-07-W09","75","1","3db564ba6fc573bad2628be5b7de4855",7,132,"เพิ่ม ประเภทรายการคิดเงิน Foodpanda","07-NEB-63-07-004",NULL,"IT2021-07-07-W09-after-S2637840.jpg","อานัส สานิง","นายอิทธิพัทธ์ มณีกานต์กูล","NEB","0.00","2e34609794290a770cb0349119d78d21","2021-07-07","2021-07-07","5997108712eef9df6ecab22f1f3728f9","12:32:07","12:38:15",NULL,"2021-08-21 01:23:04");
INSERT INTO problem_list VALUES(348,"IT2021-07-07-W10","71","1","79ba10e5305e95e757761317a07fca37",1,148,"ติดตั้งโปรแกรมเครื่องปรินซ์","ไม่มี",NULL,"IT2021-07-07-W10-after-Capture.JPG","สุนิสา",NULL,"ICS","0.00","2e34609794290a770cb0349119d78d21","2021-07-07","2021-07-07","f21ada1d50ad6673ce1efb578513ead6","12:35:56","12:42:07",NULL,"2021-08-21 01:02:20");
INSERT INTO problem_list VALUES(349,"IT2021-07-07-W11","18","1","d5b14c346b88725387c282ac7b851ad8",2,151,"ไม่สามารถสั่งปริ้นแบบฟอร์มที่ต้องการได้","ไม่มี","IT2021-07-07-W11-1.jpeg","IT2021-07-07-W11-after-Capture.JPG","สุพัตรา(พลอย)",NULL,"HO","0.00","2e34609794290a770cb0349119d78d21","2021-07-07","2021-07-07","f21ada1d50ad6673ce1efb578513ead6","13:21:51","13:30:21",NULL,"2021-08-21 01:05:36");
INSERT INTO problem_list VALUES(350,"IT2021-07-07-W12","43","1","6134ff997b6f5c7e403dc701c7b2cec9",2,144,"Winspeed เป็นภาษาต่างดาว","IT59/06",NULL,"IT2021-07-07-W12-after-Capture.JPG","ศร","ศร","SV","0.00","2e34609794290a770cb0349119d78d21","2021-07-07","2021-07-07","f21ada1d50ad6673ce1efb578513ead6","13:24:04","13:29:24",NULL,"2021-07-07 13:29:24");
INSERT INTO problem_list VALUES(351,"IT2021-07-09-W13","70","1","b29017088b3135c435f9c7912ec2cdb2",7,130,"รบกวนทำราคาเมนูของส่วนการตลาดให้เป็นด้วยค่ะ พอดีทางสาขาจะต้องส่งเมนูใหม่ไปรีวิวค่ะ","17-CR3-61-07-01(04)",NULL,NULL,"มณฑ์ณลิน",NULL,"CR3","0.00","2e34609794290a770cb0349119d78d21","2021-07-09","2021-07-09","5997108712eef9df6ecab22f1f3728f9","10:51:36","11:03:50",NULL,"2021-07-09 11:03:50");
INSERT INTO problem_list VALUES(352,"IT2021-07-11-W14","74","1","06ac11af0ac13b221a953bfb54ecaa92",2,139,"เข้าใช้งานระบบ winspeed ไม่ได้ มันไม่พบข้องอมูลพื้นฐาน CCW-gran","ไม่มี","IT2021-07-11-W14-IMG20210711134737.jpg","IT2021-07-11-W14-after-Capture.JPG","คณิตศร","ศิริพงษ์","CCW","0.00","2e34609794290a770cb0349119d78d21","2021-07-11","2021-07-11","f21ada1d50ad6673ce1efb578513ead6","13:56:22","14:07:04",NULL,"2021-08-21 01:06:58");
INSERT INTO problem_list VALUES(353,"IT2021-07-11-W15","76","1","6809f49f86586a97cb888adc3119668b",2,141,"Nextcloud ไม่ synchronize ข้อมูล","ไม่มี","IT2021-07-11-W15-1625991656299.jpg","IT2021-07-11-W15-after-Capture.JPG","อิทธิพัทธ์ มณีกานต์กูล","อิทธิพัทธ์  มณีกานต์กูล","NGS","0.00","2e34609794290a770cb0349119d78d21","2021-07-11","2021-07-11","f21ada1d50ad6673ce1efb578513ead6","15:22:42","16:05:05",NULL,"2021-08-21 00:59:30");
INSERT INTO problem_list VALUES(354,"IT2021-07-14-W16","2","1","ed6b1d41694cc31a1bc8a0f659d5faf7",8,152,"ขอดูกล้อง สาขาMGB วันที่ 5-6","ไม่มี",NULL,NULL,"หมู ตรวจสอบ",NULL,"HO","0.00","2e34609794290a770cb0349119d78d21","2021-07-14","2021-07-14","f21ada1d50ad6673ce1efb578513ead6","12:04:09","13:33:21",NULL,"2021-08-21 00:59:34");
INSERT INTO problem_list VALUES(355,"IT2021-07-15-W17","63","1","9aa946d6abfcb4cfc9ee258593eff00f",8,154,"โน๊ตบุ๊คไม่เชื่อมต่อกับเครื่องปริ้นเนื่องจากเป็นโน๊ตบุ๊คสำรอง","05-PMN-57-07-01",NULL,"IT2021-07-15-W17-after-Capture.JPG","พรทิพย์","กาญจนา","CBN","0.00","2e34609794290a770cb0349119d78d21","2021-07-15","2021-07-15","f21ada1d50ad6673ce1efb578513ead6","11:23:06","11:41:45",NULL,"2021-07-15 11:41:45");
INSERT INTO problem_list VALUES(356,"IT2021-07-17-W18","80","1","fc9c93f00e53b47b7bf01b72cd6180bd",3,9,"Internet ใช้งานไม่ได้ ทั้งเครื่อง Pos,Labtop","26-CLP-64-07-01 , 26-CLP-64-07-02",NULL,"IT2021-07-17-W18-after-1FD24AC0-294E-426D-B010-3AC19815FC80.jpeg","สุชัญญา","ณิชนันทน์","CLP","0.00","2e34609794290a770cb0349119d78d21","2021-07-17","2021-07-17","f21ada1d50ad6673ce1efb578513ead6","10:25:45","11:03:02",NULL,"2021-07-17 11:03:02");
INSERT INTO problem_list VALUES(357,"IT2021-07-18-W19","5","1","d3cea0a13419c7b7d226a432af757ca4",8,154,"ขอดูกล้องวงจรปิด วันที่ 07/07/64 ช่วงเวลาที่ขนส่งไปส่งของที่สาขา ZPE","ไม่มี",NULL,"IT2021-07-18-W19-after-1626674252386.jpg","มิ้น",NULL,"HO","0.00","2e34609794290a770cb0349119d78d21","2021-07-18","2021-07-19","5997108712eef9df6ecab22f1f3728f9","14:44:28","12:59:53",NULL,"2021-08-21 00:59:38");
INSERT INTO problem_list VALUES(358,"IT2021-07-19-W20","2","1","ed6b1d41694cc31a1bc8a0f659d5faf7",2,101,"เปิดไฟล์ Panin สาขา CBN ใน Cloud ตั้งแต่วันที่ 13-16/07/64 ไม่ได้ค่ะ ","ไม่มี","IT2021-07-19-W20-CBN.jpg","IT2021-07-19-W20-after-Capture.JPG","พิพิธพร",NULL,"HO","0.00","2e34609794290a770cb0349119d78d21","2021-07-19","2021-07-19","f21ada1d50ad6673ce1efb578513ead6","08:44:12","09:04:04",NULL,"2021-08-21 01:14:11");
INSERT INTO problem_list VALUES(359,"IT2021-07-22-W21","45","1","5997108712eef9df6ecab22f1f3728f9",2,151,"รบกวนติดตั้งโปรแกรม ต่างๆ ที่โน๊ตบุ๊คให้หน่อยค่ะ ","ไม่มี",NULL,NULL,"เสาวรักษ์","เจนจิรา","HO","0.00","2e34609794290a770cb0349119d78d21","2021-07-22","2021-07-22","f21ada1d50ad6673ce1efb578513ead6","13:24:37","15:30:08",NULL,"2021-08-21 00:59:46");
INSERT INTO problem_list VALUES(360,"IT2021-07-24-W22","43","1","6134ff997b6f5c7e403dc701c7b2cec9",6,148,"ขอ NOTEBOOK สำรองให้ Cloud kitchen ที่สำนักงานใหญ่","ไม่มี",NULL,"IT2021-07-24-W22-after-59770DB9-83AE-4ACD-8A35-14AA69600C6F.jpeg","ไพบูลย์","ไพบูลย์","HO","0.00","2e34609794290a770cb0349119d78d21","2021-07-24","2021-08-04","f21ada1d50ad6673ce1efb578513ead6","09:25:49","08:42:31",NULL,"2021-08-21 00:59:45");
INSERT INTO problem_list VALUES(361,"IT2021-07-29-W23","5","1","d3cea0a13419c7b7d226a432af757ca4",8,154,"ขอดูกล้องวงจรปิด สาขา ZPE
วันที่ 7,9/7/64 เวลา 07.00 - 17.00 น. ของทั้ง 2 วัน เพื่อตามเอกสาร","ไม่มี",NULL,"IT2021-07-29-W23-after-Capture.JPG","มิ้น",NULL,"HO","0.00","2e34609794290a770cb0349119d78d21","2021-07-29","2021-07-29","f21ada1d50ad6673ce1efb578513ead6","10:46:14","13:29:43",NULL,"2021-08-21 00:59:48");
INSERT INTO problem_list VALUES(362,"IT2021-07-29-W24","5","1","d3cea0a13419c7b7d226a432af757ca4",8,154,"ขอดูกล้องวงจรปิด WH วันที่ 07/07/64 ช่วงเวลา 05.00 น.เป็นต้นไป เพื่อตามเอกสารจากน้าศรี รวมถึงสาขาที่น้าศรีนำเอกสารไปส่งวันดังกล่าวค่ะ ","ไม่มี",NULL,"IT2021-07-29-W24-after-Capture.JPG","มิ้น",NULL,"HO","0.00","2e34609794290a770cb0349119d78d21","2021-07-29","2021-07-29","f21ada1d50ad6673ce1efb578513ead6","12:58:19","16:36:09",NULL,"2021-08-21 00:59:50");
INSERT INTO problem_list VALUES(363,"IT2021-07-29-W25","55","1","3ae8086fb05d3435d3dcd9cd1565a454",2,110,"ติดตั้งโปรแกรม  ภ.พ.30/ภ.ค.ง3/ภ.ง.ด53 ","ไม่มี",NULL,"IT2021-07-29-W25-after-1627541739334.jpg","เข็ม",NULL,"HO","0.00","2e34609794290a770cb0349119d78d21","2021-07-29","2021-07-29","f21ada1d50ad6673ce1efb578513ead6","13:11:36","13:56:53",NULL,"2021-08-21 01:05:38");
INSERT INTO problem_list VALUES(364,"IT2021-08-04-W01","68","1","cec9ac90af27b74546e22910bdc5bfff",1,1,"เครื่องปริ้นไม่ได้ค่ะ","14-CPK-60-07-04","IT2021-08-04-W01-D63620F8-DD90-43B9-8CAA-FF3CF0222253.jpeg","IT2021-08-04-W01-after-Capture.JPG","ซายน์","ศร","CPK","0.00","2e34609794290a770cb0349119d78d21","2021-08-04","2021-08-04","f21ada1d50ad6673ce1efb578513ead6","13:08:03","14:15:24",NULL,"2021-08-21 01:29:38");
INSERT INTO problem_list VALUES(365,"IT2021-08-05-W02","5","1","d3cea0a13419c7b7d226a432af757ca4",2,142,"โปรแกรม time เข้าไม่ได้","ไม่มี",NULL,NULL,"ชนกนันท์",NULL,"HO","0.00","2e34609794290a770cb0349119d78d21","2021-08-05","2021-08-05","5997108712eef9df6ecab22f1f3728f9","08:57:10","09:09:04",NULL,"2021-08-21 01:07:43");
INSERT INTO problem_list VALUES(366,"IT2021-08-05-W03","60","1","b17177683249bb2cda3472e14d984e60",3,9,"อินเตอร์เน็ตใช้ไม่ได้ค่ะ","ไม่มี",NULL,NULL,"ธัญสุดา จันทร์ดวง","ศิริพงษ์","T21","0.00","2e34609794290a770cb0349119d78d21","2021-08-05","2021-08-05","f21ada1d50ad6673ce1efb578513ead6","12:40:22","13:08:37",NULL,"2021-08-05 13:08:37");
INSERT INTO problem_list VALUES(367,"IT2021-08-09-W04","26","1","980b7ed37ca11aa01f35284afcad5dbb",2,146,"ไลน์เด้งข้อความ Entry Point Not Found ตลอด","IT60/14",NULL,"IT2021-08-09-W04-after-Capture.JPG","พนิตนุช เรืองวงษ์",NULL,"HO","0.00","2e34609794290a770cb0349119d78d21","2021-08-09","2021-08-09","f21ada1d50ad6673ce1efb578513ead6","09:11:50","10:25:01",NULL,"2021-08-21 01:12:20");
INSERT INTO problem_list VALUES(368,"IT2021-08-09-W05","62","1","696d924c3decaabd113b928b63cb8e9e",2,6,"Excel ใช้งานไม่ได้","05-PMN-64-07-01","IT2021-08-09-W05-1628504120009.jpeg","IT2021-08-09-W05-after-Capture.JPG","ภู่กัน",NULL,"PMN","0.00","2e34609794290a770cb0349119d78d21","2021-08-09","2021-08-09","f21ada1d50ad6673ce1efb578513ead6","17:37:05","17:47:41",NULL,"2021-08-19 09:38:11");
INSERT INTO problem_list VALUES(369,"IT2021-08-11-W06","71","1","79ba10e5305e95e757761317a07fca37",2,155,"เครื่องปริ้นส์สแกนไม่ได้ ","ICS-61-07-15",NULL,NULL,"ธิดารัตน์  พรมพิลา",NULL,"ICS","0.00","968d42cbf280bc3c26103d31955bae59","2021-08-11","2021-08-16","f21ada1d50ad6673ce1efb578513ead6","13:15:26","12:04:51",NULL,"2021-08-21 00:51:33");
INSERT INTO problem_list VALUES(370,"IT2021-08-12-W07","60","1","b17177683249bb2cda3472e14d984e60",3,9,"อินเตอร์เน็ตหลุดบ่อยมากเลยค่ะ ","ไม่มี",NULL,"IT2021-08-12-W07-after-Capture2.JPG","ธัญสุดา จันทร์ดวง","ศิริพงษ์","T21","0.00","2e34609794290a770cb0349119d78d21","2021-08-12","2021-08-12","f21ada1d50ad6673ce1efb578513ead6","18:40:45","20:07:34",NULL,"2021-08-12 20:07:34");
INSERT INTO problem_list VALUES(371,"IT2021-08-12-W08","60","1","b17177683249bb2cda3472e14d984e60",2,140,"winspeed ค้างบ่อยมากเลยค่ะ","ไม่มี",NULL,"IT2021-08-12-W08-after-sdfg.JPG","ธัญสุดา จันทร์ดวง","ศิริพงษ์","T21","0.00","2e34609794290a770cb0349119d78d21","2021-08-12","2021-08-12","f21ada1d50ad6673ce1efb578513ead6","18:42:18","20:06:41",NULL,"2021-08-12 20:06:41");
INSERT INTO problem_list VALUES(372,"IT2021-08-13-W09","60","1","b17177683249bb2cda3472e14d984e60",2,142,"โปรแกรม TIME  เข้าไม่ได้ค่ะ","ไม่มี",NULL,"IT2021-08-13-W09-after-Capture.JPG","ธัญสุดา จันทร์ดวง","ศิริพงษ์","T21","0.00","2e34609794290a770cb0349119d78d21","2021-08-13","2021-08-13","f21ada1d50ad6673ce1efb578513ead6","12:06:31","12:03:33","ce63f18f7cf0a712fd4a2f47bc9ae14c","2021-08-14 12:03:33");
INSERT INTO problem_list VALUES(373,"IT2021-08-13-W10","5","1","d3cea0a13419c7b7d226a432af757ca4",2,110,"โปรแกรมค้างค่ะ ","ไม่มี",NULL,NULL,"ยุพา",NULL,"HO","0.00","2e34609794290a770cb0349119d78d21","2021-08-13","2021-08-13","f21ada1d50ad6673ce1efb578513ead6","12:37:02","12:05:26",NULL,"2021-08-21 01:08:05");
INSERT INTO problem_list VALUES(374,"IT2021-08-13-W11","74","1","06ac11af0ac13b221a953bfb54ecaa92",3,9,"ไม่สามารถเชื่อมต่อ WiFi ได้ค่ะ","22-CCW-62-07-10","IT2021-08-13-W11-IMG20210813135923.jpg","IT2021-08-13-W11-after-Capture.JPG","คณิตศร","ศิริพงษ์","CCW","0.00","2e34609794290a770cb0349119d78d21","2021-08-13","2021-08-13","f21ada1d50ad6673ce1efb578513ead6","14:02:45","14:22:40",NULL,"2021-08-13 14:22:40");
INSERT INTO problem_list VALUES(375,"IT2021-08-13-W12","5","1","d3cea0a13419c7b7d226a432af757ca4",2,142,"http://nobleres2018.dyndns.org:2016/BS_login.asp เปิดไม่ได้","ไม่มี",NULL,"IT2021-08-13-W12-after-Capture.JPG","ชนกนันท์",NULL,"HO","0.00","2e34609794290a770cb0349119d78d21","2021-08-13","2021-08-13","f21ada1d50ad6673ce1efb578513ead6","16:07:14","12:04:13",NULL,"2021-08-21 01:08:19");
INSERT INTO problem_list VALUES(376,"IT2021-08-14-W13","43","1","6134ff997b6f5c7e403dc701c7b2cec9",2,154,"เข้าใช้งานตาราง Time ไม่ได้","ไม่มี","IT2021-08-14-W13-Untitled.jpg","IT2021-08-14-W13-after-Capture.JPG","ไพบูลย์","ไพบูลย์","ทุกสาขา","0.00","2e34609794290a770cb0349119d78d21","2021-08-14","2021-08-14","f21ada1d50ad6673ce1efb578513ead6","14:29:21","14:35:27",NULL,"2021-08-21 01:00:22");
INSERT INTO problem_list VALUES(377,"IT2021-08-14-W14","43","1","6134ff997b6f5c7e403dc701c7b2cec9",2,154,"ตาราง time เข้าไปใช้งานไม่ได้
(ต้องการเข้าไปเช็คเวลาเข้างานเพื่อทำข้อมูลยื่นประกันสังคม...ด่วน)","ไม่มี",NULL,NULL,"ไพบูลย์","ไพบูลย์","ทุกสาขา","0.00","2e34609794290a770cb0349119d78d21","2021-08-14","2021-08-14","f21ada1d50ad6673ce1efb578513ead6","16:18:49","16:42:31",NULL,"2021-08-21 01:00:20");
INSERT INTO problem_list VALUES(378,"IT2021-08-14-W15","5","1","d3cea0a13419c7b7d226a432af757ca4",2,142,"เปิดไม่ได้เลย","ไม่มี",NULL,NULL,"ยุพา",NULL,"HO","0.00","141f76f3b648cd1d8d21cceed6b3b418","2021-08-14","2021-08-16","5997108712eef9df6ecab22f1f3728f9","21:24:48","09:21:06",NULL,"2021-08-21 01:08:32");
INSERT INTO problem_list VALUES(379,"IT2021-08-16-W16","43","1","6134ff997b6f5c7e403dc701c7b2cec9",2,142,"เข้าใช้งานตารางไทม์ไม่ได้ ","ไม่มี","IT2021-08-16-W16-1629075370510.jpg",NULL,"กมลนัทธวรรณ หาญจินดาพงษ์",NULL,"SCT","0.00","141f76f3b648cd1d8d21cceed6b3b418","2021-08-16","2021-08-16","5997108712eef9df6ecab22f1f3728f9","07:58:06","09:20:53","5997108712eef9df6ecab22f1f3728f9","2021-08-21 01:00:26");
INSERT INTO problem_list VALUES(380,"IT2021-08-16-W17","43","1","6134ff997b6f5c7e403dc701c7b2cec9",2,154,"เข้าตาราง time ไม่ได้","ไม่มี",NULL,NULL,"ไพบูลย์","ไพบูลย์","PMN","0.00","2e34609794290a770cb0349119d78d21","2021-08-16","2021-08-16",NULL,"10:05:51","10:08:06",NULL,"2021-08-21 01:00:32");
INSERT INTO problem_list VALUES(381,"IT2021-08-16-W18","80","1","fc9c93f00e53b47b7bf01b72cd6180bd",2,101,"เข้าใช้งานโปรแกรมไทม์ในส่วนของการลงลาไม่ได้ แต่ส่วนอื่นปกติ","26-CLP-64-",NULL,NULL,"ณิชนันทน์","คุณณิชนันทน์ ","CLP ","0.00","befb5e146e599a9876757fb18ce5fa2e","2021-08-16","2021-08-16","5997108712eef9df6ecab22f1f3728f9","14:52:15","15:23:34",NULL,"2021-08-21 00:52:04");
INSERT INTO problem_list VALUES(382,"IT2021-08-16-W19","65","1","8af593251cd53494bf4f6cd658351815",2,9,"เข้าwinspeedไม่ได้เลย สัญญาณหลุดต่อไม่ได้","11-ZPE-58-07-04",NULL,NULL,"จุฑารัตน์","กล้าณรงค์","ZPE","0.00","2e34609794290a770cb0349119d78d21","2021-08-16","2021-08-16","ce63f18f7cf0a712fd4a2f47bc9ae14c","19:21:56","19:42:52",NULL,"2021-08-21 01:28:32");
INSERT INTO problem_list VALUES(383,"IT2021-08-17-W20","60","1","b17177683249bb2cda3472e14d984e60",2,142,"โปรแกรม TIME ค้าง","ไม่มี","IT2021-08-17-W20-after-Capture.JPG",NULL,"ธัญสุดา จันทร์ดวง","ศิริพงษ์","T21","0.00","befb5e146e599a9876757fb18ce5fa2e","2021-08-17","2021-08-17","f21ada1d50ad6673ce1efb578513ead6","13:33:01","13:33:58","f21ada1d50ad6673ce1efb578513ead6","2021-08-20 11:33:09");
INSERT INTO problem_list VALUES(384,"IT2021-08-17-W21","74","1","06ac11af0ac13b221a953bfb54ecaa92",2,154,"วินสปรีดเป็นภาษาอังกฤษช่วยเปลี่ยนเป็นภาษาไทย","22-CCW-62-07-10",NULL,"IT2021-08-17-W21-after-ไำพด.JPG","แพรวรัตน์","พี่ต๊ะ","CCW","0.00","2e34609794290a770cb0349119d78d21","2021-08-17","2021-08-17","f21ada1d50ad6673ce1efb578513ead6","18:25:38","18:39:26",NULL,"2021-08-21 01:30:27");
INSERT INTO problem_list VALUES(385,"IT2021-08-18-W22","72","1","7611717e7dfb53c91a776dcd505f9802",2,142,"โปรแกรม TIME ฝั่งการลาเข้าไม่ได้ค่ะ","ไม่มี",NULL,NULL,"โยทะกา","พิชามญช์ อธิธรรมพิทักษ์","SCP","0.00","befb5e146e599a9876757fb18ce5fa2e","2021-08-18","2021-08-18","5997108712eef9df6ecab22f1f3728f9","08:07:59","08:56:41",NULL,"2021-08-21 01:00:34");
INSERT INTO problem_list VALUES(386,"IT2021-08-18-W23","71","1","79ba10e5305e95e757761317a07fca37",2,148,"เครื่องปริ้นท์ไม่ได้ลงไดร์ฟเวอร์","ไม่มี",NULL,"IT2021-08-18-W23-after-cvbghj.JPG","ขวัญชนก",NULL,"ICS","0.00","2e34609794290a770cb0349119d78d21","2021-08-18","2021-08-18","f21ada1d50ad6673ce1efb578513ead6","14:30:18","15:01:01",NULL,"2021-08-21 01:32:10");
INSERT INTO problem_list VALUES(387,"IT2021-08-19-W24","70","1","b29017088b3135c435f9c7912ec2cdb2",8,154,"ขอดูกล้องวรจรปิดของวันที่ 19/8/21 ตั้งแต่เวลา 8.00 เนื่องจากคนส่งไข่เปิดระตูร้านเอง","ไม่มี",NULL,"IT2021-08-19-W24-after-Capture.JPG","มณฑ์ณลิน",NULL,"CR3","0.00","2e34609794290a770cb0349119d78d21","2021-08-19","2021-08-20","f21ada1d50ad6673ce1efb578513ead6","10:44:01","12:05:55","f21ada1d50ad6673ce1efb578513ead6","2021-08-21 01:04:00");
INSERT INTO problem_list VALUES(388,"IT2021-08-19-W25","5","1","d3cea0a13419c7b7d226a432af757ca4",2,101,"Warning: message 1mGFTO-0007Kz-MA delayed 24 hours","ไม่มี","IT2021-08-19-W25-1629358341386.jpeg","IT2021-08-19-W25-after-Capture.JPG","พรกมล",NULL,"HO","0.00","2e34609794290a770cb0349119d78d21","2021-08-19","2021-08-20","f21ada1d50ad6673ce1efb578513ead6","14:33:03","11:28:54",NULL,"2021-08-21 01:08:38");



# Dump of service 
# Dump DATE : 21-Aug-2021

DROP TABLE IF EXISTS service;
CREATE TABLE service (
  se_id int(11) NOT NULL AUTO_INCREMENT,
  se_sort int(3) DEFAULT NULL,
  se_name varchar(200) NOT NULL,
  se_group varchar(100) DEFAULT NULL,
  se_status int(1) NOT NULL DEFAULT 1,
  data_time datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (se_id)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;



INSERT INTO service VALUES(1,3,"แจ้งปัญหาการใช้งานอุปกรณ์ (Hardware)","1",1,"2021-08-21 01:34:45");
INSERT INTO service VALUES(2,2,"แจ้งปัญหาการใช้งานโปรแกรม (Software)","1",1,"2021-08-21 01:34:26");
INSERT INTO service VALUES(3,4,"แจ้งปัญหาการใช้งานอินเตอร์เน็ต (Internet&amp;amp;Network)","1",1,"2021-08-21 01:36:01");
INSERT INTO service VALUES(4,5,"ขอติดตั้งโปรแกรมหรือสิทธิ์การใช้งาน (Setup&amp;amp;License)","1",1,"2021-08-21 01:37:26");
INSERT INTO service VALUES(5,5,"อื่นๆ (Other)","1",0,"2021-02-14 21:26:06");
INSERT INTO service VALUES(6,6,"ยืมอุปกรณ์ IT (Borrowing Equipment IT)","1",1,"2021-08-21 01:40:20");
INSERT INTO service VALUES(7,1,"แจ้งปัญหาการใช้งาน App Food Story","1",1,"2021-08-21 01:43:14");
INSERT INTO service VALUES(8,7,"ขอสิทธิ์ดูกล้องวงจรปิด","1",1,"2021-08-19 14:41:30");
INSERT INTO service VALUES(9,9,"อื่นๆ","1",1,"2021-08-20 22:23:47");
INSERT INTO service VALUES(12,8,"แจ้งขอสำรองข้อมูลในระบบ","1",1,"2021-08-20 22:23:37");



# Dump of service_list 
# Dump DATE : 21-Aug-2021

DROP TABLE IF EXISTS service_list;
CREATE TABLE service_list (
  se_li_id int(11) NOT NULL AUTO_INCREMENT,
  se_id int(11) NOT NULL,
  se_li_name varchar(200) NOT NULL,
  se_li_status int(1) NOT NULL DEFAULT 1,
  data_time datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (se_li_id,se_id)
) ENGINE=InnoDB AUTO_INCREMENT=171 DEFAULT CHARSET=utf8;



INSERT INTO service_list VALUES(1,1,"Computer - คอมพิวเตอร์เปิดไม่ติด , ขึ้น Blue Screen, หน้าจอฟ้า, Windows error",1,"2020-05-15 15:52:27");
INSERT INTO service_list VALUES(2,1,"Monitor - หน้าจอไม่มีภาพขึ้น, หน้าจอภาพเป็นเส้น, หน้าจอเสีย",1,"2020-05-15 15:52:27");
INSERT INTO service_list VALUES(3,2,"Printer - ปริ้นไม่ออก, ปริ้นแล้วตัวหนังสือขาด ตกหล่น, ไม่ดึงกระดาษ, รหัสปริ้นหาย, หมึกหมด",1,"2021-08-21 01:48:13");
INSERT INTO service_list VALUES(4,1,"UPS - ไม่สำรองไฟ, เปิดไม่ติด, ขอเปลี่ยน, ขอเพิ่ม",1,"2020-05-15 15:52:27");
INSERT INTO service_list VALUES(5,2,"Printer Scanner - สแกนไม่ได้, ไม่มีแสกน",1,"2021-08-19 09:57:01");
INSERT INTO service_list VALUES(6,2,"Ms Word, Ms Excel เปิดไม่ขึ้น ค้าง ช้า",1,"2020-05-15 15:52:27");
INSERT INTO service_list VALUES(7,2,"Express ใช้งานไม่ได้ , Error ",1,"2021-01-12 23:36:24");
INSERT INTO service_list VALUES(8,2,"Browser Chrome, เปิดไม่ขึ้น ค้าง",1,"2020-05-15 15:52:27");
INSERT INTO service_list VALUES(9,3,"อินเตอร์เน็ทช้า อินเตอร์เน็ทเข้าไม่ได้",1,"2020-05-15 15:52:27");
INSERT INTO service_list VALUES(10,4,"ขอเปิดสิทธิ์สมัครการใช้งานระบบ สำหรับพนักงานใหม่",1,"2021-08-21 01:38:51");
INSERT INTO service_list VALUES(11,5,"เปลี่ยนแปลงแก้ไข E-Mail",1,"2021-08-20 22:19:27");
INSERT INTO service_list VALUES(99,1,"เครื่องปริ้นในครัว ปริ้นไม่ได้ , เปิดไม่ติด",1,"2021-01-12 22:35:37");
INSERT INTO service_list VALUES(100,2,"อื่น ๆ",0,"2021-02-13 23:15:50");
INSERT INTO service_list VALUES(101,3,"อื่น ๆ",1,"2020-05-15 15:52:27");
INSERT INTO service_list VALUES(102,4,"อื่น ๆ",0,"2021-02-21 22:22:47");
INSERT INTO service_list VALUES(103,5,"อื่น ๆ",0,"2021-01-12 22:45:03");
INSERT INTO service_list VALUES(109,1,"Keyboard, Mouse - ชำรุด, ค้าง, ขอเพิ่ม - เปลี่ยนใหม่",1,"2020-05-15 15:52:27");
INSERT INTO service_list VALUES(110,2,"ไม่สามารถอัพเดตโปรแกรมได้, โปรแกรมค้าง ช้า",1,"2021-08-21 01:49:06");
INSERT INTO service_list VALUES(111,9,"ขอปลดล็อค Youtube, G-mail",0,"2021-08-20 22:18:50");
INSERT INTO service_list VALUES(112,6,"รายการ 1",0,"2021-01-12 22:44:58");
INSERT INTO service_list VALUES(113,1,"อุปกรณ์ IPAD สายชาร์จ,หัวชาร์จแบต ขาด ชำรุด",1,"2021-01-12 22:36:54");
INSERT INTO service_list VALUES(114,1,"ชุดอุปกรณ์ Tablet สายชาร์จ , หัวชาร์จ ขาด ชำรุด",1,"2021-01-12 22:36:42");
INSERT INTO service_list VALUES(115,1,"เครื่องปริ้นบิล ปริ้นไม่ได้ , เปิดไม่ติด",1,"2021-01-12 22:36:06");
INSERT INTO service_list VALUES(116,9,"ขาตั้ง IPAD ชำรุด",0,"2021-08-19 14:42:25");
INSERT INTO service_list VALUES(117,1,"Notebook หน้าจอแตก , บานพับหัก ",1,"2021-01-12 22:43:15");
INSERT INTO service_list VALUES(118,6,"ขอยืมเครื่องสำรอง Notebook",1,"2021-01-12 22:48:02");
INSERT INTO service_list VALUES(119,6,"ขอยืมเครื่องสำรอง เครื่องปริ้นในครัว",1,"2021-01-12 22:48:24");
INSERT INTO service_list VALUES(120,6,"ขอยืมเครื่องสำรอง เครื่องปริ้นบิล",1,"2021-01-12 22:48:14");
INSERT INTO service_list VALUES(121,6,"ขอยืมเครื่องสำรอง เครื่องปริ้นเอกสาร",1,"2021-01-12 22:50:04");
INSERT INTO service_list VALUES(122,1,"Router , Hub ดับ , เสีย",1,"2021-01-12 22:51:20");
INSERT INTO service_list VALUES(123,1,"UniFi UAP ตัวกระจายสัญญาณ ของ Food Story  ดับ , เสีย",1,"2021-01-12 22:53:04");
INSERT INTO service_list VALUES(124,1,"เครื่องสแกนนิ้ว",1,"2021-01-12 22:55:10");
INSERT INTO service_list VALUES(125,7,"Food Story ค้าง , เด้งปิดตัวเอง",1,"2021-01-12 23:02:21");
INSERT INTO service_list VALUES(126,7,"Food Story รอบการขายหาย",1,"2021-01-12 23:03:09");
INSERT INTO service_list VALUES(127,7,"Food Story ขึ้น Connect Fail",1,"2021-01-12 23:05:03");
INSERT INTO service_list VALUES(128,7,"Food Story เด้งการพิมพ์ไม่สำเร็จ",1,"2021-01-12 23:05:59");
INSERT INTO service_list VALUES(129,7,"Food Story ไม่สามารถ Log In เข้าใช้งานแอพได้ ขึ้น No Wi - Fi",1,"2021-01-12 23:12:13");
INSERT INTO service_list VALUES(130,7,"อื่นๆ",1,"2021-08-21 01:59:18");
INSERT INTO service_list VALUES(131,7,"ไม่มีปุ่มกดเมนู",1,"2021-01-12 23:14:23");
INSERT INTO service_list VALUES(132,7,"ไม่มีปุ่มกด Settle บันทึกรายการขาย",1,"2021-01-12 23:18:29");
INSERT INTO service_list VALUES(133,7,"Food Story ปิดรอบการขายไม่ได้เนื่องจาก Internet หลุด",1,"2021-01-12 23:16:33");
INSERT INTO service_list VALUES(134,1,"USB Port LAN IPAD เสีย",1,"2021-01-12 23:17:26");
INSERT INTO service_list VALUES(135,7,"Food Story มีเครื่องหลัก 2 เครื่อง",1,"2021-01-12 23:20:39");
INSERT INTO service_list VALUES(136,7,"Food Story เครื่องลูก เชื่อมต่อเครื่องแม่ไม่ได้",1,"2021-01-12 23:20:21");
INSERT INTO service_list VALUES(137,7,"Food Story พิมพ์รายงานปิดรอบขายไม่ได้",1,"2021-01-12 23:21:15");
INSERT INTO service_list VALUES(138,7,"อื่นๆ",0,"2021-08-21 01:43:28");
INSERT INTO service_list VALUES(139,2,"Winspeed ขึ้นไม่เชื่อมต่อฐานข้อมูล",1,"2021-01-12 23:23:50");
INSERT INTO service_list VALUES(140,2,"Winspeed เด้งหลุด , Error , ค้าง",1,"2021-01-12 23:24:39");
INSERT INTO service_list VALUES(141,2,"Cloud ไม่อัพเดทข้อมูล , ข้อมูลหาย",1,"2021-01-12 23:26:04");
INSERT INTO service_list VALUES(142,2,"โปรแกรมสแกนนิ้ว เปิดไม่ได้ , ข้อมูลไม่อัพเดท , ข้อมูลหาย",1,"2021-01-12 23:27:54");
INSERT INTO service_list VALUES(143,2,"Email ใช้งานไม่ได้ , หาย , ส่งไม่สำเร็จ , แจ้ง Email เต็ม , Ms Outlook เปิดไม่ขึ้น",1,"2021-01-12 23:32:48");
INSERT INTO service_list VALUES(144,2,"Prosoft Fixed Assets ขึ้นภาษาต่างด้าว , Winspeed ขึ้นภาษาต่างด้าว",1,"2021-01-12 23:38:07");
INSERT INTO service_list VALUES(145,2,"Prosoft Fixed Assets เชื่อมต่อไม่ได้ , Error",1,"2021-01-12 23:38:42");
INSERT INTO service_list VALUES(146,2,"BPlus Error , ค้าง , ช้า",1,"2021-01-12 23:42:03");
INSERT INTO service_list VALUES(147,2,"Windows Error",1,"2021-01-12 23:42:59");
INSERT INTO service_list VALUES(148,7,"อื่นๆ",0,"2021-08-21 01:46:56");
INSERT INTO service_list VALUES(149,6,"อื่นๆ",1,"2021-01-12 23:48:45");
INSERT INTO service_list VALUES(150,2,"อื่นๆ",0,"2021-02-21 22:18:16");
INSERT INTO service_list VALUES(151,2,"โปรแกรม Word , Excel , PowerPoints ค้าง, ช้า, เด้งออก, Error",1,"2021-08-21 01:51:06");
INSERT INTO service_list VALUES(152,4,"ขอดูกล้องวงจรปิด",0,"2021-08-19 14:43:54");
INSERT INTO service_list VALUES(153,5,"ขอเพิ่ม E-Mail",1,"2021-08-20 22:17:34");
INSERT INTO service_list VALUES(154,8,"ขอเช็คกล้องวงจรปิด",1,"2021-08-21 01:41:54");
INSERT INTO service_list VALUES(155,4,"ขอติดตั้งโปรแกรม",1,"2021-08-19 14:42:34");
INSERT INTO service_list VALUES(156,12,"โปรแกรมเงินเดือน",1,"2021-08-20 10:01:16");
INSERT INTO service_list VALUES(157,12,"โปรแกรมสแกนนิ้ว บริษัท โนเบิลเรสเตอท์รองต์ จำกัด",1,"2021-08-20 10:01:55");
INSERT INTO service_list VALUES(158,12,"โปรแกรมสแกนนิ้ว บริษัท ฟู้ดมาสเตอร์ จำกัด",1,"2021-08-20 10:02:10");
INSERT INTO service_list VALUES(159,12,"โปรแกรมสแกนนิ้ว Wizecenter",1,"2021-08-20 10:02:56");
INSERT INTO service_list VALUES(160,12,"โปรแกรมสแกนนิ้ว บริษัท Golden Sand Mine (ทราย) ",1,"2021-08-20 10:04:12");
INSERT INTO service_list VALUES(161,12,"สำรองข้อมูลทั่วไป",1,"2021-08-20 10:05:34");
INSERT INTO service_list VALUES(162,12,"สำรองข้อมูลในระบบ Winspeed",1,"2021-08-20 10:05:59");
INSERT INTO service_list VALUES(163,1,"อื่นๆ",1,"2021-08-21 01:44:18");
INSERT INTO service_list VALUES(164,4,"อื่นๆ",1,"2021-08-21 01:44:42");
INSERT INTO service_list VALUES(165,12,"อื่นๆ",0,"2021-08-21 01:54:33");
INSERT INTO service_list VALUES(166,7,"ราคาผิด",1,"2021-08-21 01:46:46");
INSERT INTO service_list VALUES(167,7,"ไม่มีปุ่มส่วนลด",1,"2021-08-21 01:59:29");
INSERT INTO service_list VALUES(168,12,"โปรแกรม Express",1,"2021-08-21 01:53:57");
INSERT INTO service_list VALUES(169,12,"อื่นๆ",1,"2021-08-21 01:54:41");
INSERT INTO service_list VALUES(170,2,"อื่นๆ",1,"2021-08-21 02:00:57");



# Dump of system_alert 
# Dump DATE : 21-Aug-2021

DROP TABLE IF EXISTS system_alert;
CREATE TABLE system_alert (
  alert_key char(150) NOT NULL,
  alert_line_token char(150) DEFAULT NULL,
  alert_mail_server varchar(255) DEFAULT NULL,
  alert_mail_user varchar(100) DEFAULT NULL,
  alert_mail_pass varchar(50) DEFAULT NULL,
  alert_mail_get varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



INSERT INTO system_alert VALUES("cd5fe35c5af97026fd4efdfe4afd4376","fwmQKO62mB75pfUtg8yjsQiRDseL7NjC2e32pwdPfvg",NULL,"it@nbrest.com","5NpFBTEWdi","it@nbrest.com");



# Dump of system_info 
# Dump DATE : 21-Aug-2021

DROP TABLE IF EXISTS system_info;
CREATE TABLE system_info (
  site_key char(32) NOT NULL,
  site_logo varchar(256) NOT NULL,
  site_favicon varchar(256) NOT NULL,
  site_name varchar(255) DEFAULT NULL,
  site_color_form varchar(255) DEFAULT NULL,
  site_color_name varchar(255) DEFAULT NULL,
  time_zone varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



INSERT INTO system_info VALUES("8f411b77c389d5de467af8f2c0e91cda","logo1.jpg","logo1.jpg","Service System IT (SSIT)","#030e44","#15aaf6","Asia/Bangkok");



# Dump of user 
# Dump DATE : 21-Aug-2021

DROP TABLE IF EXISTS user;
CREATE TABLE user (
  id int(11) NOT NULL AUTO_INCREMENT,
  user_key char(32) NOT NULL,
  name varchar(64) NOT NULL,
  lastname varchar(64) DEFAULT NULL,
  username varchar(64) NOT NULL,
  password varchar(32) NOT NULL DEFAULT '81dc9bdb52d04dc20036dbd8313ed055',
  user_photo varchar(128) NOT NULL DEFAULT 'noimg.jpg',
  user_class tinyint(1) NOT NULL DEFAULT 1 COMMENT '1=user,2=admin,3=super admin',
  user_status tinyint(1) NOT NULL DEFAULT 1,
  email varchar(128) DEFAULT NULL,
  data_time datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (id)
) ENGINE=MyISAM AUTO_INCREMENT=50 DEFAULT CHARSET=utf8;



INSERT INTO user VALUES(1,"ce63f18f7cf0a712fd4a2f47bc9ae14c","ผู้ดูแล","ระบบ","superadmin","6f518c31f6baa365f55c38d11cc349d1","noimg.jpg",3,1,"it@nbrest.com","2021-08-18 16:07:22");
INSERT INTO user VALUES(2,"9c087e62260bb920a27f22951ccb8e6e","เจ้า","หน้าที่","admin","81dc9bdb52d04dc20036dbd8313ed055","noimg.jpg",2,0,NULL,"2021-02-11 17:25:58");
INSERT INTO user VALUES(3,"1ca81a2da074ea0a2c54dc6dcc180cdf","ผู้ใช้","งาน","user","81dc9bdb52d04dc20036dbd8313ed055","noimg.jpg",1,0,NULL,"2021-01-26 14:28:52");
INSERT INTO user VALUES(4,"16485085fc8bb978628a63f51cf7e085","CTW","MOMO","ctw","81dc9bdb52d04dc20036dbd8313ed055","noimg.jpg",1,0,"momocw@nbrest.com","2021-02-14 23:49:41");
INSERT INTO user VALUES(5,"49a117674e8b6d76eaacc99d38536d28","CDC","MOMO","cdc","81dc9bdb52d04dc20036dbd8313ed055","noimg.jpg",1,0,"momocdc@nbrest.com","2021-08-19 13:49:59");
INSERT INTO user VALUES(6,"2ff6eeaf9f4535e14f92b4662b01cc36","CPK","MOMO","cpk","c7e694055489cb2051195a2be1740992","noimg.jpg",1,0,"momocpk@nbrest.com","2021-02-14 23:49:52");
INSERT INTO user VALUES(7,"11c0009be8f4e977c6998edce04c9b2e","เจนจิรา","แก้วสมบูรณ์","janejira","81dc9bdb52d04dc20036dbd8313ed055","noimg.jpg",3,1,"nudeezaka@gmail.com","2021-03-26 11:21:50");
INSERT INTO user VALUES(8,"f21ada1d50ad6673ce1efb578513ead6","ปัฐพี","ทองอร่าม","pattapee","b0baee9d279d34fa1dfd71aadb908c3f","noimg.jpg",3,1,"pattapee.pee@gmail.com","2021-04-30 16:26:42");
INSERT INTO user VALUES(9,"bbaf8a58eaf567ac5c5e52a04e3ca279","Human","Resource","HR","81dc9bdb52d04dc20036dbd8313ed055","noimg.jpg",1,0,"hr@nbrest.com","2021-02-15 13:55:53");
INSERT INTO user VALUES(10,"cf4178eda791cfcbd3f20efe1a1ec35a","CTW","Mo-Mo","CTW ","81dc9bdb52d04dc20036dbd8313ed055","noimg.jpg",1,1,"momocw@nbrest.com","2021-02-17 10:30:18");
INSERT INTO user VALUES(11,"b17177683249bb2cda3472e14d984e60","T21","Mo-Mo","T21","81dc9bdb52d04dc20036dbd8313ed055","noimg.jpg",1,1,"momot21@nbrest.com","2021-02-17 10:30:26");
INSERT INTO user VALUES(12,"6340f02bed9ccc2a8a79007a3d67a9ad","CR9","Mo-Mo","CR9","81dc9bdb52d04dc20036dbd8313ed055","noimg.jpg",1,1,"momocr9@nbrest.com","2021-08-19 13:50:09");
INSERT INTO user VALUES(13,"696d924c3decaabd113b928b63cb8e9e","PMN","Mo-Mo","PMN","81dc9bdb52d04dc20036dbd8313ed055","noimg.jpg",1,1,"momopmn@nbrest.com","2021-08-19 13:50:49");
INSERT INTO user VALUES(14,"9aa946d6abfcb4cfc9ee258593eff00f","CBN","Mo-Mo","CBN","81dc9bdb52d04dc20036dbd8313ed055","noimg.jpg",1,1,"momocbn@nbrest.com","2021-08-19 13:50:47");
INSERT INTO user VALUES(15,"9cc29e8c2b924de0fd3ef55737a159c0","CRP","Mo-Mo","CRP","81dc9bdb52d04dc20036dbd8313ed055","noimg.jpg",1,1,"momocrp@nbrest.com","2021-08-19 13:50:45");
INSERT INTO user VALUES(16,"8af593251cd53494bf4f6cd658351815","ZPE","Mo-Mo","ZPE","a376802c0811f1b9088828288eb0d3f0","noimg.jpg",1,1,"momozpell@nbrest.com","2021-08-19 13:50:39");
INSERT INTO user VALUES(17,"e782c0270070c7ff34dc7984a3643741","MBP","Mo-Mo","MBP","81dc9bdb52d04dc20036dbd8313ed055","noimg.jpg",1,1,"momombp@nbrest.com","2021-08-19 13:50:36");
INSERT INTO user VALUES(18,"9fe4987d685fcbff9b1a3011cdd12b35","SCQ","Mo-Mo","SCQ","81dc9bdb52d04dc20036dbd8313ed055","noimg.jpg",1,1,"momoscq@nbrest.com","2021-08-19 13:50:34");
INSERT INTO user VALUES(19,"cec9ac90af27b74546e22910bdc5bfff","CPK","Mo-Mo","CPK","81dc9bdb52d04dc20036dbd8313ed055","noimg.jpg",1,1,"momocpk@nbrest.com","2021-08-19 13:50:32");
INSERT INTO user VALUES(20,"859cd041e3fe84e5e65b5c178452841f","MGB","Mo-Mo","MGB","81dc9bdb52d04dc20036dbd8313ed055","noimg.jpg",1,1,"momomgb@nbrest.com","2021-08-19 13:50:30");
INSERT INTO user VALUES(21,"b29017088b3135c435f9c7912ec2cdb2","CR3","Mo-Mo","CR3","81dc9bdb52d04dc20036dbd8313ed055","noimg.jpg",1,1,"momocr3@nbrest.com","2021-08-19 13:50:28");
INSERT INTO user VALUES(22,"79ba10e5305e95e757761317a07fca37","ICS","Mo-Mo","ICS","81dc9bdb52d04dc20036dbd8313ed055","noimg.jpg",1,1,"momoics@nbrest.com","2021-08-19 13:50:26");
INSERT INTO user VALUES(23,"7611717e7dfb53c91a776dcd505f9802","SCP","Mo-Mo","SCP","81dc9bdb52d04dc20036dbd8313ed055","noimg.jpg",1,1,"momoscp@nbrest.com","2021-02-16 16:17:41");
INSERT INTO user VALUES(24,"451453af732f6b70835c9dcec5db3b93","TMK","Mo-Mo","TMK","81dc9bdb52d04dc20036dbd8313ed055","noimg.jpg",1,1,"momotmk@nbrest.com","2021-08-19 13:50:17");
INSERT INTO user VALUES(25,"3db564ba6fc573bad2628be5b7de4855","NEB","Nabezo","NEB","81dc9bdb52d04dc20036dbd8313ed055","noimg.jpg",1,1,"nabezo_embassy@nbrest.com","2021-08-19 13:50:24");
INSERT INTO user VALUES(26,"6809f49f86586a97cb888adc3119668b","NGS","Nabezo","NGS","81dc9bdb52d04dc20036dbd8313ed055","noimg.jpg",1,1,"nabezo_gaysorn@nbrest.com","2021-02-16 16:17:18");
INSERT INTO user VALUES(27,"bfa7daa6736959ef0ec9b2ee01c1d656","SCT","Mo-Mo","SCT","81dc9bdb52d04dc20036dbd8313ed055","noimg.jpg",1,1,"momosct@nbrest.com","2021-02-16 16:17:52");
INSERT INTO user VALUES(28,"52f2a5ca589fe4b36097dd5c55c4ac9c","CWG","Mo-Mo","CWG","81dc9bdb52d04dc20036dbd8313ed055","noimg.jpg",1,1,"momocgw@nbrest.com","2021-08-13 08:55:15");
INSERT INTO user VALUES(29,"06ac11af0ac13b221a953bfb54ecaa92","CCW","Mo-Mo","CCW","81dc9bdb52d04dc20036dbd8313ed055","noimg.jpg",1,1,"momoccw@nbrest.com","2021-02-16 16:15:58");
INSERT INTO user VALUES(30,"46c567b86f983d75f5eabd2492597c62","test","Mo-Mo","TEST","81dc9bdb52d04dc20036dbd8313ed055","noimg.jpg",1,0,"test@gmail.com","2021-03-26 11:24:02");
INSERT INTO user VALUES(31,"b496e28463b931118820246a08cf9826","CDC","Mo-Mo","CDC","81dc9bdb52d04dc20036dbd8313ed055","noimg.jpg",1,1,"momocdc@gmail.com","2021-02-15 10:52:38");
INSERT INTO user VALUES(32,"3ae8086fb05d3435d3dcd9cd1565a454","Account","Noble","account","81dc9bdb52d04dc20036dbd8313ed055","noimg.jpg",1,1,"accounting@nbrest.com","2021-02-15 13:55:14");
INSERT INTO user VALUES(33,"d3cea0a13419c7b7d226a432af757ca4","HR","Noble","HR","81dc9bdb52d04dc20036dbd8313ed055","noimg.jpg",1,1,"hr@nbrest.com","2021-02-15 13:57:43");
INSERT INTO user VALUES(34,"ed6b1d41694cc31a1bc8a0f659d5faf7","Finance","Noble","finance","81dc9bdb52d04dc20036dbd8313ed055","noimg.jpg",1,1,"finance@nbrest.com","2021-02-15 14:28:45");
INSERT INTO user VALUES(35,"d5b14c346b88725387c282ac7b851ad8","Purchase","Noble","purchase","81dc9bdb52d04dc20036dbd8313ed055","noimg.jpg",1,1,"purchase@nbrest.com","2021-02-15 14:36:10");
INSERT INTO user VALUES(36,"0049430d869cc1e24dfb88398666d959","Marketing","Noble","marketing","81dc9bdb52d04dc20036dbd8313ed055","noimg.jpg",1,1,"marketing@nbrest.com","2021-02-15 14:37:39");
INSERT INTO user VALUES(37,"6ccdcc01b4cbc496cab3ed0c7fb20cac","Admin","Noble","admin","81dc9bdb52d04dc20036dbd8313ed055","noimg.jpg",1,1,"admin@nbrest.com","2021-02-15 14:40:36");
INSERT INTO user VALUES(38,"3b28104db64a6f4666ddff80f3c79e2b","Supervisor","Noble","sv","81dc9bdb52d04dc20036dbd8313ed055","noimg.jpg",1,0,"supervisor@nbrest.com","2021-03-05 14:05:19");
INSERT INTO user VALUES(39,"fc9c93f00e53b47b7bf01b72cd6180bd","CLP","Mo-Mo","CLP","81dc9bdb52d04dc20036dbd8313ed055","noimg.jpg",1,1,"momoclp@nbrest.com","2021-05-07 17:49:51");
INSERT INTO user VALUES(40,"8cd102f646c6ae2d8fc4e5bfdb75800f","Supervisor","Noble","SV","5983ce03fc25b4635c0143db1ae29fc9","noimg.jpg",1,0,"Supervisor@nbrest.com","2021-03-05 14:46:30");
INSERT INTO user VALUES(41,"83b8c4f986cccac06a2f458a106cc773","รชานนท์","แก้วงาม","rachanon","1bdb27d07286b87dc79a3141ef4bd3c2","noimg.jpg",1,1,"kanmopara@gmail.com","2021-03-02 23:02:30");
INSERT INTO user VALUES(42,"6134ff997b6f5c7e403dc701c7b2cec9","Supervisor","Noble","SV","81dc9bdb52d04dc20036dbd8313ed055","noimg.jpg",1,1,"supervisor@nbrest.com","2021-03-05 14:47:22");
INSERT INTO user VALUES(43,"cfef909e353c8db298c5afccf010578a","warehouse","Noble","WH","81dc9bdb52d04dc20036dbd8313ed055","noimg.jpg",1,1,"wh@nbrest.com","2021-03-05 15:09:06");
INSERT INTO user VALUES(44,"5997108712eef9df6ecab22f1f3728f9","เสาวรักษ์","เอี่ยมภู่","saowaruk","315f006f691ef2e689125614ea22cc61","noimg.jpg",2,1,"saowaruk.a@nbrest.com","2021-03-11 13:45:26");
INSERT INTO user VALUES(45,"23ae8fd2022f767f5c90728825132b90","ปทุมกาญจน์","สุวรรณา","pathumkan","c82a7178ece03ba6ee8051cc36691bdc","noimg.jpg",2,1,"pathumkan.s@nbrest.com","2021-03-12 15:32:37");
INSERT INTO user VALUES(46,"a60af60cc188e40bca694274e06eaf08","Operation","Noble","operation","81dc9bdb52d04dc20036dbd8313ed055","noimg.jpg",1,1,"supervisor@nbrest.com","2021-03-24 15:58:04");
INSERT INTO user VALUES(47,"980b7ed37ca11aa01f35284afcad5dbb","marketing","nbrest","marketing","81dc9bdb52d04dc20036dbd8313ed055","noimg.jpg",1,1,"marketing@nbrest.com","2021-04-19 10:38:34");
INSERT INTO user VALUES(48,"2d7a80fc55f6ff49c227852ac35fc3f5","desing","noble","desing","81dc9bdb52d04dc20036dbd8313ed055","noimg.jpg",1,1,"desing@nbrest.com","2021-04-26 08:45:59");
INSERT INTO user VALUES(49,"29f6d8cc66413451f07364c479e417cf","SRI","Mo-Mo","SRI","81dc9bdb52d04dc20036dbd8313ed055","noimg.jpg",1,1,"momosri@nbrest.com","2021-08-13 11:15:12");



# Dump of user_online 
# Dump DATE : 21-Aug-2021

DROP TABLE IF EXISTS user_online;
CREATE TABLE user_online (
  osession varchar(128) CHARACTER SET utf8 NOT NULL DEFAULT '',
  user_key varchar(32) CHARACTER SET utf8 NOT NULL,
  otime int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



INSERT INTO user_online VALUES("95522vphtn7a7tbgki5envcgs4","85dc6d4bd6e7189330a9e2b7b39408c2",1566376833);



