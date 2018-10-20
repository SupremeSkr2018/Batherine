var userDAO = require('../model/userDAO')
var crypto=require('crypto')
module.exports = {
        register: async (ctx, next) => {
        let query = ctx.request.body;
        let user = {};
            user.upassword = query.upassword;
            user.ucallphone=query.ucallphone
            user.userid=query.userid
            user.uaccount=query.uaccount
        try{
            let jsondata = await userDAO.register(user);
            console.log(jsondata)
            //3.反馈结果
            ctx.body = {"code":200,"message":"ok"}
        }catch(err){
            ctx.body = {"code":500,"message":err.message}
          }
        },






    login: async (ctx, next) => {
        try {
            let ucallphone = ctx.request.body.ucallphone;
            let userpwd = ctx.request.body.upassword;
            let login = await userDAO.login();
            let result = false;
            for (let i = 0;i < login.length;i++) {
                if (userpwd == login[i].upassword && ucallphone == login[i].ucallphone) {
                    result = true;
                    ctx.body = {'code': 200, 'message': '登录成功', "data": result}
                    return;
                } else {
                    ctx.body = {'code': 500, 'message': '登录失败', "data":result};
                    result = false;
                }
            }
        }catch (err) {
            ctx.body = {"code": 500, "message": err.message}
        }
    }
};












