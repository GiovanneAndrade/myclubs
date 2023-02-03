import { application } from "express";
import supertest from "supertest";
import prisma from "../src/database/db";
import app from "../src/index";

const api = supertest(app);

beforeAll(async () => {
  await prisma.clubs.deleteMany({});
});
beforeAll(async () => {
  await prisma.championship.deleteMany({});
});

/* npx dotenv -e .env.test npx jest */

describe("teste clubs", () => {
  it("testando o POST: /clubs", async () => {
    await supertest(app).post("/championship").send({
      name: "Teste 100 2023",
      quality_clubs: "10",
      number_of_rounds: 20,
    });

    const result = await supertest(app).get("/championship");

    const resultadoClub = await api.post("/clubs").send({
      name: "Madureira",
      city: "Rio",
      colors: "Vermelhoe Preto",
      country: "Brasil",
      championshipId: Number(result.body[0].id),
    });
    expect(resultadoClub.status).toBe(201);
  });

  it("testando o POST: /clubs", async () => {
    const result = await supertest(app).get("/championship");
    const resultado = await api.post("/clubs").send({
      name: "Madureira",
      city: "Rio",
      colors: "Vermelhoe Preto",
      country: "Brasil",
      championshipId: Number(result.body[0].id),
    });
    expect(resultado.status).toBe(400);
  });

  it("teste club GET: /clubs", async () => {
    const resultado = await supertest(app).get("/clubs");
    expect(resultado.status).toBe(200);
    expect(resultado.body).toMatchObject(
      expect.arrayContaining([
        expect.objectContaining({
          id: expect.any(Number),
          name: expect.any(String),
          city: expect.any(String),
          colors: expect.any(String),
          country: expect.any(String),
          Championship: expect.objectContaining({
            id: expect.any(Number),
            name: expect.any(String),
            quality_clubs: expect.any(String),
            number_of_rounds: expect.any(Number),
          }),
        }),
      ])
    );
  });
});
