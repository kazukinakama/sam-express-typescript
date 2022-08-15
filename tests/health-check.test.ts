import request from 'supertest';
import { app } from '../src/app';

describe('GET /api/health-check', () => {
  it('return status 200', async () => {
    await request(app)
      .get('/api/health-check')
      .expect(200, { ok: true });
  });
});
