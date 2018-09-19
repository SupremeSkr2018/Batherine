const DAO=require('../model/DAO')
class DB {
    //查找所有歌单列表
    getallList(){
        return DAO('select * from singlist',[])
    }
    //创建歌单
    creatls(ls){
        return DAO('insert into creatls values(?,?,?)',
            [ls.creatlsid,ls.name,ls.singlistid])
    }
    //查询某一歌单的歌曲
    getOnesong(id){
        return DAO('select * from song where singlistid=?',[id])
    }
    //添加歌曲到歌单
    addSong(song){
        return DAO('insert into singlist values(?,?)',
            [song.songid,song.singlistid])
    }
}
module.exports=new DB();