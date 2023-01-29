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

function postStadiunRepository(name: string, id: number) {
  const result = prisma.stadium.create({
    data: {
      name: name,
      club: {
        connect: {
          id: Number(id),
        },
      },
    },
  });

  return result;
}
function getStadiunRepository() {
  const result = prisma.stadium.findMany({
    select: {
      id: true,
      name: true,
      club: {
        select: {
          id: true,
          name: true,
        },
      },
    },
  });

  return result;
}

function postClubsRepository({
  name,
  city,
  colors,
  country,
  championshipId: number,
}) {
  const result = prisma.clubs.create({
    data: {
      name: name,
      city: city,
      colors: colors,
      country: country,
      championshipId: number,
    },
  });

  return result;
}

function deleteClubRepository(id: number) {
  const result = prisma.clubs.delete({
    where: {
      id: id,
    },
  });

  return result;
}
function updateClubRepository({
  name,
  city,
  colors,
  country,
  championshipId,
  id,
}) {
  const result = prisma.clubs.update({
    where: {
      id: Number(id),
    },
    data: {
      name: name,
      city: city,
      colors: colors,
      championshipId: championshipId,
      country: country,
    },
  });

  return result;
}

export {
  getClubsRepository,
  postClubsRepository,
  postStadiunRepository,
  getStadiunRepository,
  deleteClubRepository,
  updateClubRepository,
};
