const router = require('koa-router')()
const albumDontroller=require('../controllers/albumController')
const zanController=require('../controllers/zanController')
router.prefix('/album')
//根路由  所有专辑
router.get('/', async (ctx, next)=> {
    await albumDontroller.getallalbum(ctx)
})
//二级页面 指定专辑内所有歌曲
router.get('/details/:albumid', async (ctx, next)=> {
    await albumDontroller.getalbumsong(ctx)
})
router.get('/getallsonzan/:songid', async (ctx, next)=> {
    await zanController.getallsonzan(ctx)
})
module.exports = router
