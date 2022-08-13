import express, { Application, Request, Response } from 'express';

export const app: Application = express();

app.use(express.json());

app.get('/api/health-check', (req: Request, res: Response) => res.json({ 'ok': true }));
