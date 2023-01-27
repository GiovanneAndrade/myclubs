import { Router } from "express"
import { getChampionshipController, postChampionshipController, putChampionshipController } from "../controllers/championship.controller.js"

 

const router = Router()

router.get('/championship', getChampionshipController)
router.post('/championship', postChampionshipController)
router.put('/championship', putChampionshipController)


export default router