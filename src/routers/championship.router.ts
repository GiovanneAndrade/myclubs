import { Router } from "express";
import {
  getChampionshipController,
  postChampionshipController,
  putChampionshipController,
} from "../controllers/championship.controller";
import postChampionshipSchema from "../schemas/championship.schemas";
import { validateSchema } from "../schemas/shemaValidation";

const router = Router();

router.get("/championship", getChampionshipController);
router.post(
  "/championship",
  validateSchema(postChampionshipSchema),
  postChampionshipController
);
router.put(
  "/championship/:id",
  validateSchema(postChampionshipSchema),
  putChampionshipController
);

export default router;
