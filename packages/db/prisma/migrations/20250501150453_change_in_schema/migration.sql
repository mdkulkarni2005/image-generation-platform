/*
  Warnings:

  - You are about to drop the column `ehinicity` on the `Model` table. All the data in the column will be lost.
  - Added the required column `ethinicity` to the `Model` table without a default value. This is not possible if the table is not empty.

*/
-- CreateEnum
CREATE TYPE "EthenecityEnum" AS ENUM ('White', 'Black', 'Asian', 'Hispanic', 'MiddleEastern', 'NativeAmerican', 'PacificIslander', 'Other');

-- AlterTable
ALTER TABLE "Model" DROP COLUMN "ehinicity",
ADD COLUMN     "ethinicity" "EthenecityEnum" NOT NULL;

-- DropEnum
DROP TYPE "EthicityEnum";
