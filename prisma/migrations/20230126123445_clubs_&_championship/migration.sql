/*
  Warnings:

  - You are about to drop the `User` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropTable
DROP TABLE "User";

-- CreateTable
CREATE TABLE "fans" (
    "id" SERIAL NOT NULL,
    "name" TEXT,

    CONSTRAINT "fans_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "clubs" (
    "id" SERIAL NOT NULL,
    "name" TEXT NOT NULL,
    "city" TEXT NOT NULL,
    "pais" TEXT NOT NULL,
    "country" TEXT NOT NULL,
    "championship" TEXT NOT NULL,
    "colors" TEXT NOT NULL,
    "championshipId" INTEGER,

    CONSTRAINT "clubs_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "championship" (
    "id" SERIAL NOT NULL,
    "name" TEXT NOT NULL,
    "quality_clubs" TEXT NOT NULL,
    "number_of_rounds" INTEGER NOT NULL,

    CONSTRAINT "championship_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "_ClubsToFans" (
    "A" INTEGER NOT NULL,
    "B" INTEGER NOT NULL
);

-- CreateIndex
CREATE UNIQUE INDEX "clubs_name_key" ON "clubs"("name");

-- CreateIndex
CREATE UNIQUE INDEX "championship_name_key" ON "championship"("name");

-- CreateIndex
CREATE UNIQUE INDEX "_ClubsToFans_AB_unique" ON "_ClubsToFans"("A", "B");

-- CreateIndex
CREATE INDEX "_ClubsToFans_B_index" ON "_ClubsToFans"("B");

-- AddForeignKey
ALTER TABLE "clubs" ADD CONSTRAINT "clubs_championshipId_fkey" FOREIGN KEY ("championshipId") REFERENCES "championship"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "_ClubsToFans" ADD CONSTRAINT "_ClubsToFans_A_fkey" FOREIGN KEY ("A") REFERENCES "clubs"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "_ClubsToFans" ADD CONSTRAINT "_ClubsToFans_B_fkey" FOREIGN KEY ("B") REFERENCES "fans"("id") ON DELETE CASCADE ON UPDATE CASCADE;
