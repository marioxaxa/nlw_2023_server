/*
  Warnings:

  - You are about to drop the column `created_at` on the `habits` table. All the data in the column will be lost.
  - Added the required column `creation_date` to the `habits` table without a default value. This is not possible if the table is not empty.

*/
-- RedefineTables
PRAGMA foreign_keys=OFF;
CREATE TABLE "new_habits" (
    "id" TEXT NOT NULL PRIMARY KEY,
    "tittle" TEXT NOT NULL,
    "creation_date" DATETIME NOT NULL
);
INSERT INTO "new_habits" ("id", "tittle") SELECT "id", "tittle" FROM "habits";
DROP TABLE "habits";
ALTER TABLE "new_habits" RENAME TO "habits";
PRAGMA foreign_key_check;
PRAGMA foreign_keys=ON;
