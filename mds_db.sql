CREATE DATABASE /*!32312 IF NOT EXISTS*/`mds` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `mds`;

/*Table structure for table `ofGroup` */

DROP TABLE IF EXISTS `ofGroup`;

CREATE TABLE `ofGroup` (
  `groupName` varchar(50) NOT NULL,
  `description` varchar(255) default NULL,
  PRIMARY KEY  (`groupName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `ofGroupUser` */

DROP TABLE IF EXISTS `ofGroupUser`;

CREATE TABLE `ofGroupUser` (
  `groupName` varchar(50) NOT NULL,
  `username` varchar(100) NOT NULL,
  `administrator` tinyint(4) NOT NULL,
  PRIMARY KEY  (`groupName`,`username`,`administrator`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `ofMsgHistory` */

DROP TABLE IF EXISTS `ofMsgHistory`;

CREATE TABLE `ofMsgHistory` (
  `id` bigint(20) NOT NULL auto_increment,
  `jid` varchar(255) NOT NULL,
  `dt` timestamp NULL default CURRENT_TIMESTAMP,
  `notification_type` tinyint(1) NOT NULL,
  `notification_group` varchar(64) NOT NULL,
  `notification_addr` varchar(255) NOT NULL,
  `notification_subject` varchar(100) default NULL,
  `notification_msg` varchar(400) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `ofMsn` */

DROP TABLE IF EXISTS `ofMsn`;

CREATE TABLE `ofMsn` (
  `id` bigint(20) NOT NULL auto_increment,
  `jid` varchar(255) default NULL,
  `msn` varchar(255) default NULL,
  `enable` tinyint(1) default NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `jid` (`jid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `ofSms` */

DROP TABLE IF EXISTS `ofSms`;

CREATE TABLE `ofSms` (
  `id` bigint(20) NOT NULL auto_increment,
  `jid` varchar(255) default NULL,
  `cellphone` varchar(20) default NULL,
  `enable` tinyint(1) default NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `jid` (`jid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `ofUser` */

DROP TABLE IF EXISTS `ofUser`;

CREATE TABLE `ofUser` (
  `username` varchar(64) NOT NULL,
  `plainPassword` varchar(32) default NULL,
  `encryptedPassword` varchar(255) default NULL,
  `name` varchar(100) default NULL,
  `email` varchar(100) default NULL,
  `creationDate` char(15) NOT NULL,
  `modificationDate` char(15) NOT NULL,
  PRIMARY KEY  (`username`),
  KEY `ofUser_cDate_idx` (`creationDate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

