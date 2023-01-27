import { Router } from "express"
import { getClubsController, postClubsController } from "../controllers/clubs.controller.js"
 
 
    

const router = Router()

router.get('/clubs', getClubsController)
router.post('/clubs', postClubsController)


export default router