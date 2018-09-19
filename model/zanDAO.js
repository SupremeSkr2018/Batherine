const DAO=require('./DAO')
class DB {
    //获取指定动态总数数量
    getalltrezan(id) {
        return DAO('select count(1) from zan where trendid=?',[id])
    }
    //获取指定歌曲点赞总数
    getallsonzan(id){
        return DAO('select count(1) from zan where songid=?',[id])
    }
}
module.exports=new DB();