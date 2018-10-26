var userDAO = require('../model/userDAO')
var crypto=require('crypto')
 module.exports = {
//注册
    register: async (ctx, next) => {
        let query = ctx.request.body;
        let register = {};
            register.uname=query.uname;
            register.upassword=query.upassword;
            register.ucallphone =query.ucallphone;
        try{
            let jsondata = await userDAO.register(register);
            console.log(jsondata)
            //3.反馈结果
            ctx.body = {"code":200,"message":"ok"}
        }catch(err){
            ctx.body = {"code":500,"message":err.toString(),data:0}
        }
    },






    //登录
    login:async(ctx,next)=>{
         let query=ctx.request.body;
         let user={}
         user.ucallphone=query.ucallphone;
         user.upassword=query.upassword;
         user.userid=query.userid
        console.log(user)
         //密码加密
        //  var upassword=query.upassword;
        //  const hash=crypto.createHash('md5');
        //  hash.update(upassword);
        // upassword=hash.digest('hex')
         try{
             //获取传回的用户id，用户名和密码
             let jsondata=await userDAO.login(user)
             console.log(jsondata);
             // if (jsondata.length == 0) {
             //     ctx.body = {
             //         code: 500,
             //         message: '用户不存在'
             //     }}else
              if(jsondata[0].upassword==user.upassword){
                 // console.log(user.upassword);
                 console.log(jsondata[0].upassword);
                 ctx.body={"code":200,"message":"OK",data:jsondata[0]}
                 var userinfo=JSON.stringify(jsondata[0]);
                 //用户登录成功，将信息保存在cookie中
                 ctx.cookies.set('userInfo',userinfo)
                 // ctx.cookies.get
             }else{
                 ctx.body={"code":403,"message":'密码错误',data:0}
             }
         }
         catch(err){
             ctx.body={"code":500,"message":err.toString(),data:0}
    }
  },


 }














