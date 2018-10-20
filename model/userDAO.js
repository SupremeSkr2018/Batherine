const DAO=require('../model/DAO')
class DB{
    //用户注册
    register(user){
        return DAO('insert into user(userid,upassword,ucallphone,uaccount)values(?,?,?,?)',
            [user.userid,user.upassword,user.ucallphone,user.uaccount])
    }
    //用户登录
    login(){
        return DAO('select ucallphone,upassword from user',[]);
    }
    //信息完善
    perfect(user){
        return DAO('update user set uname=?,uheadepic=? where ucallphone=?',
            [user.uname,user.uheadepic])
    }
}
module.exports = new DB();