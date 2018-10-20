const router = require('koa-router')()
const indexController=require('../controllers/indexController')
router.prefix('/index')

//获取所有热门歌曲
 router.get('/hotlist/:hot', async (ctx, next) => {
   await indexController.gethotlist(ctx)
   })
//获取某一歌单的所有信息
router.get('/onehotlist/:singlistid',async(ctx,next)=>{
  await indexController.getonehotlist(ctx)
})

//获取所有原创歌曲
router.get('/worksonglis', async (ctx, next) => {
  await  indexController.getworksong(ctx)
})
//获取某一地区的所有歌曲
router.get('/getnewsong/:location', async (ctx, next) => {
  await indexController.getnewsong(ctx)
})

module.exports = router
