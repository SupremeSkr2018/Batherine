const myMusic=require('../model/myMusicDAO')
module.exports= {

    //创建歌单
    creatls: async (ctx, next) => {
        ctx.set('content-type', 'application/json')
        let ls = {
            creatlsid: ctx.query.creatlsid,
            name: ctx.query.name
        }
        try {
            let jsondata = await myMusic.creatls(ls)
            ctx.body = {"code": 200, "message": "ok", data: jsondata};
        } catch (err) {
            ctx.body = {"code": 500, "message": err.toString(), data: []};
        }
    },

    //修改歌单名字
    updatels: async (ctx, next) => {
        ctx.set('content-type', 'application/json')
        let query = ctx.request.body
        let ls = {};
        ls.creatlsid = query.creatlsid
        ls.name = query.name
        try {
            let jsondata = await myMusic.updatels(ls)
            ctx.body = {"code": 200, "message": "ok", data: jsondata};
        } catch (err) {
            ctx.body = {"code": 500, "message": err.toString(), data: []};
        }
    },
    //获取所有歌单列表
    getallList: async (ctx, next) => {
        let jsondata = await myMusic.getallList()
        ctx.set('content-type', 'application/json');
        ctx.body = {"code": 200, "message": "ok", data: jsondata};
    },
    //获取某一歌单的歌曲
    getOnesong: async (ctx, next) => {
        ctx.set('content-type', 'application/json')
        try {
            let jsondata = await  myMusic.getOnesong(ctx.params.singlistid);
            console.log(jsondata)
            ctx.body = {"code": 200, "message": "ok", data: jsondata[0]};
        } catch (err) {
            ctx.body = {"code": 500, "message": err.toString(), data: []}
        }
    },
    // //添加歌曲到列表
    // addSong: async (ctx, next) => {
    //         ctx.set('content-type', 'application/json')
    //         let song = {
    //             songid : ctx.query.songid,
    //             singlistid :ctx.query.singlistid
    //         };
    //         try {
    //            let jsondata= await  myMusic.addSong(song)
    //             ctx.body = {"code": 200, "message": "ok", data: jsondata}
    //         } catch (err) {
    //             ctx.body = {"code": 500, "message": err.toString(), data: []}
    //         }
    //     },
    //删除歌单
    delSinglist: async (ctx, next) => {
        ctx.set('content-type', 'application/json')
        try {
            let jsondata = await myMusic.delSinglist(ctx.params.creatlsid);
            // console.log(ctx.param.singlistid);
            ctx.body = {"code": 200, "message": "ok", data: jsondata}
        } catch (err) {
            ctx.body = {"code": 500, "message": err.toString(), data: []}
        }
    },
    //删除歌曲
    delSong: async (ctx, next) => {
        ctx.set('content-type', 'application/json')
        try {
            let jsondata = await myMusic.delSong(ctx.params.songid);
            // console.log(ctx.params.songid);
            ctx.body = {"code": 200, "message": "ok", data: jsondata}
        } catch (err) {
            ctx.body = {"code": 500, "message": err.toString(), data: []}
        }
        // },
    }
}