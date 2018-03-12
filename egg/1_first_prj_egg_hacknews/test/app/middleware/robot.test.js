'use strict';

const { app, mock, assert } = require('egg-mock/bootstrap');

describe('test/app/middleware/robot.test.js', () => {
  it('should success when access', () => {
    return app.httpRequest()
      .get('/')
      .set('User-Agent', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36')
      .expect('Hello world');
  });
  it('should block robot', () => {
    return app.httpRequest()
      .get('/')
      .set('User-Agent', 'Baiduspider')
      .expect(403);
  });
});