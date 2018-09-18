const albumDAO=require('../model/albumDAO')
module.exports={
    getallalbum:async(ctx,next)=> {
        let jsondata = await albumDAO.getallalbum();
        console.log(jsondata)
        ctx.set('content-type', 'application/json')
        ctx.body = {"code": 200, "message": "ok", data: jsondata[0]};
    },
    getalbumsong:async(ctx,next)=> {
        let jsondata = await albumDAO.getalbumsong(ctx.params.albumid);
        console.log(jsondata)
        ctx.set('content-type', 'application/json')
        ctx.body = {"code": 200, "message": "ok", data: jsondata[0]};
    }
}