'use strict';

const { Controller } = require('egg');

class NewsController extends Controller {
  async list() {
    const { ctx } = this;
    const { page=1 } = ctx.query;
    await ctx.render('news/list.tpl', {
      list: await ctx.service.news.list(page),
      page
    }); // 渲染指定视图，视图中可以使用传递的数据
  }
}

module.exports = NewsController;