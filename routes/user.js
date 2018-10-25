const router=require('koa-router')()
// const
const  userController=require('../controllers/userController')

router.prefix('/user')
//用户注册
router.post('/register',async (ctx,next)=>{
    // let jsondata =  await register(ctx,next);
    await userController.register(ctx,next)
    // ctx.body = {code:200,message:'ok',data:jsondata};
})
//用户登录

router.post('/login',async (ctx,next)=>{
    // let jsondata = userController.login(ctx)
    await userController.login(ctx,next)
    // ctx.body = {code:200,message:'ok',data:jsondata};
})

//修改信息
router.post('/perfect',async (ctx,next)=> {
    let jsondata = userController.perfect(ctx);
    ctx.body = {code: 200, message: 'ok', data: jsondata};
})
//用户头像上传接口
router.post('/',async (ctx,next)=> {
    let jsondata = userController.perfect(ctx);
    ctx.body = {code: 200, message: 'ok', data: jsondata};
})
//用户昵称
router.post('/',async (ctx,next)=>{
    let jsondata = userController.perfect(ctx);
    ctx.body = {code:200,message:'ok',data:jsondata};
})
// //修改用户密码
// router.post('/perfect/password',async (ctx,next)=>{
//     let jsondata = changepwdController.userchangpwd(ctx,next);
//     ctx.body = {code:200,message:'ok',data:jsondata};
// })


module.exports = router
