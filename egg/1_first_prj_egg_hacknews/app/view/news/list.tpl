<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>Hacknews list</title>
  <link rel="stylesheet" href="/public/css/news.css">
</head>
<body>
  <center>
    <table border="0" cellpadding="0" cellspacing="0" width="85%" bgcolor="#f6f6ef">
      <tbody>
        <tr>
          <td bgcolor="#ff6600">
            <table border="0" cellpadding="0" cellspancing="0" width="100%" style="padding:2px;">
              <tbody>
                <tr>
                  <td style="width:18px;padding-right:4px;">
                    <a href="/">
                      <img src="https://news.ycombinator.com/y18.gif" width="18" height="18" style="border:1px solid white;">
                    </a>
                  </td>
                  <td style="line-height: 12pt; height: 10px;">
                    <span class="pagetop">
                      <b class="hnname"><a href="/news">Hacker News</a></b>
                    </span>
                  </td>
                </tr>
              </tbody>
            </table>
          </td>
        </tr>
        <tr style="height:10px;"></tr>
        <tr>
          <td>
            <table border="0" cellpadding="0" cellspacing="0" class="itemlist">
              <tbody>
                {% for item in list %}
                <tr class="athing" id="{{ item.id }}">
                  <td align="right" valign="top" class="title">
                    <span class="rank">{{ loop.index }}.</span>
                  </td>
                  <td valign="top" class="votelinks"></td>
                  <td class="title">
                    <a href="{{ item.url }}" class="storylink">{{ item.title }}</a>
                    <span class="sitebit comhead">
                      (<a href="{{ item.domain }}"><span class="sitestr">{{ item.domain }}</span></a>)
                    </span>
                  </td>
                </tr>
                <tr>
                  <td colspan="2"></td>
                  <td class="subtext">
                    <span class="score" id="score_{{ item.id }}">{{ item.points }} points</span>
                    by
                    <a class="hnuser">{{ item.user }}</a>
                    <span class="age">
                      <a>{{ item.time | relativeTime }}</a>
                    </span> |
                    <a>hide</a> |
                    <a>{{ item.comments_count }} comments</a>
                  </td>
                </tr>
                <tr class="spacer" style="height: 5px;"></tr>
                {% endfor %}
                <tr class="morespace" style="height: 10px;"></tr>
                <tr>
                  <td colspan="2"></td>
                  <td class="title">
                    <a href="/news?page={{ page + 1 }}" class="morelink" rel="nofollow">More</a>
                  </td>
                </tr>
              </tbody>
            </table>
          </td>
        </tr>
        <tr>
          <td>
            <img src="https://news.ycombinator.com/s.gif" width="0" height="10">
            <table width="100%" cellspacing="0" cellpadding="1">
              <tbody><tr><td bgcolor="#ff6600"></td></tr></tbody>
            </table>
            <br>
            <center>This is some description.</center>
            <br>
            <center>Other description.</center>
          </td>
        </tr>
      </tbody>
    </table>
  </center>
</body>
</html>