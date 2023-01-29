import { Router } from "express"
import { getFansController, postFansController } from "../controllers/fans.controller.js"
import postFansSchema from "../schemas/fans.schemas.js"
import { validateSchema } from "../schemas/shemaValidation.js"
 


const router = Router()

router.get('/fans', getFansController)
router.post('/fans', postFansController)


export default router