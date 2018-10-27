const trendDAO=require('../model/trendDAO')
const fs=require('fs')
const  path=require('path')
const formidable=require('formidable')
module.exports={
    //添加文字动态
    addtrend1:async(ctx,next)=>{
        ctx.set('content-type','application/json');
        let query=ctx.request.body
        let tre ={};
           tre. title =query.title,
            tre.content=query.content,
            tre.data =query.data,
            tre.userid=query.userid
        try{
            let jsondata=await trendDAO.addtrend1(tre)
            ctx.set('content-type','application/json')
                        console.log(jsondata)
            ctx.body={"code":200,"message":"ok",data:jsondata}
        }catch (err) {
            ctx.body={"code":500,"message":"no",data:jsondata}
        }
   },

    //添加图文动态
    addtrend: async (ctx, next) => {
            ctx.set('content-type','application/json');
            var form = new formidable.IncomingForm();
            form.uploadDir = '../public/uploadfile'    //设置文件存放路径  //
            form.multiples = true;  //设置上传多文件
            form.parse(ctx.req, function (err, fields, files) {
                console.log(files)
                //根据files.filename.name获取上传文件名，执行后续写入数据库的操作
                console.log(fields)

                if (files.treImage) {
                    // 获取传入的路径与名字
                    let src = files.treImage.path;
                    let fileName = files.treImage.name;
                    // 获取源文件全路径
                    let srcNew = path.join(__dirname, files.treImage.path);
                    // 改成你想要的名字
                    let destName = `${path.basename(fileName, path.extname(fileName))}${path.extname(fileName)}`;
                    let name = path.join(path.parse(srcNew).dir, destName);
                    fs.renameSync(srcNew, path.join(path.parse(srcNew).dir, destName));
                    let stt = `http://localhost:3000/uploadfile/${destName}`;
                    let tre = { };
                    tre.title = fields.title
                    tre.content = fields.content
                    tre.userid = fields.userid
                    tre.treImage = fields.treImage
                    tre.data = fields.data.replace('-','');
                    tre.treImage=stt;
                    trendDAO.addtrend(tre)
            }
            //根据fileds.mydata获取上传表单元素的数据，执行写入数据库的操作
            if (err) {
                ctx.body = '上传失败'
            }
        })
    },



        //得到动态

        gettrend:async(ctx,next)=>{
            let jsondata=await trendDAO.gettrend()
            console.log(jsondata)
            ctx.set('content-type','application/json')
            ctx.body = {"code":200,"message":"ok",data:jsondata};
            },



    // //删除动态
    // deltrend:async(ctx,next)=>{
    //     let jsondata =await trendDAO.deltrend(ctx.params.trendid)
    //     ctx.set('content-type','application/json')
    //     ctx.body={"code":200,"message":"ok",data:jsondata};
    // }

}