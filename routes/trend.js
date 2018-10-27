const router = require('koa-router')()
const trendController=require('../controllers/trendController')
const zanController=require('../controllers/zanController')

router.prefix('/trend')
//trend根路由
router.get('/', async (ctx, next)=> {
    await trendController.gettrend(ctx)
})
//添加文字动态
router.post('/addtrend1',async (ctx,next)=>{
    await trendController.addtrend1(ctx)
})
//添加图文动态
router.post('/addtrend',async (ctx,next)=>{
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
router.get('/addzan/:dj', async (ctx, next)=> {
    await zanController.addzan(ctx)
})
router.get('/delzan/:dj', async (ctx, next)=> {
    await zanController.delzan(ctx)
})

module.exports = router