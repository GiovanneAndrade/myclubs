import { Request, Response } from "express";
import * as allClubs from "../repositores/clubs.repository.js";

async function getClubsController(req: Request, res: Response) {
  try {
    const result = await allClubs.getClubsRepository();

    return res.send(result);
  } catch (error) {
    return res.sendStatus(500).send(error);
  }
}

async function postStadiunController(req: Request, res: Response) {
  const { name, id }: { name: string; id: number } = req.body;
  try {
    const result = await allClubs.postStadiunRepository(name, id);

    return res.sendStatus(201);
  } catch (error) {
    return res.sendStatus(500).send(error);
  }
}

async function getStadiunController(req: Request, res: Response) {
  try {
    const result = await allClubs.getStadiunRepository();

    return res.send(result);
  } catch (error) {
    return res.sendStatus(500).send(error);
  }
}

async function postClubsController(req: Request, res: Response) {
  const {
    name,
    city,
    colors,
    country,
    championshipId,
  }: {
    name: string;
    city: string;
    colors: string;
    country: string;

    championshipId: number;
  } = req.body;

  try {
    const result = await allClubs.postClubsRepository({
      name,
      city,
      colors,
      country,
      championshipId,
    });

    return res.sendStatus(201);
  } catch (error) {
    return res.sendStatus(500).send(error);
  }   
}

async function deleteClubController(req: Request, res: Response) {
  let { id } = req.params;
  
  try {
    await allClubs.deleteClubRepository(Number(id));

    return res.sendStatus(200);
  } catch (error) {
    return res.sendStatus(500).send(error);
  }
}

async function updateClubController(req: Request, res: Response) {
  const { id } = req.params;
  const {
    name,
    city,
    colors,
    country,
    championshipId,
  }: {
    name: string;
    city: string;
    colors: string;
    country: string;

    championshipId: number;
  } = req.body;
  
  try {
    await allClubs.updateClubRepository({
      name,
      city,
      colors,
      country,
      championshipId,
      id
    });

    return res.sendStatus(200);
  } catch (error) {
    return res.sendStatus(500).send(error);
  }
}


export {
  getClubsController,
  postClubsController,
  postStadiunController,
  getStadiunController,
  deleteClubController,
  updateClubController
};
