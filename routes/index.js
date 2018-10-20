const router = require('koa-router')()
const indexController=require('../controllers/indexController')
router.prefix('/index')

router.get('/hotlist/:hot', async (ctx, next) => {
  await indexController.gethotlist(ctx)
  })


router.get('/worksonglis', async (ctx, next) => {
  await  indexController.getworksong(ctx)
})

router.get('/getnewsong/:location', async (ctx, next) => {
  await indexController.getnewsong(ctx)
})

module.exports = router
