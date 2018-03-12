'use strict';

exports.keys = '1_first_prj_egg_hacknews';

exports.middleware = [
  'robot'
];

exports.view = {
  defaultViewEngine: 'nunjucks', // 默认使用该模板引擎
  mapping: {
    '.tpl': 'nunjucks' // 指定后缀文件采用该模板引擎解析
  }
};

exports.news = {
  serverUrl: 'https://api.hackerwebapp.com'
};

exports.robot = {
  ua: [ /Baiduspider/i ] // user-agent blacklist
};