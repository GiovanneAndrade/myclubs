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
  }: { name: string; quality_clubs: string; number_of_rounds: number } =
    req.body;


    const result = await allChampionship.colsultChampionshipRepository(
      name
    );
   
    if (result.length > 0) {
      return res.status(404).send("Campeonato ja existe");
    }


  try {
    const result = await allChampionship.postChampionshipRepository({
      name,
      quality_clubs,
      number_of_rounds,
    });

    return res.sendStatus(201);
  } catch (error) {
    return res.sendStatus(500).send(error);
  }
}

async function putChampionshipController(req: Request, res: Response) {
const { id } = req.params;
  const {
    name,
    quality_clubs,
    number_of_rounds,
  }: { name: string; quality_clubs: string; number_of_rounds: number } =
    req.body;
  try {
    const result = await allChampionship.putChampionshipRepository({
      name,
      quality_clubs,
      number_of_rounds,
      id,
    });

    return res.sendStatus(200);
  } catch (error) {
    return res.sendStatus(500).send(error);
  }
}

export {
  getChampionshipController,
  postChampionshipController,
  putChampionshipController,
};
