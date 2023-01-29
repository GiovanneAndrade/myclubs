-- AlterTable
ALTER TABLE "championship" ALTER COLUMN "createdAt" DROP NOT NULL;

-- AlterTable
ALTER TABLE "clubs" ALTER COLUMN "createdAt" DROP NOT NULL;

-- AlterTable
ALTER TABLE "fans" ALTER COLUMN "createdAt" DROP NOT NULL;

-- AlterTable
ALTER TABLE "stadium" ALTER COLUMN "createdAt" DROP NOT NULL;
