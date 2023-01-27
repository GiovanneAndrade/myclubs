import { PrismaClient } from "@prisma/client";

const prisma = new PrismaClient();

function getChampionshipRepository() {
  const result = prisma.championship.findMany({
    select: {
      id: true,
      name: true,
      number_of_rounds: true,
      quality_clubs: true,
      clubs: true,
    },
  });

  return result;
}

function postChampionshipRepository() {
  const result = prisma.championship.create({
    data: {
      name: "Serie B",
      quality_clubs: "20",
      number_of_rounds: 38,
    },
  });

  return result;
}

function putChampionshipRepository() {
  const result = prisma.championship.update({
    where: {
      id: 1,
    },
    data: {
      name: "Serie A",
      quality_clubs: "20",
      number_of_rounds: 38,
    },
  });

  return result;
}

export {
  getChampionshipRepository,
  postChampionshipRepository,
  putChampionshipRepository,
};
