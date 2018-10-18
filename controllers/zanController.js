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
    }
}
