const singerDAO=require('../model/singerDAO')
module.exports={
    getallsinger:async(ctx,next)=> {
        let jsondata = await singerDAO.getallsinger(ctx.params.singerid);
        console.log(jsondata)
        ctx.set('content-type', 'application/json')
        ctx.body = {"code": 200, "message": "ok", data: jsondata[0]};
    },
    getsingersong:async(ctx,next)=>{
        let jsondata =await singerDAO.getsingersong(ctx.params.singerid);
        console.log(jsondata)
        ctx.set('content-type','application/json')
        ctx.body = {"code":200,"message":"ok",data:jsondata[0]};
    },
    getonesong:async(ctx,next)=>{
        let jsondata =await singerDAO.getonesong(ctx.params.songid);
        ctx.set('content-type','application/json')
        ctx.body = {"code":200,"message":"ok",data:jsondata[0]};
    }


}