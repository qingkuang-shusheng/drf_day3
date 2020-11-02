/*
 Navicat Premium Data Transfer

 Source Server         : drf_day3
 Source Server Type    : SQLite
 Source Server Version : 3021000
 Source Schema         : main

 Target Server Type    : SQLite
 Target Server Version : 3021000
 File Encoding         : 65001

 Date: 01/11/2020 15:11:05
*/

PRAGMA foreign_keys = false;

-- ----------------------------
-- Table structure for bz_press
-- ----------------------------
DROP TABLE IF EXISTS "bz_press";
CREATE TABLE "bz_press" (
  "id" integer NOT NULL PRIMARY KEY AUTOINCREMENT,
  "is_delete" bool NOT NULL,
  "create_time" date NOT NULL,
  "status" bool NOT NULL,
  "press_name" varchar(128) NOT NULL,
  "pic" varchar(100) NOT NULL,
  "address" varchar(256) NOT NULL
);

-- ----------------------------
-- Records of bz_press
-- ----------------------------
INSERT INTO "bz_press" VALUES (1, 0, '2020-10-29', 1, '百知出版社', 'meida/1.jpg', 111);
INSERT INTO "bz_press" VALUES (2, 0, '2020-10-29', 1, '清华出版社', 'meida/1.jpg', 222);
INSERT INTO "bz_press" VALUES (3, 0, '2020-10-29', 1, '北大出版社', 'meida/1.jpg', 333);

-- ----------------------------
-- Auto increment value for bz_press
-- ----------------------------
UPDATE "sqlite_sequence" SET seq = 3 WHERE name = 'bz_press';

PRAGMA foreign_keys = true;
