-- DropForeignKey
ALTER TABLE "clubs" DROP CONSTRAINT "clubs_stadiumId_fkey";

-- AlterTable
ALTER TABLE "clubs" ALTER COLUMN "stadiumId" DROP NOT NULL;

-- AddForeignKey
ALTER TABLE "clubs" ADD CONSTRAINT "clubs_stadiumId_fkey" FOREIGN KEY ("stadiumId") REFERENCES "stadium"("id") ON DELETE SET NULL ON UPDATE CASCADE;
