DROP TABLE IF EXISTS `crm_admin`;
CREATE TABLE IF NOT EXISTS `crm_admin`(
    `adminid` INT UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键ID',
    `adminuser` VARCHAR(32) NOT NULL DEFAULT '' COMMENT '管理员账号',
    `adminpass` CHAR(32) NOT NULL DEFAULT '' COMMENT '管理员密码',
    `adminemail` VARCHAR(50) NOT NULL DEFAULT '' COMMENT '管理员电子邮箱',
    `logintime` INT UNSIGNED NOT NULL DEFAULT '0' COMMENT '登录时间',
    `loginip` BIGINT NOT NULL DEFAULT '0' COMMENT '登录IP',
    `createtime` INT UNSIGNED NOT NULL DEFAULT '0' COMMENT '创建时间',
    PRIMARY KEY(`adminid`),
    UNIQUE crm_admin_adminuser_adminpass(`adminuser`, `adminpass`),
    UNIQUE crm_admin_adminuser_adminemail(`adminuser`, `adminemail`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `shop_admin`(adminuser,adminpass,adminemail,createtime) VALUES('admin', md5('123'), 'shop@imooc.com', UNIX_TIMESTAMP());

DROP TABLE IF EXISTS `crm_user`;
CREATE TABLE IF NOT EXISTS `crm_user`(
    `userid` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键ID',
    `username` VARCHAR(32) NOT NULL DEFAULT '',
    `userpass` CHAR(32) NOT NULL DEFAULT '',
    `useremail` VARCHAR(100) NOT NULL DEFAULT '',
    `createtime` INT UNSIGNED NOT NULL DEFAULT '0',
    UNIQUE crm_user_username_userpass(`username`,`userpass`),
    UNIQUE crm_user_useremail_userpass(`useremail`,`userpass`),
    PRIMARY KEY(`userid`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `crm_profile`;
CREATE TABLE IF NOT EXISTS `crm_profile`(
    `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键ID',
    `truename` VARCHAR(32) NOT NULL DEFAULT '' COMMENT '真实姓名',
    `age` TINYINT UNSIGNED NOT NULL DEFAULT '0' COMMENT '年龄',
    `sex` ENUM('0','1','2') NOT NULL DEFAULT '0' COMMENT '性别',
    `birthday` date NOT NULL DEFAULT '2019-01-01' COMMENT '生日',
    `nickname` VARCHAR(32) NOT NULL DEFAULT '' COMMENT '昵称',
    `company` VARCHAR(100) NOT NULL DEFAULT '' COMMENT '公司',
    `userid` BIGINT UNSIGNED NOT NULL DEFAULT '0' COMMENT '用户的ID',
    `createtime` INT UNSIGNED NOT NULL DEFAULT '0' COMMENT '创建时间',
    PRIMARY KEY(`id`),
    UNIQUE crm_profile_userid(`userid`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;























