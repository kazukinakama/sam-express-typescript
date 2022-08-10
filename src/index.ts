import express, { Application, Request, Response } from 'express';

const app: Application = express();
const port: number = Number(process.env.PORT) || 80;

app.use(express.json());

app.get('/api', (req: Request, res: Response) => res.send('Hello World!'));

app.listen(port, () => console.log(`Example app listening on port ${port}`));
