import { PrismaClient } from "@prisma/client";

const prisma = new PrismaClient();

function getFansRepository() {
  const result = prisma.fans.findMany({
    select: {
      id: true,
      name: true,
      clubs: {
        select: {
          name: true,
        },
      },
    },
  });

  return result;
}

function FansRepository(name: string) {
  const result = prisma.fans.update({
    where: {
      id: 2,
    },
    data: {
      clubs: {
        connect: [{ id: 5 }, { id: 1 }, { id: 8 }, { id: 7 }],
      },
    },
  });

  return result;
}
function postFansRepository(name: string, idClubs:Array<any>) {
  const result = prisma.fans.create({
    data: {
      name: name
      
    },
  });

  return result;
}

export { getFansRepository, postFansRepository };
