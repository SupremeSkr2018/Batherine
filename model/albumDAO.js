const DAO=require('./DAO')
class DB {
    //获取全部专辑
    getallalbum(){
        return DAO('select * from album',[])
    }
    //通过ID获取专辑信息
    getalbum(id){
        return DAO('select * from album where albumid=?',[id])
    }
    //获取指定专辑内的所有歌曲
    getalbumsong(id){
        return DAO('select * from song where albumid=?',[id])
    }

}
module.exports=new DB();