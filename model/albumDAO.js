const DAO=require('./DAO')
class DB {
    //获取全部专辑
    getallalbum(){
        return DAO('select * from album',[])
    }
    //获取指定专辑内的所有歌曲
    getalbumsong(id){
        return DAO('select * from song where albumid=?',[id])
    }
}
module.exports=new DB();