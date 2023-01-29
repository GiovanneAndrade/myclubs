/*
  Warnings:

  - A unique constraint covering the columns `[name]` on the table `stadium` will be added. If there are existing duplicate values, this will fail.

*/
-- CreateIndex
CREATE UNIQUE INDEX "stadium_name_key" ON "stadium"("name");
