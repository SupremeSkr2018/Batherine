const DAO=require('./DAO')
class DB {
    //获取指定动态总数数量
    getalltrezan(id) {
        return DAO('select count(1) from zan where trendid=?',[id])
    }
    //获取指定歌曲点赞总数
    getallcomzan(id){
        return DAO('select count(1) from zan where commentid=?',[id])
    }
}
module.exports=new DB();