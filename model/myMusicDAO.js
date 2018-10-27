const DAO=require('../model/DAO')
class DB {
    //查找所有歌单列表
    getallList(){
        return DAO('select * from singlist',[])
    }
    //创建歌单
    creatls(ls){
        return DAO('insert into creatls(name,userid) values(?,?)',
            [ls.name,ls.userid])
    }
    //查询某一歌单的歌曲
    getOnesong(id){
        return DAO('select * from song where singlistid=?',[id])
    }
    //添加歌曲到歌单
    addSong(song){
        return DAO('insert into mymusic(songid,singlistid) values(?,?)',
            [song.songid,song.singlistid])
    }
    //查询用户某个歌单的所有歌曲
  selsong(id){
    return DAO('select * from song join mymusic on mymusic.songid =song.songid where mymusic.singlistid=?',[id])
  }
}
module.exports=new DB();
