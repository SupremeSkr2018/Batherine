const zanDAO =require('../model/zanDAO')
module.exports={
    getalltrezan:async(ctx,next)=>{
        ctx.set('Access-Control-Allow-Origin','*');
        let jsondata=await zanDAO.getalltrezan(ctx.params.trendid)
        ctx.set('content-type','application/json')
        ctx.body = {"code":200,"message":"ok","data":jsondata};
    },
    getallcomzan:async(ctx,next)=>{
        ctx.set('Access-Control-Allow-Origin','*');
        let jsondata=await zanDAO.getallcomzan(ctx.params.commentid)
        ctx.set('content-type','application/json')
        ctx.body = {"code":200,"message":"ok","data":jsondata};
    },
    addzan:async(ctx,next)=>{
        ctx.set('Access-Control-Allow-Origin','*');
        let jsondata=await zanDAO.addzan(ctx.params.dj)
        ctx.set('content-type','application/json')
        try{
            ctx.body = {"code":200,"message":"ok","data":jsondata};
        }catch (e) {
            ctx.body = {"code":200,"message":"no","data":jsondata};
        }
    },
    delzan:async(ctx,next)=>{
        ctx.set('Access-Control-Allow-Origin','*');
        let jsondata=await zanDAO.delzan(ctx.params.dj)
        ctx.set('content-type','application/json')
        try{
            ctx.body = {"code":200,"message":"ok","data":jsondata};
        }catch (e) {
            ctx.body = {"code":200,"message":"no","data":jsondata};
        }

    }




}

