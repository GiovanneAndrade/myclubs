import { Request, Response } from "express";
import * as allClubs from "../repositores/clubs.repository.js";

async function getClubsController(req: Request, res: Response) {
  
 
  try {
    const result = await allClubs.getClubsRepository( );

    return res.send(result);
  } catch (error) {
    return res.sendStatus(500).send(error);
  }
}

async function postClubsController(req: Request, res: Response) {

  try {
    const result = await allClubs.postClubsRepository( );

    return res.send(result);
  } catch (error) {
    return res.sendStatus(500).send(error);
  }
}

export { getClubsController, postClubsController };