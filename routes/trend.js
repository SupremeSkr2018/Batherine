const router = require('koa-router')()
const trendController=require('../controllers/trendController')
const zanController=require('../controllers/zanController')
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
router.get('/getalltrezan/:trendid',async (ctx,next)=>{
    await zanController.getalltrezan(ctx)
})
router.get('/getallcomzan/:commentid', async (ctx, next)=> {
    await zanController.getallcomzan(ctx)
})

module.exports = router