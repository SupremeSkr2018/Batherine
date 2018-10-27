const router = require('koa-router')()
const indexController=require('../controllers/indexController')
router.prefix('/index')

//获取所有热门歌单
 router.get('/hotlist/:hot', async (ctx, next) => {
   await indexController.gethotlist(ctx)
   })
//获取某一歌单的所有信息
router.get('/onehotlist/:singlistid',async(ctx,next)=>{
  await indexController.getonehotlist(ctx)
})

//获取某一歌曲的所有信息
router.get('/onesong/:songid',async(ctx,next)=>{
  await indexController.onesong(ctx)
})

//获取所有原创歌曲（榜）
router.get('/worksonglis', async (ctx, next) => {
  await  indexController.getworksong(ctx)
})
//获取所有热门歌曲（榜）
router.get('/hot/:hot', async (ctx, next) => {
  await indexController.gethot(ctx)
})
//获取所有新歌（榜）
router.get('/news', async (ctx, next) => {
  await  indexController.getnew(ctx)
})

//获取某一地区的所有歌曲
router.get('/getnewsong/:location', async (ctx, next) => {
  await indexController.getnewsong(ctx)
})


module.exports = router
