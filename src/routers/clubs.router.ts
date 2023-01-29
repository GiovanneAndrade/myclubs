import { Router } from "express";
import {
  deleteClubController,
  getClubsController,   
  getStadiunController,             
  postClubsController,
  postStadiunController,
  updateClubController,
} from "../controllers/clubs.controller.js";
import postClubsSchema from "../schemas/clubs.schemas.js";
import { validateSchema } from "../schemas/shemaValidation.js";

const router = Router();

router.get("/clubs", getClubsController);
router.post("/clubs", validateSchema(postClubsSchema), postClubsController);
router.delete("/clubs/:id", deleteClubController);
router.put("/clubs/:id", updateClubController);
 
router.post("/stadium", postStadiunController);
router.get("/stadium", getStadiunController);

export default router;
