# Dump of access_list 
# Dump DATE : 07-Mar-2021

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
INSERT INTO access_list VALUES("26f7e62109e2566eaec8b01fe8e3598d","รายการที่ยังไม่สมบูรณ์","card_create",0,2);
INSERT INTO access_list VALUES("295744c466c17b46170f88b5c1b9104d","รายการสินทรัพย์ IT","asset_it",0,1);
INSERT INTO access_list VALUES("acac0001f4c9f206256b9a2dfe433b42","รายการสินทรัพย์องค์กร","asset",0,2);
INSERT INTO access_list VALUES("b2da7cf13723d3c50719e45cf1587edd","แจ้งซ่อมฝ่ายอาคาร","maintenance",0,0);
INSERT INTO access_list VALUES("f1344bc0fb9c5594fa0e3d3f37a56957","พนักงาน","employee",0,1);



# Dump of access_user 
# Dump DATE : 07-Mar-2021

DROP TABLE IF EXISTS access_user;
CREATE TABLE access_user (
  access_key char(32) NOT NULL,
  user_key char(32) NOT NULL,
  access_status tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



INSERT INTO access_user VALUES("f1344bc0fb9c5594fa0e3d3f37a56957","ce63f18f7cf0a712fd4a2f47bc9ae14c",1);
INSERT INTO access_user VALUES("295744c466c17b46170f88b5c1b9104d","ce63f18f7cf0a712fd4a2f47bc9ae14c",1);
INSERT INTO access_user VALUES("21adef826d326d4bae44eb0c9e19b8b1","ce63f18f7cf0a712fd4a2f47bc9ae14c",1);
INSERT INTO access_user VALUES("b2da7cf13723d3c50719e45cf1587edd","ce63f18f7cf0a712fd4a2f47bc9ae14c",1);
INSERT INTO access_user VALUES("f1344bc0fb9c5594fa0e3d3f37a56957","9c087e62260bb920a27f22951ccb8e6e",1);
INSERT INTO access_user VALUES("295744c466c17b46170f88b5c1b9104d","9c087e62260bb920a27f22951ccb8e6e",1);
INSERT INTO access_user VALUES("21adef826d326d4bae44eb0c9e19b8b1","9c087e62260bb920a27f22951ccb8e6e",1);
INSERT INTO access_user VALUES("b2da7cf13723d3c50719e45cf1587edd","9c087e62260bb920a27f22951ccb8e6e",1);
INSERT INTO access_user VALUES("f1344bc0fb9c5594fa0e3d3f37a56957","11c0009be8f4e977c6998edce04c9b2e",1);
INSERT INTO access_user VALUES("295744c466c17b46170f88b5c1b9104d","11c0009be8f4e977c6998edce04c9b2e",1);
INSERT INTO access_user VALUES("21adef826d326d4bae44eb0c9e19b8b1","11c0009be8f4e977c6998edce04c9b2e",1);
INSERT INTO access_user VALUES("21adef826d326d4bae44eb0c9e19b8b1","2ff6eeaf9f4535e14f92b4662b01cc36",1);
INSERT INTO access_user VALUES("295744c466c17b46170f88b5c1b9104d","16485085fc8bb978628a63f51cf7e085",1);
INSERT INTO access_user VALUES("21adef826d326d4bae44eb0c9e19b8b1","f21ada1d50ad6673ce1efb578513ead6",1);
INSERT INTO access_user VALUES("f1344bc0fb9c5594fa0e3d3f37a56957","83b8c4f986cccac06a2f458a106cc773",1);
INSERT INTO access_user VALUES("295744c466c17b46170f88b5c1b9104d","83b8c4f986cccac06a2f458a106cc773",1);
INSERT INTO access_user VALUES("21adef826d326d4bae44eb0c9e19b8b1","83b8c4f986cccac06a2f458a106cc773",1);



# Dump of asset 
# Dump DATE : 07-Mar-2021

DROP TABLE IF EXISTS asset;
CREATE TABLE asset (
  as_keyID char(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  as_code varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  company varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'บริษัท/สังกัด',
  as_name_thai varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  as_name_eng varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  as_detail text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  as_pic varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  as_file varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'ไฟล์เพิ่มเติม',
  ck_file int(2) NOT NULL,
  date_buy date NOT NULL,
  as_location varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  user_res varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '-' COMMENT 'ผู้รับผิดชอบ',
  user_use varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'ผู้ใช้งาน',
  date_start date DEFAULT NULL COMMENT 'วันที่เริ่มยืม',
  date_end date DEFAULT NULL COMMENT 'วันที่คืน',
  date_insert datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  as_status varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '1 โอน, 2 ยืม, 3 ขาย',
  insert_by varchar(255) NOT NULL COMMENT 'ผู้บันทึก',
  status int(2) NOT NULL DEFAULT 1 COMMENT '1 ใช้งาน 2 ลบ',
  PRIMARY KEY (as_keyID)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






# Dump of asset_history 
# Dump DATE : 07-Mar-2021

DROP TABLE IF EXISTS asset_history;
CREATE TABLE asset_history (
  as_ID int(6) NOT NULL AUTO_INCREMENT,
  as_keyID char(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  do_stamp varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  user_stamp char(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  text_comment mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  as_status int(1) NOT NULL,
  user_key char(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  date_now datetime NOT NULL,
  PRIMARY KEY (as_ID)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;






# Dump of asset_print 
# Dump DATE : 07-Mar-2021

DROP TABLE IF EXISTS asset_print;
CREATE TABLE asset_print (
  ID int(20) unsigned NOT NULL AUTO_INCREMENT,
  p_as_keyID varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Asset KeyID',
  p_user varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Key for user',
  date_time datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  p_status int(11) NOT NULL DEFAULT 1 COMMENT '1 selectprint 0 delete 2 successprint',
  p_status_add int(2) NOT NULL DEFAULT 1 COMMENT '1 selectprint 0 printsuccess',
  PRIMARY KEY (ID) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;






# Dump of backup_logs 
# Dump DATE : 07-Mar-2021

DROP TABLE IF EXISTS backup_logs;
CREATE TABLE backup_logs (
  backup_key varchar(32) NOT NULL,
  backup_file varchar(256) NOT NULL,
  backup_date timestamp NOT NULL DEFAULT current_timestamp(),
  user_key char(32) NOT NULL,
  PRIMARY KEY (backup_key)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



INSERT INTO backup_logs VALUES("14c75cdc3536bfd2d71089bf73911248","2020-12-12.bk.sql","2020-12-12 13:31:08","ce63f18f7cf0a712fd4a2f47bc9ae14c");



# Dump of building_comment 
# Dump DATE : 07-Mar-2021

DROP TABLE IF EXISTS building_comment;
CREATE TABLE building_comment (
  ID int(6) NOT NULL AUTO_INCREMENT,
  ticket varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  admin_update varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  card_status varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  comment varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  price varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  date datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (ID)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;






# Dump of building_list 
# Dump DATE : 07-Mar-2021

DROP TABLE IF EXISTS building_list;
CREATE TABLE building_list (
  ID int(5) NOT NULL AUTO_INCREMENT,
  ticket varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  department varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  company varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  user_key varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  se_id int(2) DEFAULT NULL,
  se_li_id int(2) DEFAULT NULL,
  se_other varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  se_price varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  card_status varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  date date DEFAULT NULL,
  date_update date DEFAULT '0000-00-00',
  admin_update varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  time_start time DEFAULT NULL,
  time_update time DEFAULT NULL,
  PRIMARY KEY (ID)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;



INSERT INTO building_list VALUES(1,"BD/MTN2020-12-W01","45","1","ce63f18f7cf0a712fd4a2f47bc9ae14c",6,112,"w",NULL,NULL,"2020-12-21","0000-00-00",NULL,"21:22:47",NULL);



# Dump of card_info 
# Dump DATE : 07-Mar-2021

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
# Dump DATE : 07-Mar-2021

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
# Dump DATE : 07-Mar-2021

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
# Dump DATE : 07-Mar-2021

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
# Dump DATE : 07-Mar-2021

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
INSERT INTO card_type VALUES("141f76f3b648cd1d8d21cceed6b3b418","กำลังดำเนินการตรวจสอบ","#fff994",1,3,"2021-03-03 22:18:49");
INSERT INTO card_type VALUES("27e87048f9283b6e13347df4388c98e9","กำลังส่งเครื่องสำรอง","#dc88e2",1,3,"2021-01-13 00:17:52");
INSERT INTO card_type VALUES("2e34609794290a770cb0349119d78d21","แก้ไขเสร็จเรียบร้อย","#26eb15",1,3,"2018-12-08 13:47:10");
INSERT INTO card_type VALUES("3b2bd9e319992d5b63bfbbd7301b6882","รอดำเนินการสั่งซื้ออุปกรณ์","#bc680f",1,3,"2020-02-18 11:45:58");
INSERT INTO card_type VALUES("47ea92cfc142a08b40abe2ddbf8837a8","กำลังซ่อม","#feb43f",1,3,"2018-12-08 13:48:29");
INSERT INTO card_type VALUES("57995055c28df9e82476a54f852bd214","ยกเลิกการแจ้ง","#ff0000",1,3,"2018-12-08 13:49:07");
INSERT INTO card_type VALUES("5b93205f13e238f5a1904e095016e81f","คืนแล้ว","#100ceb",1,3,"2019-05-23 15:36:24");
INSERT INTO card_type VALUES("5cafc78523f4f5e4812f9545b2ba5ae7","แจ้งดำเนินการอีกครั้ง","#ff000b",1,3,"2020-02-17 13:59:03");
INSERT INTO card_type VALUES("5dbc98dcc983a70728bd082d1a47546e","S","#000000",2,3,"2020-12-18 19:54:46");
INSERT INTO card_type VALUES("968d42cbf280bc3c26103d31955bae59","ส่งเครื่องสำรองเรียบร้อย","#93ff61",1,3,"2021-02-21 22:16:53");
INSERT INTO card_type VALUES("9ba0f256a5f620136568c6b47dcb24bd","ขอยืมเครื่องสำรอง","#ed4e09",1,3,"2018-12-08 13:54:34");
INSERT INTO card_type VALUES("befb5e146e599a9876757fb18ce5fa2e","รับดำเนินการแก้ไข","#38c7d8",1,3,"2020-02-04 15:10:13");
INSERT INTO card_type VALUES("f2c50a9a3e802c7be809f7f506b2b46a","รอเปลี่ยนอะไหล่","#ebae13",1,3,"2018-12-08 13:51:30");



# Dump of company 
# Dump DATE : 07-Mar-2021

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
# Dump DATE : 07-Mar-2021

DROP TABLE IF EXISTS department_name;
CREATE TABLE department_name (
  id int(11) NOT NULL AUTO_INCREMENT,
  department_name varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ชื่อแผนก',
  department_status int(1) NOT NULL DEFAULT 1 COMMENT '1 use 0 del',
  PRIMARY KEY (id) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



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



# Dump of device_type 
# Dump DATE : 07-Mar-2021

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
# Dump DATE : 07-Mar-2021

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
INSERT INTO employee VALUES("49a117674e8b6d76eaacc99d38536d28",4," CDC","MOMO","Branch (สาขา)","57",1,0,"2021-02-14 23:49:47");
INSERT INTO employee VALUES("2ff6eeaf9f4535e14f92b4662b01cc36",4,"CPK","MOMO","Branch (สาขา)","57",1,0,"2021-02-14 23:49:52");
INSERT INTO employee VALUES("11c0009be8f4e977c6998edce04c9b2e",2,"เจนจิรา","แก้วสมบูรณ์","IT Support","45",1,1,"2021-01-13 00:37:47");
INSERT INTO employee VALUES("f21ada1d50ad6673ce1efb578513ead6",1,"ปัฐพี","ทองอร่าม","IT Support","45",1,1,"2021-01-13 13:31:36");
INSERT INTO employee VALUES("bbaf8a58eaf567ac5c5e52a04e3ca279",11,"Human","Resource","ฝ่าย","5",1,0,"2021-02-15 13:55:53");
INSERT INTO employee VALUES("cf4178eda791cfcbd3f20efe1a1ec35a",4,"CTW","Mo-Mo","Branch","58",1,1,"2021-02-14 23:52:48");
INSERT INTO employee VALUES("b17177683249bb2cda3472e14d984e60",4,"T21","Mo-Mo","Branch","60",1,1,"2021-02-14 23:59:16");
INSERT INTO employee VALUES("6340f02bed9ccc2a8a79007a3d67a9ad",4," CR9","Mo-Mo","Branch","61",1,1,"2021-02-15 00:00:10");
INSERT INTO employee VALUES("696d924c3decaabd113b928b63cb8e9e",4," PMN","Mo-Mo","Branch","62",1,1,"2021-02-15 00:00:48");
INSERT INTO employee VALUES("9aa946d6abfcb4cfc9ee258593eff00f",4," CBN","Mo-Mo","Branch","63",1,1,"2021-02-15 00:01:22");
INSERT INTO employee VALUES("9cc29e8c2b924de0fd3ef55737a159c0",4," CRP","Mo-Mo","Branch","64",1,1,"2021-02-15 00:01:53");
INSERT INTO employee VALUES("8af593251cd53494bf4f6cd658351815",4," ZPE","Mo-Mo","Branch","65",1,1,"2021-02-15 00:02:26");
INSERT INTO employee VALUES("e782c0270070c7ff34dc7984a3643741",4," MBP","Mo-Mo","Branch","66",1,1,"2021-02-15 00:03:12");
INSERT INTO employee VALUES("9fe4987d685fcbff9b1a3011cdd12b35",4," SCQ","Mo-Mo","Branch","67",1,1,"2021-02-15 00:04:02");
INSERT INTO employee VALUES("cec9ac90af27b74546e22910bdc5bfff",4," CPK","Mo-Mo","Branch","68",1,1,"2021-02-15 00:04:51");
INSERT INTO employee VALUES("859cd041e3fe84e5e65b5c178452841f",4," MGB","Mo-Mo","Branch","69",1,1,"2021-02-17 10:32:37");
INSERT INTO employee VALUES("b29017088b3135c435f9c7912ec2cdb2",4," CR3","Mo-Mo","Branch","70",1,1,"2021-02-15 00:06:24");
INSERT INTO employee VALUES("79ba10e5305e95e757761317a07fca37",4," ICS","Mo-Mo","Branch","71",1,1,"2021-02-15 00:06:56");
INSERT INTO employee VALUES("7611717e7dfb53c91a776dcd505f9802",4,"SCP","Mo-Mo","Branch","72",1,1,"2021-02-15 00:07:53");
INSERT INTO employee VALUES("451453af732f6b70835c9dcec5db3b93",4," TMK","Mo-Mo","Branch","73",1,1,"2021-02-15 00:08:48");
INSERT INTO employee VALUES("3db564ba6fc573bad2628be5b7de4855",4," NEB","Nabezo","Branch","75",1,1,"2021-02-15 00:09:47");
INSERT INTO employee VALUES("6809f49f86586a97cb888adc3119668b",4,"NGS","Nabezo","Branch","76",1,1,"2021-02-15 00:10:39");
INSERT INTO employee VALUES("bfa7daa6736959ef0ec9b2ee01c1d656",4,"SCT","Mo-Mo","Branch","78",1,1,"2021-02-15 00:14:20");
INSERT INTO employee VALUES("52f2a5ca589fe4b36097dd5c55c4ac9c",4,"CWG","Mo-Mo","Branch","79",1,1,"2021-02-17 17:27:02");
INSERT INTO employee VALUES("06ac11af0ac13b221a953bfb54ecaa92",4,"CCW","Mo-Mo","Branch","74",1,1,"2021-02-15 00:19:02");
INSERT INTO employee VALUES("46c567b86f983d75f5eabd2492597c62",4,"test","Mo-Mo","Branch","45",1,1,"2021-02-15 00:20:23");
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
INSERT INTO employee VALUES("cfef909e353c8db298c5afccf010578a",12,"warehouse","Noble","Branch","20",1,1,"2021-03-05 15:09:06");



# Dump of list 
# Dump DATE : 07-Mar-2021

DROP TABLE IF EXISTS list;
CREATE TABLE list (
  id int(3) unsigned NOT NULL AUTO_INCREMENT,
  cases varchar(64) NOT NULL,
  menu varchar(64) NOT NULL,
  pages varchar(128) NOT NULL,
  case_status tinyint(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (id)
) ENGINE=MyISAM AUTO_INCREMENT=60 DEFAULT CHARSET=utf8;



INSERT INTO list VALUES(1,"setting","setting","settings/setting.php",1);
INSERT INTO list VALUES(2,"employee","employee","employee/index.php",1);
INSERT INTO list VALUES(3,"report","report","report/report.php",2);
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
INSERT INTO list VALUES(33,"asset_history","asset","asset/asset_history.php",1);
INSERT INTO list VALUES(41,"view_info","setting","settings/view_info.php",1);
INSERT INTO list VALUES(42,"assetall","asset","asset/assetall.php",1);
INSERT INTO list VALUES(43,"printbarcode","asset","asset/printbarcode.php",1);
INSERT INTO list VALUES(44,"setting_services","setting","settings/setting_services.php",1);
INSERT INTO list VALUES(45,"asset_it","asset_it","asset_it/index.php",1);
INSERT INTO list VALUES(46,"asset_it_create_detail","asset_it","asset_it/asset_it_create_detail.php",1);
INSERT INTO list VALUES(47,"asset","asset","asset/index.php",1);
INSERT INTO list VALUES(48,"setting_app","setting","settings/setting_app.php",1);
INSERT INTO list VALUES(49,"report_it","service","service/report.php",1);
INSERT INTO list VALUES(50,"case_all_department","service","service/case_all_department.php",1);
INSERT INTO list VALUES(51,"maintenance","maintenance","maintenance/index.php",1);
INSERT INTO list VALUES(52,"maintenance_show_cancel_user","maintenance","maintenance/show_cancel_user.php",1);
INSERT INTO list VALUES(53,"maintenance_case_all_company","maintenance","maintenance/case_all_company.php",1);
INSERT INTO list VALUES(54,"maintenance_show_cancel","maintenance","maintenance/show_cancel.php",1);
INSERT INTO list VALUES(55,"maintenance_case_all_service","maintenance","maintenance/case_all_service.php",1);
INSERT INTO list VALUES(56,"maintenance_show_work","maintenance","maintenance/show_work.php",1);
INSERT INTO list VALUES(57,"report_maintenance","maintenance","maintenance/report.php",1);
INSERT INTO list VALUES(58,"maintenance_case_all_department","maintenance","maintenance/case_all_department.php",1);
INSERT INTO list VALUES(59,"add_detail","asset_it","asset_it/wait_detail.php",1);



# Dump of logs 
# Dump DATE : 07-Mar-2021

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



# Dump of logs_keep 
# Dump DATE : 07-Mar-2021

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



# Dump of members_prefix 
# Dump DATE : 07-Mar-2021

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
# Dump DATE : 07-Mar-2021

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
INSERT INTO menus VALUES("26f7e62109e2566eaec8b01fe8e3598d","fa-unlink","รายการที่ยังไม่สมบูรณ์","card_create","?p=card_create",2,3);
INSERT INTO menus VALUES("295744c466c17b46170f88b5c1b9104d","fa-address-card","รายการสินทรัพย์ IT","asset_it","?p=asset_it",1,4);
INSERT INTO menus VALUES("a16043256ea5ca0ea86995e2b69ec238","fa-home","หน้าแรก","","index.php",1,1);
INSERT INTO menus VALUES("acac0001f4c9f206256b9a2dfe433b42","fa-folder-open","รายการสินทรัพย์องค์กร","asset","?p=asset",2,6);
INSERT INTO menus VALUES("b2da7cf13723d3c50719e45cf1587edd","fa-toolbox","แจ้งซ่อมฝ่ายอาคาร","maintenance","?p=maintenance",0,3);
INSERT INTO menus VALUES("c6c8729b45d1fec563f8453c16ff03b8","fa-sign-out-alt","ออกจากระบบ","logout","../core/logout.core.php",1,99);
INSERT INTO menus VALUES("e6ebaceb2257ae23f931da8b67225897","fa-folder-open","Asset","asset_ngg	","?p=asset_ngg	",2,83);
INSERT INTO menus VALUES("f1344bc0fb9c5594fa0e3d3f37a56957","fa-users","พนักงาน","employee","?p=employee",1,5);



# Dump of os_system 
# Dump DATE : 07-Mar-2021

DROP TABLE IF EXISTS os_system;
CREATE TABLE os_system (
  id int(2) NOT NULL,
  os_name varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;






# Dump of problem_comment 
# Dump DATE : 07-Mar-2021

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
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



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



# Dump of problem_list 
# Dump DATE : 07-Mar-2021

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
  se_location varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  se_price varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  card_status varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  date date DEFAULT NULL,
  date_update date DEFAULT '0000-00-00',
  admin_update varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  time_start time DEFAULT NULL,
  time_update time DEFAULT NULL,
  PRIMARY KEY (ID)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;



INSERT INTO problem_list VALUES(1,"IT2021-02-18-W01","72","1","7611717e7dfb53c91a776dcd505f9802",1,3,"เครื่องปริ้นส์กดปริ้นส์แล้วออกมาแต่กระดาษเปล่าสีไม่ออก ใส่น้ำหมึกแล้ว","20-SCP-62-97-021","IT2021-02-18-W01-63532160731CB7242C5-C00D-40B8-9C76-19ED2910316E.MOV","IT2021-02-18-W01-after-72F0D59F-9617-4F53-A491-69CED86B12EB.jpeg","รุ้งทิพย์ พุฒซอน","SCP","0.00","2e34609794290a770cb0349119d78d21","2021-02-18","2021-02-21","11c0009be8f4e977c6998edce04c9b2e","13:14:18","11:45:26");
INSERT INTO problem_list VALUES(2,"IT2021-02-18-W02","1","1","6ccdcc01b4cbc496cab3ed0c7fb20cac",2,100,"ต้องการระบบโปรเเกรมเพื่อทำงาน WorkFromHome","00000",NULL,"IT2021-02-18-W02-after-1613703346383.jpg","อภิรมย์ โสมีชัย","HO","0.00","2e34609794290a770cb0349119d78d21","2021-02-18","2021-02-19","ce63f18f7cf0a712fd4a2f47bc9ae14c","16:05:35","13:18:53");
INSERT INTO problem_list VALUES(3,"IT2021-02-18-W03","82","1","3b28104db64a6f4666ddff80f3c79e2b",2,141,"เข้าไปใช้งานไม่ได้","IT64/02","IT2021-02-18-W03-16136431723322379766270756184888.jpg","IT2021-02-18-W03-after-E2104B12-09B3-43C2-979C-C5772BFA374F.jpeg","Painoon","CLP","0.00","2e34609794290a770cb0349119d78d21","2021-02-18","2021-02-18","11c0009be8f4e977c6998edce04c9b2e","17:13:37","18:48:18");
INSERT INTO problem_list VALUES(4,"IT2021-02-19-W04","78","1","bfa7daa6736959ef0ec9b2ee01c1d656",7,138,"เมนูไม่ขึ้นภาพ","00000","IT2021-02-19-W04-179687.jpg",NULL,"เจนจิรา แก้วสมบูรณ์","SCT","0.00","2e34609794290a770cb0349119d78d21","2021-02-19","2021-02-19","ce63f18f7cf0a712fd4a2f47bc9ae14c","13:26:48","13:27:46");
INSERT INTO problem_list VALUES(5,"IT2021-02-19-W05","63","1","9aa946d6abfcb4cfc9ee258593eff00f",1,3,"หมึกเต็ม แต่สั่งปริ้นเอกสารหรือสแกนแล้ว ออกมาเป็นสีจางๆ","06-CBN-58-07-01","IT2021-02-19-W05-120424.jpg","IT2021-02-19-W05-after-F4915EA1-0EEE-4D22-9B03-1414ADF837F3.jpeg","บูฌิตา สังข์ขาว","CBN","0.00","2e34609794290a770cb0349119d78d21","2021-02-19","2021-02-19","11c0009be8f4e977c6998edce04c9b2e","15:08:38","19:06:40");
INSERT INTO problem_list VALUES(6,"IT2021-02-20-W06","75","1","3db564ba6fc573bad2628be5b7de4855",4,102,"ขอดูกล้องวงจรปิดบริเวณหน้าแคชเชียร์ เนื่องจากกระจกแตก ","กล้องวงจรปิดหน้าแคชเชียร์","IT2021-02-20-W06-S16105533.jpg","IT2021-02-20-W06-after-21CCD195-8E68-49CC-973A-632985573B33.png","จุรีมาศ  พิทักษ์เจริญเขต","NEB","0.00","2e34609794290a770cb0349119d78d21","2021-02-20","2021-02-20","11c0009be8f4e977c6998edce04c9b2e","11:23:58","15:39:19");
INSERT INTO problem_list VALUES(7,"IT2021-02-20-W07","64","1","9cc29e8c2b924de0fd3ef55737a159c0",2,110,"Notebook ทำงานช้ามากๆๆ","14-CPK-63-97-20","IT2021-02-20-W07-16138021135693909155324096705729.jpg",NULL,"Paiboon","CRP","0.00","5cafc78523f4f5e4812f9545b2ba5ae7","2021-02-20","2021-03-04","ce63f18f7cf0a712fd4a2f47bc9ae14c","13:22:29","13:38:21");
INSERT INTO problem_list VALUES(8,"IT2021-02-21-W08","61","1","6340f02bed9ccc2a8a79007a3d67a9ad",4,102,"เปิดกล้องวงจรตอน 10.55-11.00 น.","04-CR9-63-07-001",NULL,"IT2021-02-21-W08-after-A809FED3-3E99-4ADC-9514-1DDF28E04F74.jpeg","นพดล","CR9","0.00","2e34609794290a770cb0349119d78d21","2021-02-21","2021-02-21","11c0009be8f4e977c6998edce04c9b2e","13:09:17","13:42:42");
INSERT INTO problem_list VALUES(9,"IT2021-02-22-W09","5","1","d3cea0a13419c7b7d226a432af757ca4",1,3,"เครื่องปริ้นไม่ออก","ไม่ทราบ",NULL,NULL,"พรกมล","้สำนักงานใหญ่","0.00","2e34609794290a770cb0349119d78d21","2021-02-22","2564-02-23","11c0009be8f4e977c6998edce04c9b2e","09:55:08","19:07:03");
INSERT INTO problem_list VALUES(10,"IT2021-02-22-W10","1","1","6ccdcc01b4cbc496cab3ed0c7fb20cac",2,110,"ติดตั้งระบบรีโมทในช่วงWFH ค่ะ ","0000",NULL,NULL,"อภิรมย์","HO","0.00","2e34609794290a770cb0349119d78d21","2021-02-22","2021-02-22","11c0009be8f4e977c6998edce04c9b2e","10:07:16","11:16:45");
INSERT INTO problem_list VALUES(11,"IT2021-02-22-W11","18","1","d5b14c346b88725387c282ac7b851ad8",2,141,"cloud invoice สาขา CBN หน้าร้านสแกนแล้วแต่มันไม่ขึ้นค่ะ","00000",NULL,"IT2021-02-22-W11-after-Capture.JPG","อุษา","ho","0.00","2e34609794290a770cb0349119d78d21","2021-02-22","2021-02-22","f21ada1d50ad6673ce1efb578513ead6","10:30:09","18:07:32");
INSERT INTO problem_list VALUES(12,"IT2021-02-22-W12","2","1","ed6b1d41694cc31a1bc8a0f659d5faf7",2,140,"โปรแกรม Windspeed ชอบค้าง และ error อยู่บ่อยครั้ง","0000",NULL,"IT2021-02-22-W12-after-Screenshot(495).png","พิพิธพร","การเงิน","0.00","2e34609794290a770cb0349119d78d21","2021-02-22","2021-02-23","ce63f18f7cf0a712fd4a2f47bc9ae14c","10:32:13","22:05:10");
INSERT INTO problem_list VALUES(13,"IT2021-02-22-W13","70","1","b29017088b3135c435f9c7912ec2cdb2",7,131,"ไม่มีปุ่มกดเมนูในส่วนของเบียร์และเครื่องดื่มแอลกอฮอล์ทั้งหมด
","17-CR3-61-07-01(04)",NULL,NULL,"มณฑ์ณลิน","CR3","0.00","2e34609794290a770cb0349119d78d21","2021-02-22","2021-02-22","11c0009be8f4e977c6998edce04c9b2e","17:59:40","23:48:49");
INSERT INTO problem_list VALUES(14,"IT2021-02-23-W14","18","1","d5b14c346b88725387c282ac7b851ad8",2,141,"invoice สาขา T21 หน้าร้านสแกนแล้วแต่ไม่พบข้อมูล","00000","IT2021-02-23-W14-T21.jpg","IT2021-02-23-W14-after-image.jpg","อุษา","็HO","0.00","2e34609794290a770cb0349119d78d21","2021-02-23","2021-02-23","f21ada1d50ad6673ce1efb578513ead6","11:05:45","12:08:23");
INSERT INTO problem_list VALUES(15,"IT2021-02-23-W15","75","1","3db564ba6fc573bad2628be5b7de4855",1,148,"สายเคเบิ้ลต่อจอทีวีในห้อง VIP โดนหนูกัดขาด(ช่างมาดูแแล้วรอจัดซื้อมาเปลี่ยน)","ไม่มี","IT2021-02-23-W15-เปลี่ยนสายปลั๊กไฟและสายHDMI01122021.jpg",NULL,"ปราจรีย์","NEB","0.00","57995055c28df9e82476a54f852bd214","2021-02-23","2021-02-23","11c0009be8f4e977c6998edce04c9b2e","16:32:48","19:08:21");
INSERT INTO problem_list VALUES(16,"IT2021-02-23-W16","75","1","3db564ba6fc573bad2628be5b7de4855",1,148,"กล้องวงจรปิด บริเวณหน้าแคชเชียร์เสียไม่สามารถเปิดดูได้","ไม่มี","IT2021-02-23-W16-S16146572.jpg","IT2021-02-23-W16-after-459131E0-519D-4E91-8AD6-96B041DE0B7E.jpeg","ปราจรีย์","NEB","0.00","2e34609794290a770cb0349119d78d21","2021-02-23","2021-02-23","f21ada1d50ad6673ce1efb578513ead6","16:38:02","17:11:14");
INSERT INTO problem_list VALUES(17,"IT2021-02-24-W17","68","1","cec9ac90af27b74546e22910bdc5bfff",1,109,"คีย์บอร์ดกดไม่ได้ค่ะ ","14-CPK-60-07-02","IT2021-02-24-W17-trim.52C7CB7C-67AF-465F-829A-7211FC3B842D.MOV","IT2021-02-24-W17-after-S66248706.jpg","ซายน์","ปิ่นเกล้า","0.00","2e34609794290a770cb0349119d78d21","2021-02-24","2021-03-02","f21ada1d50ad6673ce1efb578513ead6","09:14:22","14:48:31");
INSERT INTO problem_list VALUES(18,"IT2021-02-24-W18","18","1","d5b14c346b88725387c282ac7b851ad8",2,141,"INVOICE สาขา CTW  หน้าร้านสแกนแล้วแต่ข้อมูลไม่ขึ้นค่ะ","00000",NULL,"IT2021-02-24-W18-after-image.jpg","อุษา","็HO","0.00","2e34609794290a770cb0349119d78d21","2021-02-24","2021-02-24","f21ada1d50ad6673ce1efb578513ead6","11:09:57","17:06:53");
INSERT INTO problem_list VALUES(19,"IT2021-02-25-W19","5","1","d3cea0a13419c7b7d226a432af757ca4",1,5,"สแกนไฟล์ไม่ได้ 00023  phong-ananc สแกนไม่เข้า , 00028 phong-ananc สแกนไม่ได้","IT 60/19",NULL,NULL,"Fah","HR","0.00","2e34609794290a770cb0349119d78d21","2021-02-25","2021-02-25","f21ada1d50ad6673ce1efb578513ead6","09:47:45","10:16:28");
INSERT INTO problem_list VALUES(20,"IT2021-02-25-W20","61","1","6340f02bed9ccc2a8a79007a3d67a9ad",3,101,"โทรศัพย์ใช้ไม่ได้เนื่องจากเมื่อวานIT มาเก็บสายแล้วใช้ไม่ได้ เวลาประมาน 11.00น.","ไม่มี",NULL,NULL,"นพดล","CR9","0.00","2e34609794290a770cb0349119d78d21","2021-02-25","2021-03-03","ce63f18f7cf0a712fd4a2f47bc9ae14c","14:02:56","15:00:55");
INSERT INTO problem_list VALUES(21,"IT2021-02-27-W21","75","1","3db564ba6fc573bad2628be5b7de4855",1,148,"สายเสียบเครื่อง adapter ขาด (ส่งให้ฝ่าย IT แล้ว)","07-NEB-63-97-37",NULL,NULL,"จุฑามาศ","NEB","0.00","2e34609794290a770cb0349119d78d21","2021-02-27","2021-02-25","f21ada1d50ad6673ce1efb578513ead6","12:14:07","12:17:24");
INSERT INTO problem_list VALUES(22,"IT2021-02-27-W22","75","1","3db564ba6fc573bad2628be5b7de4855",1,148,"ติดตั้งอุปกรณ์","-","IT2021-02-27-W22-281401.jpg",NULL,"อิทธิพัทธ์ มณีกานต์กูล","NEB","0.00","57995055c28df9e82476a54f852bd214","2021-02-27","2021-03-01","f21ada1d50ad6673ce1efb578513ead6","13:55:01","14:24:39");
INSERT INTO problem_list VALUES(23,"IT2021-02-28-W23","67","1","9fe4987d685fcbff9b1a3011cdd12b35",2,110,"เครื่องหลักIpad ขึ้น Loadingค้างนาน","0","IT2021-02-28-W23-IMG25640228092744.jpg",NULL," ณัฐพล","SCQ","0.00","2e34609794290a770cb0349119d78d21","2021-02-28","2021-03-01","11c0009be8f4e977c6998edce04c9b2e","09:32:28","22:13:51");
INSERT INTO problem_list VALUES(24,"IT2021-02-28-W24","67","1","9fe4987d685fcbff9b1a3011cdd12b35",7,125,"เครื้องแม่เด้งออกเด้งปล่อยและคีย์ไม่ได้และเช็คบิลไม่ได้","0",NULL,NULL,"ณัฐพล","SCQ","0.00","2e34609794290a770cb0349119d78d21","2021-02-28","2021-03-01","11c0009be8f4e977c6998edce04c9b2e","18:03:49","22:17:53");
INSERT INTO problem_list VALUES(25,"IT2021-03-01-W01","68","1","cec9ac90af27b74546e22910bdc5bfff",2,140,"กดfind ค้นหาข้อมูลไม่ได้ค่ะ","14-CPK-60-07-02","IT2021-03-01-W01-trim.2D9C5C39-09D7-4667-B15A-348DCA3BE2CE.MOV","IT2021-03-01-W01-after-image.jpg","ขัตติยา","CPK","0.00","2e34609794290a770cb0349119d78d21","2021-03-01","2021-03-01","f21ada1d50ad6673ce1efb578513ead6","11:22:40","12:26:49");
INSERT INTO problem_list VALUES(26,"IT2021-03-01-W02","79","1","52f2a5ca589fe4b36097dd5c55c4ac9c",7,126,"โต๊ะที่เปิดหายหมด เครื่องเด้งให้เปิดรอบการขายใหม่","24-CWG6307001","IT2021-03-01-W02-1614588992787.jpg",NULL,"เกมส์","CWG","0.00","2e34609794290a770cb0349119d78d21","2021-03-01","2021-03-04","f21ada1d50ad6673ce1efb578513ead6","16:01:49","14:45:51");
INSERT INTO problem_list VALUES(27,"IT2021-03-01-W03","58","1","cf4178eda791cfcbd3f20efe1a1ec35a",6,118,"ช่างตรวจเช็คเบื้องต้นให้แล้วพบว่าฮาร์ดดิสมีปัญหา จึงขอยืมเครื่องสำรองจาก HO ","01-CTW-61-07-13","IT2021-03-01-W03-แจ้งซ่อม1.jpg","IT2021-03-01-W03-after-S66256900.jpg","ศศิวิไล จันลือชัย","CTW","0.00","2e34609794290a770cb0349119d78d21","2021-03-01","2021-03-01","f21ada1d50ad6673ce1efb578513ead6","19:55:31","14:43:29");
INSERT INTO problem_list VALUES(28,"IT2021-03-01-W04","58","1","cf4178eda791cfcbd3f20efe1a1ec35a",2,110,"ขอติดตั้ง Driver เครื่องปริ้น Brother DCP-1610W ","01-CTW-61-07-13","IT2021-03-01-W04-แจ้งซ่อม2.jpg","IT2021-03-01-W04-after-image.jpg","ศศิวิไล จันลือชัย","CTW","0.00","2e34609794290a770cb0349119d78d21","2021-03-01","2021-03-01","f21ada1d50ad6673ce1efb578513ead6","19:57:55","20:09:28");
INSERT INTO problem_list VALUES(29,"IT2021-03-02-W05","70","1","b29017088b3135c435f9c7912ec2cdb2",1,1,"Notebook พี่ศร เครื่องค้าง เชื่อม wifi ไม่ได้ ","IT59/06","IT2021-03-02-W05-20210210160325.jpg",NULL,"ศร","SV","0.00","2e34609794290a770cb0349119d78d21","2021-03-02","2021-03-02","f21ada1d50ad6673ce1efb578513ead6","09:19:23","13:55:06");
INSERT INTO problem_list VALUES(30,"IT2021-03-02-W06","75","1","3db564ba6fc573bad2628be5b7de4855",7,130,"ไม่มีปุ่มส่วนลดลูกค้าประจำ 10% รบกวนเพิ่มให้ด้วยนะคะ ขอบคุณค่ะ","07-NEB-63-07-004",NULL,NULL,"จุฑามาศ","NEB","0.00","2e34609794290a770cb0349119d78d21","2021-03-02","2021-03-02","f21ada1d50ad6673ce1efb578513ead6","13:58:11","14:06:06");
INSERT INTO problem_list VALUES(31,"IT2021-03-02-W07","75","1","3db564ba6fc573bad2628be5b7de4855",7,138,"บิลใน  Addition- voucher &amp;quot;@line NABEZO free salad&amp;quot; ไม่ออกค่ะ อยากให้ที่Barอาหารค่ะ ขอบคุณค่ะ","07-NEB-63-07-004",NULL,NULL,"จุฑามาศ","NEB","0.00","2e34609794290a770cb0349119d78d21","2021-03-02","2021-03-02","ce63f18f7cf0a712fd4a2f47bc9ae14c","14:03:51","14:08:03");
INSERT INTO problem_list VALUES(32,"IT2021-03-02-W08","75","1","3db564ba6fc573bad2628be5b7de4855",7,138,"1.ตอนกดจำนวนลูกค้าแล้วมีจำนวนแก้วให้กด บิลไปออกที่bar อาหาร และไม่สามารถเพิ่มจำนวนแก้วได้นอกจากต้องกดจำนวนลูกค้าเพิ่มไปใหม่ 
2. อยากให้ย้ายแก้วไปไว้ที่ปุ่มเมนุ Free  เพิ่มเป็นเลข 6  ขอบคุณค่ะ (ออกที่บาร์เครื่องดื่ม)","07-NEB-63-07-004","IT2021-03-02-W08-1.jpg","IT2021-03-02-W08-after-trim.D33E6B48-7003-4370-B8B5-F3E3C916CB17.MOV","จุฑามาศ","NEB","0.00","2e34609794290a770cb0349119d78d21","2021-03-02","2021-03-03","11c0009be8f4e977c6998edce04c9b2e","14:12:24","22:31:47");
INSERT INTO problem_list VALUES(33,"IT2021-03-02-W09","75","1","3db564ba6fc573bad2628be5b7de4855",7,138,"รบกวนเช็ค @line NABEZO free salad ให้อีกรอบนะคะ ตอนนี้บิลยังไม่ออกค่ะ ","07-NEB-63-07-004",NULL,"IT2021-03-02-W09-after-C6030028-D0E4-459C-93F3-D9D0ED870035.png","จุฑามาศ","NEB","0.00","2e34609794290a770cb0349119d78d21","2021-03-02","2021-03-03","11c0009be8f4e977c6998edce04c9b2e","14:49:16","22:23:42");
INSERT INTO problem_list VALUES(34,"IT2021-03-02-W10","70","1","b29017088b3135c435f9c7912ec2cdb2",6,149,"ขอเปลี่ยนแผ่น ซีดี เพลงร้าน","17-CR3-61-09-02",NULL,NULL,"วัชระ คำมิ่ง","CR3","0.00","2e34609794290a770cb0349119d78d21","2021-03-02","2021-03-05","f21ada1d50ad6673ce1efb578513ead6","20:25:30","15:01:20");
INSERT INTO problem_list VALUES(35,"IT2021-03-02-W11","45","1","ce63f18f7cf0a712fd4a2f47bc9ae14c",1,148,"งานติดตั้งอุปกรณ์ปริ้นเตอร์ ให้ร้านเกาหลี","00000",NULL,NULL,"เจนจิรา แก้วสมบูรณ์","Guljak ICS,KVL","0.00","2e34609794290a770cb0349119d78d21","2021-03-02","2021-03-03","f21ada1d50ad6673ce1efb578513ead6","23:11:11","08:59:32");
INSERT INTO problem_list VALUES(36,"IT2021-03-03-W12","45","1","ce63f18f7cf0a712fd4a2f47bc9ae14c",4,152,"ฝ่าย inventory ขอดูกล้องวงจรปิด สาขา MBP วันที่ 19/02/2564 เวลา 9.30 - 10.30 น. ค่ะ","00000",NULL,NULL,"นางสาว กนกวรรณ หยีป้อม","HO","0.00","2e34609794290a770cb0349119d78d21","2021-03-03","2021-03-03","f21ada1d50ad6673ce1efb578513ead6","08:54:20","10:17:29");
INSERT INTO problem_list VALUES(37,"IT2021-03-03-W13","2","1","ed6b1d41694cc31a1bc8a0f659d5faf7",2,140,"โปรแกรม Winspeed Error บ่อยมาก","00","IT2021-03-03-W13-1614738920679.jpg",NULL,"พิพิธพร","HO","0.00","5cafc78523f4f5e4812f9545b2ba5ae7","2021-03-03","2021-03-03","f21ada1d50ad6673ce1efb578513ead6","09:48:35","14:50:41");
INSERT INTO problem_list VALUES(38,"IT2021-03-03-W14","2","1","ed6b1d41694cc31a1bc8a0f659d5faf7",3,101,"หน้าร้านอัพไฟล์ PAYIN ในคลาวน์แล้ว แต่ที่ HO ไม่ขึ้น ","00","IT2021-03-03-W14-1614746281351.jpg","IT2021-03-03-W14-after-Capture.JPG","พิพิธพร","HO","0.00","2e34609794290a770cb0349119d78d21","2021-03-03","2021-03-03","f21ada1d50ad6673ce1efb578513ead6","11:40:46","13:23:40");
INSERT INTO problem_list VALUES(39,"IT2021-03-03-W15","2","1","ed6b1d41694cc31a1bc8a0f659d5faf7",3,101,"หน้าร้าน upload เอกสารแล้ว แต่ cloud ออฟฟิตไม่เห็นเอกสาร","00",NULL,NULL,"กัมปนาท","HO","0.00","57995055c28df9e82476a54f852bd214","2021-03-03","2021-03-03","f21ada1d50ad6673ce1efb578513ead6","11:41:24","11:52:25");
INSERT INTO problem_list VALUES(40,"IT2021-03-03-W16","2","1","ed6b1d41694cc31a1bc8a0f659d5faf7",3,101,"หน้าร้าน upload เอกสารแล้ว แต่ cloud ออฟฟิตไม่เห็นเอกสาร","00","IT2021-03-03-W16-1614746580624.jpg",NULL,"กัมปนาท","HO","0.00","2e34609794290a770cb0349119d78d21","2021-03-03","2021-03-03","f21ada1d50ad6673ce1efb578513ead6","11:43:17","12:27:03");
INSERT INTO problem_list VALUES(41,"IT2021-03-03-W17","82","1","3b28104db64a6f4666ddff80f3c79e2b",1,148,"เครื่องสลีปแล้วทำงานหนัก","00000",NULL,NULL,"Q","SV","0.00","2e34609794290a770cb0349119d78d21","2021-03-03","2021-03-03","f21ada1d50ad6673ce1efb578513ead6","15:05:11","15:06:19");
INSERT INTO problem_list VALUES(42,"IT2021-03-03-W18","2","1","ed6b1d41694cc31a1bc8a0f659d5faf7",1,148,"คอมดับเอง ไฟติดครบ","-",NULL,NULL,"วรากรณ์","HO","0.00","47ea92cfc142a08b40abe2ddbf8837a8","2021-03-03","2021-03-08","f21ada1d50ad6673ce1efb578513ead6","16:30:49","11:44:49");
INSERT INTO problem_list VALUES(43,"IT2021-03-03-W19","67","1","9fe4987d685fcbff9b1a3011cdd12b35",2,6,"เป็นเครื่องโน๊ตบุุ๊คช้าและหมุนค้างนานกว่าจะใช้งานได้ต้องรอซึ่งก่อนหน้านี้ไม่มีอาการช้าแบบนี้ครับ","13-SCQ-59-07-03",NULL,NULL," ณัฐพล","SCQ","0.00","5cafc78523f4f5e4812f9545b2ba5ae7","2021-03-03","2021-03-05","f21ada1d50ad6673ce1efb578513ead6","17:28:53","11:47:30");
INSERT INTO problem_list VALUES(44,"IT2021-03-04-W20","18","1","d5b14c346b88725387c282ac7b851ad8",2,151,"ไม่สามารถใช้ Po Form Master ได้ ","IT59/26","IT2021-03-04-W20-แจ้งปัญหาIT.jpg",NULL,"รุ่งทิวารัตน์ ","HO","0.00","2e34609794290a770cb0349119d78d21","2021-03-04","2021-03-04","11c0009be8f4e977c6998edce04c9b2e","09:10:17","10:46:49");
INSERT INTO problem_list VALUES(45,"IT2021-03-04-W21","1","1","6ccdcc01b4cbc496cab3ed0c7fb20cac",2,151,"Remote winspeed เข้าไม่ได้ ไม่ไอคอนที่หน้าจอ","00000","IT2021-03-04-W21-123468.jpg",NULL,"นางสาว กนกวรรณ หยีป้อม","HO","0.00","2e34609794290a770cb0349119d78d21","2021-03-04","2021-03-04","11c0009be8f4e977c6998edce04c9b2e","09:57:59","10:45:24");
INSERT INTO problem_list VALUES(46,"IT2021-03-04-W22","2","1","ed6b1d41694cc31a1bc8a0f659d5faf7",2,151,"ฟอร์มไดร์ Z เปิดไม่ได้ในระบบ Winspeed","00000",NULL,NULL,"เจนจิรา แก้วสมบูรณ์","HO","0.00","2e34609794290a770cb0349119d78d21","2021-03-04","2021-03-04","11c0009be8f4e977c6998edce04c9b2e","10:16:13","10:45:57");
INSERT INTO problem_list VALUES(47,"IT2021-03-05-W23","43","1","6134ff997b6f5c7e403dc701c7b2cec9",2,151,"ขอลง Driver Printer Epson L360","IT 59/06",NULL,"IT2021-03-05-W23-after-Capture.JPG","ศร","SV","0.00","2e34609794290a770cb0349119d78d21","2021-03-05","2021-03-05","f21ada1d50ad6673ce1efb578513ead6","14:49:26","14:50:33");
INSERT INTO problem_list VALUES(48,"IT2021-03-05-W24","45","1","11c0009be8f4e977c6998edce04c9b2e",8,154,"แจ้งปัญหาเครื่อง Operator โทรศัพท์ขึ้นไฟแดง","00000",NULL,NULL,"เจนจิรา แก้วสมบูรณ์","HO",NULL,NULL,"2021-03-05","0000-00-00",NULL,"15:13:37",NULL);
INSERT INTO problem_list VALUES(49,"IT2021-03-06-W25","80","1","fc9c93f00e53b47b7bf01b72cd6180bd",8,154,"เครื่องสไลด์,ตู้ชิลเนื้อและตู้กระจกด้านใน ติดๆดับๆ","26-CLP-64-06-51(40),26-CLP-64-06-51(09),26-CLP-64-06-52","IT2021-03-06-W25-IMG20210306105815.jpg",NULL,"นพรุจ","CLP","0.00","57995055c28df9e82476a54f852bd214","2021-03-06","2021-03-06","11c0009be8f4e977c6998edce04c9b2e","10:58:38","11:47:45");
INSERT INTO problem_list VALUES(50,"IT2021-03-06-W26","75","1","3db564ba6fc573bad2628be5b7de4855",7,131,"ไม่มีปุ่มรายการเครื่องดื่ม Sho-chu cocktail Green Apple ","07-NEB-63-07-004",NULL,NULL,"จุฑามาศ","NEB",NULL,NULL,"2021-03-06","0000-00-00",NULL,"17:07:52",NULL);
INSERT INTO problem_list VALUES(51,"IT2021-03-06-W27","80","1","fc9c93f00e53b47b7bf01b72cd6180bd",2,151,"Login เข้าใช้งานไม่ได้","ไม่มี",NULL,NULL,"สถาพร","CLP",NULL,NULL,"2021-03-06","0000-00-00",NULL,"17:31:43",NULL);
INSERT INTO problem_list VALUES(52,"IT2021-03-07-W28","65","1","8af593251cd53494bf4f6cd658351815",2,6,"microsoft word ไม่สามารถเปิดใช้งานได้","11-ZPE-58-07-04",NULL,NULL,"กล้าณรงค์ โพธิ์ประดุง","ZPE","0.00","befb5e146e599a9876757fb18ce5fa2e","2021-03-07","2021-03-08","f21ada1d50ad6673ce1efb578513ead6","18:17:44","19:18:50");
INSERT INTO problem_list VALUES(53,"IT2021-03-07-W29","75","1","3db564ba6fc573bad2628be5b7de4855",7,138,"ปุ่ม Sho Chu Cocktail Green Apple รบกวนย้ายลงมาให้อยู่ข้างกันกับตัว Sho Chu Cocktail ตัวอื่นได้ไหมคะ จะได้สะดวกกับน้องพนักงานเวลากด แต่ถ้าไม่ได้ไม่เป็นไรค่ะ ขอบคุณค่ะ ","07-NEB-63-07-004","IT2021-03-07-W29-3.jpg","IT2021-03-07-W29-after-8558EAC8-2EE2-4E16-A2FE-6B7542F7DE7C.png","จุฑามาศ","NEB","0.00","2e34609794290a770cb0349119d78d21","2021-03-07","2021-03-07","11c0009be8f4e977c6998edce04c9b2e","21:02:28","21:36:22");



# Dump of service 
# Dump DATE : 07-Mar-2021

DROP TABLE IF EXISTS service;
CREATE TABLE service (
  se_id int(11) NOT NULL AUTO_INCREMENT,
  se_sort int(3) DEFAULT NULL,
  se_name varchar(200) NOT NULL,
  se_group varchar(100) DEFAULT NULL,
  se_status int(1) NOT NULL DEFAULT 1,
  data_time datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (se_id)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;



INSERT INTO service VALUES(1,3,"อุปกรณ์ (Hardware)","1",1,"2021-02-21 22:21:24");
INSERT INTO service VALUES(2,2,"โปรแกรม (Software)","1",1,"2021-02-21 22:21:15");
INSERT INTO service VALUES(3,4,"ระบบเครือข่าย (Network)","1",1,"2021-02-21 22:21:06");
INSERT INTO service VALUES(4,5,"สิทธิ์ใช้งานระบบ (Authorization)","1",1,"2021-02-21 22:21:41");
INSERT INTO service VALUES(5,5,"อื่นๆ (Other)","1",0,"2021-02-14 21:26:06");
INSERT INTO service VALUES(6,6,"ยืมอุปกรณ์ IT","1",1,"2021-02-14 21:26:09");
INSERT INTO service VALUES(7,1,"Application Food Story","1",1,"2021-02-21 22:20:31");
INSERT INTO service VALUES(8,7,"อื่นๆ","1",1,"2021-03-02 23:09:50");



# Dump of service_list 
# Dump DATE : 07-Mar-2021

DROP TABLE IF EXISTS service_list;
CREATE TABLE service_list (
  se_li_id int(11) NOT NULL AUTO_INCREMENT,
  se_id int(11) NOT NULL,
  se_li_name varchar(200) NOT NULL,
  se_li_status int(1) NOT NULL DEFAULT 1,
  data_time datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (se_li_id,se_id)
) ENGINE=InnoDB AUTO_INCREMENT=155 DEFAULT CHARSET=utf8;



INSERT INTO service_list VALUES(1,1,"Computer - คอมพิวเตอร์เปิดไม่ติด , ขึ้น Blue Screen, หน้าจอฟ้า, Windows error",1,"2020-05-15 15:52:27");
INSERT INTO service_list VALUES(2,1,"Monitor - หน้าจอไม่มีภาพขึ้น, หน้าจอภาพเป็นเส้น, หน้าจอเสีย",1,"2020-05-15 15:52:27");
INSERT INTO service_list VALUES(3,1,"Printer - ปริ้นส์ไม่ออก, ปริ้นส์แล้วตัวหนังสือขาด ตกหล่น, ไม่ดึงกระดาษ, รหัสปริ้นหาย, หมึกหมด",1,"2020-05-15 15:52:27");
INSERT INTO service_list VALUES(4,1,"UPS - ไม่สำรองไฟ, เปิดไม่ติด, ขอเปลี่ยน, ขอเพิ่ม",1,"2020-05-15 15:52:27");
INSERT INTO service_list VALUES(5,1,"Printer Scanner - สแกนไม่ได้, ไม่มีแสกน",1,"2020-05-15 15:52:27");
INSERT INTO service_list VALUES(6,2,"Ms Word, Ms Excel เปิดไม่ขึ้น ค้าง ช้า",1,"2020-05-15 15:52:27");
INSERT INTO service_list VALUES(7,2,"Express ใช้งานไม่ได้ , Error ",1,"2021-01-12 23:36:24");
INSERT INTO service_list VALUES(8,2,"Browser Chrome, เปิดไม่ขึ้น ค้าง",1,"2020-05-15 15:52:27");
INSERT INTO service_list VALUES(9,3,"อินเตอร์เน็ทช้า อินเตอร์เน็ทเข้าไม่ได้",1,"2020-05-15 15:52:27");
INSERT INTO service_list VALUES(10,4,"ขอสิทธิ์การใช้งานกรณีพนักงานเข้าใหม่",1,"2021-01-26 11:33:52");
INSERT INTO service_list VALUES(11,4,"ขอสิทธิ์การใช้ E-Mail , ยกเลิกสิทธิ์การใช้ E-Mail , เปลี่ยนแปลงสิทธิ์ E-Mail",1,"2020-05-15 15:52:27");
INSERT INTO service_list VALUES(99,1,"เครื่องปริ้นในครัว ปริ้นไม่ได้ , เปิดไม่ติด",1,"2021-01-12 22:35:37");
INSERT INTO service_list VALUES(100,2,"อื่น ๆ",0,"2021-02-13 23:15:50");
INSERT INTO service_list VALUES(101,3,"อื่น ๆ",1,"2020-05-15 15:52:27");
INSERT INTO service_list VALUES(102,4,"อื่น ๆ",0,"2021-02-21 22:22:47");
INSERT INTO service_list VALUES(103,5,"อื่น ๆ",0,"2021-01-12 22:45:03");
INSERT INTO service_list VALUES(109,1,"Keyboard, Mouse - ชำรุด, ค้าง, ขอเพิ่ม - เปลี่ยนใหม่",1,"2020-05-15 15:52:27");
INSERT INTO service_list VALUES(110,2,"ขอติดตั้งโปรแกรม, อัพเดตโปรแกรม, โปรแกรมค้าง ช้า",1,"2020-05-15 15:52:27");
INSERT INTO service_list VALUES(111,4,"ขอปลดล็อค Youtube, G-mail",0,"2021-01-26 11:31:57");
INSERT INTO service_list VALUES(112,6,"รายการ 1",0,"2021-01-12 22:44:58");
INSERT INTO service_list VALUES(113,1,"อุปกรณ์ IPAD สายชาร์จ,หัวชาร์จแบต ขาด ชำรุด",1,"2021-01-12 22:36:54");
INSERT INTO service_list VALUES(114,1,"ชุดอุปกรณ์ Tablet สายชาร์จ , หัวชาร์จ ขาด ชำรุด",1,"2021-01-12 22:36:42");
INSERT INTO service_list VALUES(115,1,"เครื่องปริ้นบิล ปริ้นไม่ได้ , เปิดไม่ติด",1,"2021-01-12 22:36:06");
INSERT INTO service_list VALUES(116,1,"ขาตั้ง IPAD ชำรุด",1,"2021-01-12 22:41:31");
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
INSERT INTO service_list VALUES(130,7,"ไม่มีปุ่มส่วนลด",1,"2021-01-12 23:14:06");
INSERT INTO service_list VALUES(131,7,"ไม่มีปุ่มกดเมนู",1,"2021-01-12 23:14:23");
INSERT INTO service_list VALUES(132,7,"ไม่มีปุ่มกด Settle บันทึกรายการขาย",1,"2021-01-12 23:18:29");
INSERT INTO service_list VALUES(133,7,"Food Story ปิดรอบการขายไม่ได้เนื่องจาก Internet หลุด",1,"2021-01-12 23:16:33");
INSERT INTO service_list VALUES(134,1,"USB Port LAN IPAD เสีย",1,"2021-01-12 23:17:26");
INSERT INTO service_list VALUES(135,7,"Food Story มีเครื่องหลัก 2 เครื่อง",1,"2021-01-12 23:20:39");
INSERT INTO service_list VALUES(136,7,"Food Story เครื่องลูก เชื่อมต่อเครื่องแม่ไม่ได้",1,"2021-01-12 23:20:21");
INSERT INTO service_list VALUES(137,7,"Food Story พิมพ์รายงานปิดรอบขายไม่ได้",1,"2021-01-12 23:21:15");
INSERT INTO service_list VALUES(138,7,"อื่นๆ",1,"2021-01-26 11:34:55");
INSERT INTO service_list VALUES(139,2,"Winspeed ขึ้นไม่เชื่อมต่อฐานข้อมูล",1,"2021-01-12 23:23:50");
INSERT INTO service_list VALUES(140,2,"Winspeed เด้งหลุด , Error , ค้าง",1,"2021-01-12 23:24:39");
INSERT INTO service_list VALUES(141,2,"Cloud ไม่อัพเดทข้อมูล , ข้อมูลหาย",1,"2021-01-12 23:26:04");
INSERT INTO service_list VALUES(142,2,"โปรแกรมสแกนนิ้ว เปิดไม่ได้ , ข้อมูลไม่อัพเดท , ข้อมูลหาย",1,"2021-01-12 23:27:54");
INSERT INTO service_list VALUES(143,2,"Email ใช้งานไม่ได้ , หาย , ส่งไม่สำเร็จ , แจ้ง Email เต็ม , Ms Outlook เปิดไม่ขึ้น",1,"2021-01-12 23:32:48");
INSERT INTO service_list VALUES(144,2,"Prosoft Fixed Assets ขึ้นภาษาต่างด้าว , Winspeed ขึ้นภาษาต่างด้าว",1,"2021-01-12 23:38:07");
INSERT INTO service_list VALUES(145,2,"Prosoft Fixed Assets เชื่อมต่อไม่ได้ , Error",1,"2021-01-12 23:38:42");
INSERT INTO service_list VALUES(146,2,"BPlus Error , ค้าง , ช้า",1,"2021-01-12 23:42:03");
INSERT INTO service_list VALUES(147,2,"Windows Error",1,"2021-01-12 23:42:59");
INSERT INTO service_list VALUES(148,1,"อื่นๆ",1,"2021-01-12 23:48:25");
INSERT INTO service_list VALUES(149,6,"อื่นๆ",1,"2021-01-12 23:48:45");
INSERT INTO service_list VALUES(150,2,"อื่นๆ",0,"2021-02-21 22:18:16");
INSERT INTO service_list VALUES(151,2,"อื่นๆ",1,"2021-02-21 22:20:03");
INSERT INTO service_list VALUES(152,4,"ขอดูกล้องวงจรปิด",1,"2021-02-21 22:22:30");
INSERT INTO service_list VALUES(153,4,"อื่นๆ",1,"2021-02-21 22:22:59");
INSERT INTO service_list VALUES(154,8,"อื่นๆ",1,"2021-03-05 15:11:51");



# Dump of system_alert 
# Dump DATE : 07-Mar-2021

DROP TABLE IF EXISTS system_alert;
CREATE TABLE system_alert (
  alert_key char(150) NOT NULL,
  alert_line_token char(150) DEFAULT NULL,
  alert_mail_server varchar(255) DEFAULT NULL,
  alert_mail_user varchar(100) DEFAULT NULL,
  alert_mail_pass varchar(50) DEFAULT NULL,
  alert_mail_get varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



INSERT INTO system_alert VALUES("cd5fe35c5af97026fd4efdfe4afd4376","fwmQKO62mB75pfUtg8yjsQiRDseL7NjC2e32pwdPfvg","mail.nbrest.com","it@nbrest.com","5NpFBTEWdi","it@nbrest.com");



# Dump of system_info 
# Dump DATE : 07-Mar-2021

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
# Dump DATE : 07-Mar-2021

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
) ENGINE=MyISAM AUTO_INCREMENT=44 DEFAULT CHARSET=utf8;



INSERT INTO user VALUES(1,"ce63f18f7cf0a712fd4a2f47bc9ae14c","ผู้ดูแล","ระบบ","superadmin","81dc9bdb52d04dc20036dbd8313ed055","noimg.jpg",3,1,"it@nbrest.com","2021-03-07 22:53:47");
INSERT INTO user VALUES(2,"9c087e62260bb920a27f22951ccb8e6e","เจ้า","หน้าที่","admin","81dc9bdb52d04dc20036dbd8313ed055","noimg.jpg",2,0,NULL,"2021-02-11 17:25:58");
INSERT INTO user VALUES(3,"1ca81a2da074ea0a2c54dc6dcc180cdf","ผู้ใช้","งาน","user","81dc9bdb52d04dc20036dbd8313ed055","noimg.jpg",1,0,NULL,"2021-01-26 14:28:52");
INSERT INTO user VALUES(4,"16485085fc8bb978628a63f51cf7e085","CTW","MOMO","ctw","81dc9bdb52d04dc20036dbd8313ed055","noimg.jpg",1,0,"momocw@nbrest.com","2021-02-14 23:49:41");
INSERT INTO user VALUES(5,"49a117674e8b6d76eaacc99d38536d28"," CDC","MOMO","cdc","81dc9bdb52d04dc20036dbd8313ed055","noimg.jpg",1,0,"momocdc@nbrest.com","2021-02-14 23:49:47");
INSERT INTO user VALUES(6,"2ff6eeaf9f4535e14f92b4662b01cc36","CPK","MOMO","cpk","c7e694055489cb2051195a2be1740992","noimg.jpg",1,0,"momocpk@nbrest.com","2021-02-14 23:49:52");
INSERT INTO user VALUES(7,"11c0009be8f4e977c6998edce04c9b2e","เจนจิรา","แก้วสมบูรณ์","janejira","81dc9bdb52d04dc20036dbd8313ed055","noimg.jpg",2,1,"nudeezaka@gmail.com","2021-02-15 00:16:41");
INSERT INTO user VALUES(8,"f21ada1d50ad6673ce1efb578513ead6","ปัฐพี","ทองอร่าม","pattapee","81dc9bdb52d04dc20036dbd8313ed055","noimg.jpg",2,1,"pattapee.pee@gmail.com","2021-02-15 00:16:18");
INSERT INTO user VALUES(9,"bbaf8a58eaf567ac5c5e52a04e3ca279","Human","Resource","HR","81dc9bdb52d04dc20036dbd8313ed055","noimg.jpg",1,0,"hr@nbrest.com","2021-02-15 13:55:53");
INSERT INTO user VALUES(10,"cf4178eda791cfcbd3f20efe1a1ec35a","CTW","Mo-Mo","CTW ","81dc9bdb52d04dc20036dbd8313ed055","noimg.jpg",1,1,"momocw@nbrest.com","2021-02-17 10:30:18");
INSERT INTO user VALUES(11,"b17177683249bb2cda3472e14d984e60","T21","Mo-Mo","T21","81dc9bdb52d04dc20036dbd8313ed055","noimg.jpg",1,1,"momot21@nbrest.com","2021-02-17 10:30:26");
INSERT INTO user VALUES(12,"6340f02bed9ccc2a8a79007a3d67a9ad"," CR9","Mo-Mo","CR9","81dc9bdb52d04dc20036dbd8313ed055","noimg.jpg",1,1,"momocr9@nbrest.com","2021-02-17 10:30:34");
INSERT INTO user VALUES(13,"696d924c3decaabd113b928b63cb8e9e"," PMN","Mo-Mo","PMN","81dc9bdb52d04dc20036dbd8313ed055","noimg.jpg",1,1,"momopmn@nbrest.com","2021-02-17 10:30:42");
INSERT INTO user VALUES(14,"9aa946d6abfcb4cfc9ee258593eff00f"," CBN","Mo-Mo","CBN","81dc9bdb52d04dc20036dbd8313ed055","noimg.jpg",1,1,"momocbn@nbrest.com","2021-02-17 10:30:51");
INSERT INTO user VALUES(15,"9cc29e8c2b924de0fd3ef55737a159c0"," CRP","Mo-Mo","CRP","81dc9bdb52d04dc20036dbd8313ed055","noimg.jpg",1,1,"momocrp@nbrest.com","2021-02-17 10:31:01");
INSERT INTO user VALUES(16,"8af593251cd53494bf4f6cd658351815"," ZPE","Mo-Mo","ZPE","c41dd99a69df04044aa4e33ece9c9249","noimg.jpg",1,1,"momozpell@nbrest.com","2021-03-07 18:16:12");
INSERT INTO user VALUES(17,"e782c0270070c7ff34dc7984a3643741"," MBP","Mo-Mo","MBP","81dc9bdb52d04dc20036dbd8313ed055","noimg.jpg",1,1,"momombp@nbrest.com","2021-02-17 10:31:18");
INSERT INTO user VALUES(18,"9fe4987d685fcbff9b1a3011cdd12b35"," SCQ","Mo-Mo","SCQ","81dc9bdb52d04dc20036dbd8313ed055","noimg.jpg",1,1,"momoscq@nbrest.com","2021-03-05 18:53:35");
INSERT INTO user VALUES(19,"cec9ac90af27b74546e22910bdc5bfff"," CPK","Mo-Mo","CPK","81dc9bdb52d04dc20036dbd8313ed055","noimg.jpg",1,1,"momocpk@nbrest.com","2021-02-17 10:32:05");
INSERT INTO user VALUES(20,"859cd041e3fe84e5e65b5c178452841f"," MGB","Mo-Mo","MGB","81dc9bdb52d04dc20036dbd8313ed055","noimg.jpg",1,1,"momomgb@nbrest.com","2021-02-17 10:32:12");
INSERT INTO user VALUES(21,"b29017088b3135c435f9c7912ec2cdb2"," CR3","Mo-Mo","CR3","81dc9bdb52d04dc20036dbd8313ed055","noimg.jpg",1,1,"momocr3@nbrest.com","2021-02-17 10:32:47");
INSERT INTO user VALUES(22,"79ba10e5305e95e757761317a07fca37"," ICS","Mo-Mo","ICS","81dc9bdb52d04dc20036dbd8313ed055","noimg.jpg",1,1,"momoics@nbrest.com","2021-02-17 10:32:56");
INSERT INTO user VALUES(23,"7611717e7dfb53c91a776dcd505f9802","SCP","Mo-Mo","SCP","81dc9bdb52d04dc20036dbd8313ed055","noimg.jpg",1,1,"momoscp@nbrest.com","2021-02-16 16:17:41");
INSERT INTO user VALUES(24,"451453af732f6b70835c9dcec5db3b93"," TMK","Mo-Mo","TMK","81dc9bdb52d04dc20036dbd8313ed055","noimg.jpg",1,1,"momotmk@nbrest.com","2021-02-17 10:33:17");
INSERT INTO user VALUES(25,"3db564ba6fc573bad2628be5b7de4855"," NEB","Nabezo","NEB","81dc9bdb52d04dc20036dbd8313ed055","noimg.jpg",1,1,"nabezo_embassy@nbrest.com","2021-02-16 16:17:05");
INSERT INTO user VALUES(26,"6809f49f86586a97cb888adc3119668b","NGS","Nabezo","NGS","81dc9bdb52d04dc20036dbd8313ed055","noimg.jpg",1,1,"nabezo_gaysorn@nbrest.com","2021-02-16 16:17:18");
INSERT INTO user VALUES(27,"bfa7daa6736959ef0ec9b2ee01c1d656","SCT","Mo-Mo","SCT","81dc9bdb52d04dc20036dbd8313ed055","noimg.jpg",1,1,"momosct@nbrest.com","2021-02-16 16:17:52");
INSERT INTO user VALUES(28,"52f2a5ca589fe4b36097dd5c55c4ac9c","CWG","Mo-Mo","CWG","d93591bdf7860e1e4ee2fca799911215","noimg.jpg",1,1,"momocgw@nbrest.com","2021-03-05 22:56:54");
INSERT INTO user VALUES(29,"06ac11af0ac13b221a953bfb54ecaa92","CCW","Mo-Mo","CCW","81dc9bdb52d04dc20036dbd8313ed055","noimg.jpg",1,1,"momoccw@nbrest.com","2021-02-16 16:15:58");
INSERT INTO user VALUES(30,"46c567b86f983d75f5eabd2492597c62","test","Mo-Mo","TEST","81dc9bdb52d04dc20036dbd8313ed055","noimg.jpg",1,1,"test@gmail.com","2021-02-15 00:20:23");
INSERT INTO user VALUES(31,"b496e28463b931118820246a08cf9826","CDC","Mo-Mo","CDC","81dc9bdb52d04dc20036dbd8313ed055","noimg.jpg",1,1,"momocdc@gmail.com","2021-02-15 10:52:38");
INSERT INTO user VALUES(32,"3ae8086fb05d3435d3dcd9cd1565a454","Account","Noble","account","81dc9bdb52d04dc20036dbd8313ed055","noimg.jpg",1,1,"accounting@nbrest.com","2021-02-15 13:55:14");
INSERT INTO user VALUES(33,"d3cea0a13419c7b7d226a432af757ca4","HR","Noble","HR","81dc9bdb52d04dc20036dbd8313ed055","noimg.jpg",1,1,"hr@nbrest.com","2021-02-15 13:57:43");
INSERT INTO user VALUES(34,"ed6b1d41694cc31a1bc8a0f659d5faf7","Finance","Noble","finance","81dc9bdb52d04dc20036dbd8313ed055","noimg.jpg",1,1,"finance@nbrest.com","2021-02-15 14:28:45");
INSERT INTO user VALUES(35,"d5b14c346b88725387c282ac7b851ad8","Purchase","Noble","purchase","81dc9bdb52d04dc20036dbd8313ed055","noimg.jpg",1,1,"purchase@nbrest.com","2021-02-15 14:36:10");
INSERT INTO user VALUES(36,"0049430d869cc1e24dfb88398666d959","Marketing","Noble","marketing","81dc9bdb52d04dc20036dbd8313ed055","noimg.jpg",1,1,"marketing@nbrest.com","2021-02-15 14:37:39");
INSERT INTO user VALUES(37,"6ccdcc01b4cbc496cab3ed0c7fb20cac","Admin","Noble","admin","81dc9bdb52d04dc20036dbd8313ed055","noimg.jpg",1,1,"admin@nbrest.com","2021-02-15 14:40:36");
INSERT INTO user VALUES(38,"3b28104db64a6f4666ddff80f3c79e2b","Supervisor","Noble","sv","81dc9bdb52d04dc20036dbd8313ed055","noimg.jpg",1,0,"supervisor@nbrest.com","2021-03-05 14:05:19");
INSERT INTO user VALUES(39,"fc9c93f00e53b47b7bf01b72cd6180bd","CLP","Mo-Mo","CLP","81dc9bdb52d04dc20036dbd8313ed055","noimg.jpg",1,1,"momoclp@nbrest.com","2021-03-02 22:15:48");
INSERT INTO user VALUES(40,"8cd102f646c6ae2d8fc4e5bfdb75800f","Supervisor","Noble","SV","5983ce03fc25b4635c0143db1ae29fc9","noimg.jpg",1,0,"Supervisor@nbrest.com","2021-03-05 14:46:30");
INSERT INTO user VALUES(41,"83b8c4f986cccac06a2f458a106cc773","รชานนท์","แก้วงาม","rachanon","1bdb27d07286b87dc79a3141ef4bd3c2","noimg.jpg",1,1,"kanmopara@gmail.com","2021-03-02 23:02:30");
INSERT INTO user VALUES(42,"6134ff997b6f5c7e403dc701c7b2cec9","Supervisor","Noble","SV","81dc9bdb52d04dc20036dbd8313ed055","noimg.jpg",1,1,"supervisor@nbrest.com","2021-03-05 14:47:22");
INSERT INTO user VALUES(43,"cfef909e353c8db298c5afccf010578a","warehouse","Noble","WH","81dc9bdb52d04dc20036dbd8313ed055","noimg.jpg",1,1,"wh@nbrest.com","2021-03-05 15:09:06");



# Dump of user_online 
# Dump DATE : 07-Mar-2021

DROP TABLE IF EXISTS user_online;
CREATE TABLE user_online (
  osession varchar(128) CHARACTER SET utf8 NOT NULL DEFAULT '',
  user_key varchar(32) CHARACTER SET utf8 NOT NULL,
  otime int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



INSERT INTO user_online VALUES("95522vphtn7a7tbgki5envcgs4","85dc6d4bd6e7189330a9e2b7b39408c2",1566376833);



