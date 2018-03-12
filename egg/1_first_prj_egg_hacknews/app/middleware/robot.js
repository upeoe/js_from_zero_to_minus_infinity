'use strict';

// options === app.config.robot
module.exports = (options, app) => {
  return async (ctx, next) => {
    const ua = ctx.get('user-agent') || '';
    const match = options.ua.some(v => v.test(ua));
    if (match) {
      ctx.status = 403;
      ctx.message = 'Go away, robot.';
    } else {
      await next();
    }
  };
};