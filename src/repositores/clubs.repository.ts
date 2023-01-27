import { PrismaClient } from "@prisma/client";

const prisma = new PrismaClient();

function getClubsRepository() {
  const result = prisma.clubs.findMany({
    select: {
      id: true,
      name: true,
      city: true,
      colors: true,
      country: true,
      Championship: true,
      fans: true,
    },
  });

  return result;
}

function postClubsRepository() {
  const result = prisma.clubs.create({
    data: {
      name: "Figueirense",
      city: "Santa Catarina",
      colors: "Preto e Branco",
      country: "Brasil",
      pais: "",
      championship: "",
      championshipId: 4,
      
    },
  });

  return result;
}

export { getClubsRepository, postClubsRepository };
