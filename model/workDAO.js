const DAO=require('./DAO')
class DB{
    //上传作品
    addworkinst(id){
        return DAO('insert into works(workid,workname,content,useris,data) values(?,?,?,?,?)',[id])
    }
    //删除作品
    delwork(id){
        return DAO('delete from trend where trendid=?',[id])
    }
}
module.exports = new DB();