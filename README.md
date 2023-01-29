# myclubs

uma pequena pratica sobre o Prisma

## Detalhes

myclubs é um aplicativo de navegador da web com o qual você pode gerenciar Clubs de Futebol, Torcedores e Competições.

## como testar as rotas ?
## Exemplo


## get http://localhost:4000/championship
  
    deve retornar o exemplo abaixo
[
  {
    "id": 2,
    "name": "Serie B",
    "number_of_rounds": 38,
    "quality_clubs": "20",
    "clubs": []
  },
  {
    "id": 1,
    "name": "Serie C",
    "number_of_rounds": 38,
    "quality_clubs": "20",
    "clubs": [
      {
        "id": 1,
        "name": "Paysandu",
        "city": "Belém",
        "country": "Brasil",
        "colors": "Celeste e Branco",
        "championshipId": 1
      }
    ]
  }
]

 status: 200 ok

## post http://localhost:4000/championship
  
  deve enviar o exemplo abaixo
  body
  {
    "name":"Copa do Brasil",
    "quality_clubs":"60",
    "number_of_rounds":120
  }
  status: 201 Created
  * todosos campos são obrigatórios 

  ## put http://localhost:4000/championship/:id
  
  deve enviar o exemplo abaixo
  body
  {
    "name":"Copa do Brasil",
    "quality_clubs":"60",
    "number_of_rounds":120
  }
  status: 200 ok
  * todosos campos são obrigatórios 

## get http://localhost:4000/clubs

  deve retornar o exemplo abaixo
[
  {
    "id": 1,
    "name": "Paysandu",
    "city": "Belém",
    "colors": "Celeste e Branco",
    "country": "Brasil",
    "Championship": {
      "id": 1,
      "name": "Serie C",
      "quality_clubs": "20",
      "number_of_rounds": 38
    },
    "fans": [
      {
        "id": 1,
        "name": "Giovanne"
      }
    ]
  }
]

## post http://localhost:4000/clubs

  deve enviar o exemplo abaixo
  body
  {  
    "name":"Fluminese",
    "city":"Rio",
    "colors":"Vermelhoe Preto",
    "country":"Brasil",
    "championshipId": 1
  }
 
  status: 201 Created
    * todos os campos são obrigatórios  
    championshipId deve ser um id de um campeonato existente


## put http://localhost:4000/clubs/:id

  deve enviar o exemplo abaixo
  body
  {  
    "name":"Fluminese",
    "city":"Rio",
    "colors":"Vermelhoe Preto",
    "country":"Brasil",
    "championshipId": 1
  }
 
  status: 200 ok
    * todos os campos são obrigatórios  
    championshipId deve ser um id de um campeonato existente
    deve mandar pelo params o id que deseja editar 


## delete http://localhost:4000/clubs/:id

  deve enviar o exemplo abaixo
 
 
  status: 201 Created
    * todos os campos são obrigatórios 
    deve mandar pelo params o id que deseja deletar 
    

## get http://localhost:4000/fans

  deve retornar o exemplo abaixo
[
  {
    "id": 1,
    "name": "Giovanne",
    "clubs": [
      {
        "name": "Paysandu"
      },
      {
        "name": "Remo"
      }
    ]
  }
]

## post http://localhost:4000/fans

  deve enviar o exemplo abaixo
  body
{
  "name":"Giovanne",
  "idClubs":[
    {
      "id":1
    },
    {
      "id":2
    },
    {
      "id":3
    }
  ]
}
ou 
{
  "name":"Giovanne",
}
 
  status: 201 Created
  name se refere ao torcedor 
  idClubs se refere aos clubs que o torcedor torce

  ## get http://localhost:4000/stadium

  deve retornar o exemplo abaixo
  [
    {
    "id": 4,
    "name": "Palestra",
    "club": {
      "id": 1,
      "name": "Fluminese"
    }
  }
]

## post http://localhost:4000/stadium

  deve enviar o exemplo abaixo
  body
{
 "name":"Palestra",
 "id":1
}
  status: 201 Created
  * todosos campos são obrigatórios  
  id se refere ao clubs conectado ao estadio
   

    



  
 

 

 