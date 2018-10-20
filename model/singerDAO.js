const DAO=require('../model/DAO')
class DB {
    //获取全部歌手
    getallsinger(){
        return DAO('select * from singer',[])
    }
    //获取热门歌手
  gethotsinger(id){
      return DAO('select * from singer where hot=?',[id])
  }
    //获取一个歌手的全部信息
    getonesinger(id){
      return DAO('select * from singer where singerid=?',[id])
    }
    //获取指定歌手的全部歌曲
   getsingersong(id){
        return DAO('select * from song where singerid=?',[id])
   }
   //获取指定歌曲
    getonesong(id){
        return DAO('select * from song where songid=?',[id])
    }
}
module.exports=new DB();
