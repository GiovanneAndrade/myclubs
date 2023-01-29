/*
  Warnings:

  - A unique constraint covering the columns `[stadiumId]` on the table `clubs` will be added. If there are existing duplicate values, this will fail.
  - Added the required column `createdAt` to the `championship` table without a default value. This is not possible if the table is not empty.
  - Added the required column `createdAt` to the `clubs` table without a default value. This is not possible if the table is not empty.
  - Added the required column `stadiumId` to the `clubs` table without a default value. This is not possible if the table is not empty.
  - Added the required column `createdAt` to the `fans` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "championship" ADD COLUMN     "createdAt" TIMESTAMP(3) NOT NULL;

-- AlterTable
ALTER TABLE "clubs" ADD COLUMN     "createdAt" TIMESTAMP(3) NOT NULL,
ADD COLUMN     "stadiumId" INTEGER NOT NULL;

-- AlterTable
ALTER TABLE "fans" ADD COLUMN     "createdAt" TIMESTAMP(3) NOT NULL;

-- CreateTable
CREATE TABLE "stadium" (
    "id" SERIAL NOT NULL,
    "name" TEXT NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "stadium_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "clubs_stadiumId_key" ON "clubs"("stadiumId");

-- AddForeignKey
ALTER TABLE "clubs" ADD CONSTRAINT "clubs_stadiumId_fkey" FOREIGN KEY ("stadiumId") REFERENCES "stadium"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
