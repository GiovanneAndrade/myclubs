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

function colsultChampionshipRepository(name: string) {
  const result = prisma.championship.findMany({
    where: {
      name: name,
    },
  });

  return result;
}
function championshipByIdRepository(id: number) {
  const result = prisma.championship.findMany({
    where: {
      id: id,
    },
  });

  return result;
}

function postChampionshipRepository({ name, quality_clubs, number_of_rounds }) {
  const result = prisma.championship.create({
    data: {
      name: name,
      quality_clubs: quality_clubs,
      number_of_rounds: number_of_rounds,
    },
  });

  return result;
}

function putChampionshipRepository({
  name,
  quality_clubs,
  number_of_rounds,
  id,
}) {
  const result = prisma.championship.update({
    where: {
      id: Number(id),
    },
    data: {
      name: name,
      quality_clubs: quality_clubs,
      number_of_rounds: Number(number_of_rounds),
    },
  });

  return result;
}

export {
  getChampionshipRepository,
  postChampionshipRepository,
  putChampionshipRepository,
  colsultChampionshipRepository,
  championshipByIdRepository,
};
