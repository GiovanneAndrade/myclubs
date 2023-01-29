import  joi from "joi"

const postChampionshipSchema = joi.object({
  name: joi.string().required().trim(),
  quality_clubs: joi.string().required().trim(),
  number_of_rounds: joi.number().required()
});

export default postChampionshipSchema;

 