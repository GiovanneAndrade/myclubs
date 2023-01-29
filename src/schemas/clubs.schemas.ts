import  joi from "joi"

const postClubsSchema = joi.object({
  name: joi.string().required().trim(),
  city: joi.string().required().trim(),
  country: joi.string().required().trim(),
  colors: joi.string().required().trim(),
  championshipId: joi.number().required(),
  
});

export default postClubsSchema;

 
 