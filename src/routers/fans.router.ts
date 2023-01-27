import { Router } from "express"
import { getFansController, postFansController } from "../controllers/fans.controller.js"
 


const router = Router()

router.get('/fans', getFansController)
router.post('/fans', postFansController)


export default router