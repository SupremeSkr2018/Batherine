//把路由相应的业务分离
const commentDAO = require('../model/commentDAO')
module.exports= {
    comment: async (ctx) => {
  let jsondata = await commentDAO.comment(ctx.params.albumid);
  console.log(jsondata)
  //设置输出格式为json格式
  ctx.set('content-type', 'application/json');
  ctx.body = {code: 200, message: ' ok', data: jsondata};
},
  sing: async (ctx) => {
  let jsondata = await commentDAO.sing(ctx.params.singlistid);
  console.log(jsondata)
  //设置输出格式为json格式
  ctx.set('content-type', 'application/json');
  ctx.body = {code: 200, message: ' ok', data: jsondata};
},
    //获取动态评论信息
    trend: async (ctx) => {
        ctx.set('Access-Control-Origin', '*')
        let jsondata = await commentDAO.trend(ctx.query.trendid);
        ctx.set('content-type', 'application/json');
        ctx.body = {code: 200, message: ' ok', data: jsondata};
    },
    //获取歌手评论信息
    song: async (ctx) => {
        ctx.set('Access-Control-Origin', '*')
        let jsondata = await commentDAO.song(ctx.query.songid);
        ctx.set('content-type', 'application/json');
        ctx.body = {code: 200, message: ' ok', data: jsondata};
    },
    //添加专辑评论信息
    addComment: async (ctx) => {
        ctx.set('Access-Control-Origin', '*')
        ctx.set('content-type', 'application/json');
        let comment = {
            ccontent: ctx.request.body.ccontent,
            data:ctx.request.body.data,
            albumid: ctx.request.body.albumid,
            userid: ctx.request.body.userid,
        }
        let jsondata = await commentDAO.addComment(comment);
        ctx.body = {code: 200, message: 'add ok', data: jsondata};
    },
    //添加动态评论信息
    addComment1: async (ctx) => {
        ctx.set('Access-Control-Origin', '*')
        ctx.set('content-type', 'application/json');
        let comment = {
            ccontent: ctx.request.body.ccontent,
            data: ctx.request.body.data,
            trendid: ctx.request.body.trendid,
            userid: ctx.request.body.userid,
        }
        let jsondata = await commentDAO.addComment1(comment);
        ctx.body = {code: 200, message: 'add ok', data: jsondata};
    },
    //添加歌手评论信息
    addComment2: async (ctx) => {
        ctx.set('content-type', 'application/json');
        let comment = {
            ccontent: ctx.request.body.ccontent,
            data: ctx.request.body.data,
            songid: ctx.request.body.songid,
            userid: ctx.request.body.userid,
        }
        let jsondata = await commentDAO.addComment2(comment);
        ctx.body = {code: 200, message: 'add ok', data: jsondata};
    },
  //添加对歌单的评论信息
  addComment3: async (ctx) =>{
    ctx.set('content-type', 'application/json');
    let comment = {
      ccontent: ctx.request.body.ccontent,
      data: ctx.request.body.data,
      singlistid: ctx.request.body.singlistid,
      userid: ctx.request.body.userid,
    }
    let jsondata =await  commentDAO.addComment3(comment);
    ctx.body = {code: 200, message: 'add ok', data: jsondata};
  },
    //删除评论信息
    delcomment: async (ctx) => {
        ctx.set('Access-Control-Origin', '*')
        ctx.set('content-type', 'application/json');
        let jsondata = await commentDAO.delcomment(ctx.query.commentid);
        ctx.body = {code: 200, message: '删除 ok', data: jsondata};
    },
}








