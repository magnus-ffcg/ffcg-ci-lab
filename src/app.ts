import express, { Express, Request, Response } from "express";

const app:Express = express();

app.use(express.json());
app.use(express.urlencoded({ extended: true }));

const routes = express.Router();

routes.get('/', (request: Request, response: Response) => {
    return response.send("Hello Tech evolution");
})

app.use(routes);

app.listen(3000, () => {
  console.log(`⚡️[server]: Server is running at http://localhost:3000`);
});