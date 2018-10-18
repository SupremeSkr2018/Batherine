const workDAO=require('../model/workDAO')
module.exports={
    delwork:async(ctx,next)=>{
        let jsondata =await workDAO.
        ctx.set('content-type','application/json')
        ctx.body={"code":200,"message":"ok",data:jsondata}
    }
}