const router = require('koa-router')()
const trendController=require('../controllers/trendController')
router.prefix('/trend')
//trend根路由
router.get('/', async (ctx, next)=> {
    await trendController.gettrend(ctx)
})
router.get('/addtrend',async (ctx,next)=>{
   await trendController.addtrend(ctx)
})
router.get('/deladd/:trendid',async (ctx,next)=>{
    await trendController.deltrend(ctx)
})

module.exports = router