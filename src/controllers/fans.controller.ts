import { Request, Response } from "express";
import * as allUser from "../repositores/fans.repository.js";

async function getFansController(req: Request, res: Response) {
  const { name }:{name:string} = req.body;
 
  try {
    const result = await allUser.getFansRepository( );

    return res.send(result);
  } catch (error) {
    return res.sendStatus(500).send(error);
  }
}

async function postFansController(req: Request, res: Response) {
  const { name, idClubs }:{name:string, idClubs:Array<any>} = req.body;
 
  try {
    //const result = await allUser.postFansRepository( name );
    const resultFans = await allUser.postFansRepository( name, idClubs );


    return res.send(resultFans);
  } catch (error) {
    return res.sendStatus(500).send(error);
  }
}

export { getFansController, postFansController };
