const DAO=require('./DAO')
class DB {
    //获取全部动态
    gettrend(){
      return DAO('select * from trend',[])
    }

    //发布动态
    addtrend(tre){
        return DAO('insert into trend(trendid,title,content,data,userid)values(?,?,?,?,?)',
            [tre.trendid,tre.title,tre.content,tre.data,tre.userid])
    }
    //删除动态
    deltrend(trendid){
        return DAO('delete from trend where trendid=?',[trendid])
    }

}
module.exports=new DB();