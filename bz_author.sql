/*
 Navicat Premium Data Transfer

 Source Server         : drf_day3
 Source Server Type    : SQLite
 Source Server Version : 3021000
 Source Schema         : main

 Target Server Type    : SQLite
 Target Server Version : 3021000
 File Encoding         : 65001

 Date: 01/11/2020 15:10:30
*/

PRAGMA foreign_keys = false;

-- ----------------------------
-- Table structure for bz_author
-- ----------------------------
DROP TABLE IF EXISTS "bz_author";
CREATE TABLE "bz_author" (
  "id" integer NOT NULL PRIMARY KEY AUTOINCREMENT,
  "is_delete" bool NOT NULL,
  "create_time" date NOT NULL,
  "status" bool NOT NULL,
  "author_name" varchar(128) NOT NULL,
  "age" integer NOT NULL
);

-- ----------------------------
-- Records of bz_author
-- ----------------------------
INSERT INTO "bz_author" VALUES (1, 0, '2020-10-29', 1, '小光', 10);
INSERT INTO "bz_author" VALUES (2, 0, '2020-10-29', 1, '小黑', 15);
INSERT INTO "bz_author" VALUES (3, 0, '2020-10-29', 1, '小波', 30);
INSERT INTO "bz_author" VALUES (4, 0, '2020-10-29', 1, '小毛', 40);
INSERT INTO "bz_author" VALUES (5, 0, '2020-10-29', 1, '小黑', 32);

-- ----------------------------
-- Auto increment value for bz_author
-- ----------------------------
UPDATE "sqlite_sequence" SET seq = 5 WHERE name = 'bz_author';

PRAGMA foreign_keys = true;
