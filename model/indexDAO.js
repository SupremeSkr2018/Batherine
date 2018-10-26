const DAO=require('./DAO')
class DB {
    //获取热门歌单
    gethotlist(id){
         return DAO('select * from singlist where hot=?',[id])
    }
    //获取指定歌单的全部信息
  getonehotlist(id){
      return DAO('select * from singlist where singlistid=?',[id])
  }
  //获取某首歌曲的全部信息
  onesong(id){
      return DAO('select * from song where songid=?',[id])
  }
    //获取原创作品排行
    getworksong(){
        return DAO('select * from works order by data desc',[])
    }
    //新歌首发
    // 1 获取内地歌曲
    getnewsong(id){
        return DAO('select * from song where location=?',[id])
    }
}
module.exports=new DB();
