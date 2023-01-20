/*
  Warnings:

  - You are about to drop the column `creation_date` on the `habits` table. All the data in the column will be lost.
  - You are about to drop the column `tittle` on the `habits` table. All the data in the column will be lost.
  - Added the required column `created_at` to the `habits` table without a default value. This is not possible if the table is not empty.
  - Added the required column `title` to the `habits` table without a default value. This is not possible if the table is not empty.

*/
-- RedefineTables
PRAGMA foreign_keys=OFF;
CREATE TABLE "new_habits" (
    "id" TEXT NOT NULL PRIMARY KEY,
    "title" TEXT NOT NULL,
    "created_at" DATETIME NOT NULL
);
INSERT INTO "new_habits" ("id") SELECT "id" FROM "habits";
DROP TABLE "habits";
ALTER TABLE "new_habits" RENAME TO "habits";
PRAGMA foreign_key_check;
PRAGMA foreign_keys=ON;
