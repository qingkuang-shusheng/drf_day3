/*
 Navicat Premium Data Transfer

 Source Server         : drf_day3
 Source Server Type    : SQLite
 Source Server Version : 3021000
 Source Schema         : main

 Target Server Type    : SQLite
 Target Server Version : 3021000
 File Encoding         : 65001

 Date: 01/11/2020 15:11:00
*/

PRAGMA foreign_keys = false;

-- ----------------------------
-- Table structure for bz_book_authors
-- ----------------------------
DROP TABLE IF EXISTS "bz_book_authors";
CREATE TABLE "bz_book_authors" (
  "id" integer NOT NULL PRIMARY KEY AUTOINCREMENT,
  "book_id" integer NOT NULL,
  "author_id" integer NOT NULL
);

-- ----------------------------
-- Records of bz_book_authors
-- ----------------------------
INSERT INTO "bz_book_authors" VALUES (1, 1, 1);
INSERT INTO "bz_book_authors" VALUES (2, 1, 2);
INSERT INTO "bz_book_authors" VALUES (4, 2, 3);
INSERT INTO "bz_book_authors" VALUES (6, 4, 3);
INSERT INTO "bz_book_authors" VALUES (7, 5, 3);
INSERT INTO "bz_book_authors" VALUES (8, 6, 1);
INSERT INTO "bz_book_authors" VALUES (9, 6, 2);
INSERT INTO "bz_book_authors" VALUES (10, 3, 2);
INSERT INTO "bz_book_authors" VALUES (11, 3, 3);
INSERT INTO "bz_book_authors" VALUES (12, 3, 4);
INSERT INTO "bz_book_authors" VALUES (13, 3, 5);
INSERT INTO "bz_book_authors" VALUES (14, 7, 1);
INSERT INTO "bz_book_authors" VALUES (15, 7, 2);
INSERT INTO "bz_book_authors" VALUES (24, 12, 2);
INSERT INTO "bz_book_authors" VALUES (25, 12, 3);
INSERT INTO "bz_book_authors" VALUES (26, 13, 2);
INSERT INTO "bz_book_authors" VALUES (27, 13, 3);
INSERT INTO "bz_book_authors" VALUES (28, 14, 2);
INSERT INTO "bz_book_authors" VALUES (29, 14, 3);
INSERT INTO "bz_book_authors" VALUES (30, 15, 2);
INSERT INTO "bz_book_authors" VALUES (31, 15, 3);

-- ----------------------------
-- Auto increment value for bz_book_authors
-- ----------------------------
UPDATE "sqlite_sequence" SET seq = 31 WHERE name = 'bz_book_authors';

-- ----------------------------
-- Indexes structure for table bz_book_authors
-- ----------------------------
CREATE INDEX "bz_book_authors_author_id_e3bfc865"
ON "bz_book_authors" (
  "author_id" ASC
);
CREATE INDEX "bz_book_authors_book_id_41e34b75"
ON "bz_book_authors" (
  "book_id" ASC
);
CREATE UNIQUE INDEX "bz_book_authors_book_id_author_id_891beaa5_uniq"
ON "bz_book_authors" (
  "book_id" ASC,
  "author_id" ASC
);

PRAGMA foreign_keys = true;
