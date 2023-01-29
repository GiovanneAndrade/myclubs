import  joi from "joi"

const postFansSchema = joi.object({
  name: joi.string().required().trim()
  
});

export default postFansSchema;

 