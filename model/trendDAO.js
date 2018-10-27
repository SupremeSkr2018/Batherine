const DAO=require('./DAO')
class DB {
    //获取全部动态
    gettrend(){
      return DAO('select * from trend order by data desc',[])
    }

    //发布文字动态
    addtrend1(tre){
        return DAO('insert into trend (title,content,data,userid) values(?,?,?,?)',
            [tre.title,tre.content,tre.data,tre.userid])
    }
    //发布图文动态
    addtrend(tre){
        return DAO('insert into trend (title,content,data,userid,treImage) values(?,?,?,?,?)',
            [tre.title,tre.content,tre.data,tre.userid,tre.treImage])
    }
    //删除动态
    deltrend(trendid){
        return DAO('delete from trend where trendid=?',[trendid])
    }

}
module.exports=new DB();