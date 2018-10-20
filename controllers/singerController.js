const singerDAO=require('../model/singerDAO')
module.exports={
    getallsinger:async(ctx,next)=> {
        let jsondata = await singerDAO.getallsinger();
        console.log(jsondata)
        ctx.set('content-type', 'application/json')
        ctx.body = {"code": 200, "message": "ok", data: jsondata};
    },
  getonesinger:async(ctx,next)=>{
    let jsondata =await singerDAO.getonesinger(ctx.params.singerid);
    console.log(jsondata)
    ctx.set('content-type','application/json')
    ctx.body = {"code":200,"message":"ok",data:jsondata};
  },
  gethotsinger:async(ctx,next)=>{
    let jsondata =await singerDAO.gethotsinger(ctx.params.hot);
    console.log(jsondata)
    ctx.set('content-type','application/json')
    ctx.body = {"code":200,"message":"ok",data:jsondata};
  },
    getsingersong:async(ctx,next)=>{
        let jsondata =await singerDAO.getsingersong(ctx.params.singerid);
        console.log(jsondata)
        ctx.set('content-type','application/json')
        ctx.body = {"code":200,"message":"ok",data:jsondata};
    },
    getonesong:async(ctx,next)=>{
        let jsondata =await singerDAO.getonesong(ctx.params.songid);
        ctx.set('content-type','application/json')
        ctx.body = {"code":200,"message":"ok",data:jsondata[0]};
    }


}
