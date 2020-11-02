/*
 Navicat Premium Data Transfer

 Source Server         : drf_day3
 Source Server Type    : SQLite
 Source Server Version : 3021000
 Source Schema         : main

 Target Server Type    : SQLite
 Target Server Version : 3021000
 File Encoding         : 65001

 Date: 01/11/2020 15:10:54
*/

PRAGMA foreign_keys = false;

-- ----------------------------
-- Table structure for bz_book
-- ----------------------------
DROP TABLE IF EXISTS "bz_book";
CREATE TABLE "bz_book" (
  "id" integer NOT NULL PRIMARY KEY AUTOINCREMENT,
  "is_delete" bool NOT NULL,
  "create_time" date NOT NULL,
  "status" bool NOT NULL,
  "book_name" varchar(128) NOT NULL,
  "price" decimal NOT NULL,
  "pic" varchar(100) NOT NULL,
  "publish_id" integer NOT NULL
);

-- ----------------------------
-- Records of bz_book
-- ----------------------------
INSERT INTO "bz_book" VALUES (1, 0, '2020-10-29', 1, 'python从入门到放弃', 300, 'img/190314-08-1172784716.jpg', 1);
INSERT INTO "bz_book" VALUES (2, 0, '2020-10-29', 1, 'java从入门到放弃', 200, 'img/190314-14--1038361216.jpg', 2);
INSERT INTO "bz_book" VALUES (3, 0, '2020-10-29', 1, 'c从入门到放弃', 40, 'img/00727WDDly1g0vhwa3azhj30v91jk78m.jpg', 3);
INSERT INTO "bz_book" VALUES (5, 0, '2020-10-29', 1, 'c++', 123, 'img/190312-23-1338538178.jpg', 1);
INSERT INTO "bz_book" VALUES (6, 0, '2020-10-29', 1, 'php', 100, 'img/1.jpg', 1);
INSERT INTO "bz_book" VALUES (7, 1, '2020-10-29', 1, 'python核心编程5', 0, 'img/1.jpg', 1);
INSERT INTO "bz_book" VALUES (12, 0, '2020-10-29', 1, 'heiheihei', 100, 'img/1.jpg', 2);
INSERT INTO "bz_book" VALUES (13, 0, '2020-10-29', 1, 'hei', 100, 'img/1.jpg', 2);
INSERT INTO "bz_book" VALUES (14, 0, '2020-11-01', 1, 'python从入门到放弃', 300, 'img/1.jpg', 1);
INSERT INTO "bz_book" VALUES (15, 0, '2020-11-01', 1, 'python从入门到放弃', 300, 'img/1.jpg', 1);

-- ----------------------------
-- Auto increment value for bz_book
-- ----------------------------
UPDATE "sqlite_sequence" SET seq = 15 WHERE name = 'bz_book';

-- ----------------------------
-- Indexes structure for table bz_book
-- ----------------------------
CREATE INDEX "bz_book_publish_id_ed4f5599"
ON "bz_book" (
  "publish_id" ASC
);

PRAGMA foreign_keys = true;
