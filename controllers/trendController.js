const trendDAO=require('../model/trendDAO')
module.exports={
    addtrend:async(ctx,next)=>{
        ctx.set('content-type','application/json');

        let tre ={
            trendid:ctx.query.trendid,
            title :ctx.query.title,
            content:ctx.query.content,
            data :ctx.query.data,
            userid:ctx.query.userid
        }

            let jsondata=await trendDAO.addtrend(tre)
            ctx.set('content-type','application/json')
            ctx.body={"code":200,"message":"ok",data:jsondata}

            },
    gettrend:async(ctx,next)=>{
            let jsondata=await trendDAO.gettrend()
            console.log(jsondata)
            ctx.set('content-type','application/json')
            ctx.body = {"code":200,"message":"ok","data":jsondata};
            },
    deltrend:async(ctx,next)=>{
        let jsondata =await trendDAO.deltrend(ctx.params.trengid)
        ctx.set('content-type','application/json')
        ctx.body={"code":200,"message":"ok",data:jsondata}
    }

}