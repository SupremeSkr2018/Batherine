const DAO=require('../model/DAO')
class DB{
    //用户注册
    register(register){
        return DAO('insert into user(upassword,ucallphone,uname) values(?,?,?)',
            [register.upassword,register.ucallphone,register.uname])
    }
    //用户登录

    login(user){
        var sql='select userid,uname,ucallphone,upassword from user where ucallphone=?'
        return DAO(sql,[user.ucallphone])
    }

    //信息完善
    perfect(user){
        return DAO('update user set uname=?,uheadepic=? where ucallphone=?',
            [user.uname,user.uheadepic])
    }
}
module.exports = new DB();