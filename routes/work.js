const router = require('koa-router')()
const workController=require('../controllers/workController')
const workDAO=require('../model/workDAO')
var mysql = require('mysql')
const formidable = require("formidable");
router.prefix('/work')

router.get('/', async (ctx, next) => {
    await ctx.render('index', {
        title: 'Hello Koa 2!'
    })
})
router.post('/save', async (ctx, next) => {
    try{
        let work = {content:ctx.request.body.editor1}
        await workDAO.addworkinst(work)
        ctx.body =  '保存成功!'
    }catch(e){
        ctx.body =  '保存失败!' + e.message
    }
})
router.get('/loadArticle/:id',async (ctx,next)=>{
    console.log('get article')
    try{
        let work = {content:ctx.request.body.editor1}
        let data = await workDAO.delwork(ctx.params.workid)
        ctx.body =  {code:200,message:'ok',data:data};
    }catch(e){
        ctx.body =   {code:500,message:'读取失败!' + e.message};
    }
})
router.post('/upload',async (ctx, next) => {
    const form = new formidable.IncomingForm()
    form.uploadDir = "../public/uploadfile";
    form.keepExtensions = true;
    let urlvedio= []
    return new Promise(function(resolve,reject){
        form.parse(ctx.req,function(err,fields,files){
            if(err) reject(err.message)
            console.log('获取数据文件了......')
            // if(err){console.log(err); return;}
            for(name in files){
                urlvedio.push(path.parse(files[name].path).base)
            }
            console.log(urlvedio)
            resolve(urlvedio)
        })
    }).then((data)=>{
        //按wangeditor格式,输出结果,把上传的文件名返回
        ctx.body = {errno:0,data:data};
    });

})
router.get('/delwork/:workid',async (ctx,next)=> {
    // await workController.delwork(ctx)
    let jsondata =await workDAO.delwork(ctx.params.workid)
    ctx.set('content-type','application/json')
    ctx.body={"code":200,"message":"ok",data:jsondata}
})
module.exports = router