const indexDAO=require('../model/indexDAO')
module.exports={
     gethotlist:async(ctx,next)=> {
       let jsondata = await indexDAO.gethotlist(ctx.params.hot);
       console.log(jsondata)
        ctx.set('content-type', 'application/json')
        ctx.body = {"code": 200, "message": "ok", data: jsondata};
    },
  getonehotlist:async(ctx,next)=>{
    let jsondata = await indexDAO.getonehotlist(ctx.params.singlistid);
    console.log(jsondata)
    ctx.set('content-type', 'application/json')
    ctx.body = {"code": 200, "message": "ok", data: jsondata};
  },
    getworksong:async(ctx,next)=> {
        let jsondata = await indexDAO.getworksong();
        console.log(jsondata)
        ctx.set('content-type', 'application/json')
        ctx.body = {"code": 200, "message": "ok", data: jsondata};
    },
    getnewsong:async(ctx,next)=> {
        let jsondata = await indexDAO.getnewsong(ctx.params.location);
        console.log(jsondata)
        ctx.set('content-type', 'application/json')
        ctx.body = {"code": 200, "message": "ok", data: jsondata};
    }

}
