const router = require('koa-router')()
const myMusic=require('../model/myMusicDAO')
const mymusicCon=require('../controller/mymusicCon')
router.prefix('/myMusic')
//获取所有歌单列表
router.get('/', async (ctx, next)=> {
    await mymusicCon.getallList(ctx,next)
})
//创建歌单
router.get('/creatls',async(ctx,next) => {
    await mymusicCon.creatls(ctx,next)
})
//获取某一歌单的歌曲
router.get('/getOnesong/:singlistid',async (ctx, next)=>{
   await mymusicCon.getOnesong(ctx,next)
})
//添加歌曲到列表
router.get('/addSong',async (ctx,next)=>{
    await mymusicCon.addSong(ctx,next)
})
module.exports = router
