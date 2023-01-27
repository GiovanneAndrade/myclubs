import { Request, Response } from "express";
import * as allChampionship from "../repositores/championship.repository.js";

async function getChampionshipController(req: Request, res: Response) {
  try {
    const result = await allChampionship.getChampionshipRepository();

    return res.send(result);
  } catch (error) {
    return res.sendStatus(500).send(error);
  }
}

async function postChampionshipController(req: Request, res: Response) {
  const {
    name,
    quality_clubs,
    number_of_rounds,
  } : { name: string; 
      quality_clubs: string; 
      number_of_rounds: number 
  } = req.body;
  try {
    const result = await allChampionship.postChampionshipRepository();

    return res.send(result);
  } catch (error) {
    return res.sendStatus(500).send(error);
  }
}

async function putChampionshipController(req: Request, res: Response) {
  try {
    const result = await allChampionship.putChampionshipRepository();

    return res.send(result);
  } catch (error) {
    return res.sendStatus(500).send(error);
  }
}

export {
  getChampionshipController,
  postChampionshipController,
  putChampionshipController,
};
