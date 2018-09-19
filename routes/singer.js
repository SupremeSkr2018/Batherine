const router = require('koa-router')()
const singerController=require('../controllers/SingerController')
router.prefix('/singer')
//根路由  所有歌手
router.get('/', async (ctx, next)=> {
    await singerController.getallsinger(ctx)
})
//二级页面 歌手的歌曲
router.get('/songlist/:singerid', async (ctx, next)=> {
    await singerController.getsingersong(ctx)
})
//三级页面 歌曲播放
router.get('/song/:songid',async (ctx,next)=>{
    await singerController.getonesong(ctx)
})

module.exports = router
