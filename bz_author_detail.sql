/*
 Navicat Premium Data Transfer

 Source Server         : drf_day3
 Source Server Type    : SQLite
 Source Server Version : 3021000
 Source Schema         : main

 Target Server Type    : SQLite
 Target Server Version : 3021000
 File Encoding         : 65001

 Date: 01/11/2020 15:10:41
*/

PRAGMA foreign_keys = false;

-- ----------------------------
-- Table structure for bz_author_detail
-- ----------------------------
DROP TABLE IF EXISTS "bz_author_detail";
CREATE TABLE "bz_author_detail" (
  "id" integer NOT NULL PRIMARY KEY AUTOINCREMENT,
  "is_delete" bool NOT NULL,
  "create_time" date NOT NULL,
  "status" bool NOT NULL,
  "phone" varchar(11) NOT NULL,
  "author_id" integer NOT NULL,
  FOREIGN KEY ("author_id") REFERENCES "bz_author" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED,
  UNIQUE ("author_id" ASC)
);

-- ----------------------------
-- Records of bz_author_detail
-- ----------------------------
INSERT INTO "bz_author_detail" VALUES (1, 0, '2020-10-29', 1, 11111111111, 1);
INSERT INTO "bz_author_detail" VALUES (2, 0, '2020-10-29', 1, 22222222222, 2);
INSERT INTO "bz_author_detail" VALUES (3, 0, '2020-10-29', 1, 33333333333, 3);
INSERT INTO "bz_author_detail" VALUES (4, 0, '2020-10-29', 1, 44444444444, 4);

-- ----------------------------
-- Auto increment value for bz_author_detail
-- ----------------------------
UPDATE "sqlite_sequence" SET seq = 4 WHERE name = 'bz_author_detail';

PRAGMA foreign_keys = true;
