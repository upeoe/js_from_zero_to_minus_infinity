'use strict';

const { Service } = require('egg');

class NewsService extends Service {
  async list(page = 1) {
    const { serverUrl } = this.config.news;
    const { data } = await this.ctx.curl(`${serverUrl}/news`, {
      data: {
        page
      },
      dataType: 'json'
    });

    return data;
  }
}

module.exports = NewsService;