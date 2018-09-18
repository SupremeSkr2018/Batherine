const router = require('koa-router')()
const singerDAO=require('../model/singerDAO')
const singerController=require('../document/singerController')
router.prefix('/singer')
//根路由  所有歌手
router.get('/', async (ctx, next)=> {
    await singerController.getallsinger(ctx)
})
//二级页面 歌手的歌曲
router.get('/songlist/:singerid', async (ctx, next)=> {
    await singerController.getsingersong(ctx)
    // let jsondata =await singerDAO.getsingersong(ctx.params.singerid);
    // console.log(jsondata)
    // ctx.set('content-type','application/json')
    // ctx.body = {"code":200,"message":"ok",data:jsondata[0]};
})
//三级页面 歌曲播放
router.get('/song/:songid',async (ctx,next)=>{
    await singerController.getonesong(ctx)
    // let jsondata =await singerDAO.getonesong(ctx.params.songid);
    // ctx.set('content-type','application/json')
    // ctx.body = {"code":200,"message":"ok",data:jsondata[0]};
})

module.exports = router
