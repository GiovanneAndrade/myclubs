import  express  from "express";
import dotenv from 'dotenv';
import fansRouter from './routers/fans.router.js'
import clubsRouter from './routers/clubs.router.js'
import championshipRouter from './routers/championship.router.js'
const app = express();
app.use(express.json());
dotenv.config();

app.use(fansRouter)
app.use(clubsRouter)
app.use(championshipRouter)


const port = 4000
app.listen(4000, ()=>{
  console.log(`server listening on port ${port}`)
})


