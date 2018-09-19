//关于用户对象的相关数据操作
const DAO = require('../model/DAO')
class  DB{
    //获取专辑评论信息的方法
    album(id){
        return DAO('select * from comment where albumid=?',[id])
    }
    //获取动态评论信息的方法
    trend(id){
        return DAO('select * from comment where trendid=?',[id])
    }
    //获取歌曲评论信息的方法
    song(id){
        return DAO('select * from comment where songid=?',[id])
    }
    //添加专辑评论信息方法
    addComment(comment){
        return DAO('insert into comment(commentid,ccontent,ctype,albumid,userid)values(?,?,?,?,?)',
            [comment.commentid,comment.ccontent,comment.ctype,comment.albumid,comment.userid])
    }
    //添加动态评论信息
    addComment1(comment){
        return DAO('insert into comment(commentid,ccontent,ctype,trendid,userid)values(?,?,?,?,?)',
            [comment.commentid,comment.ccontent,comment.ctype,comment.trendid,comment.userid])
    }
    //添加歌曲评论信息
    addComment2(comment){
        return DAO('insert into comment(commentid,ccontent,ctype,songid,userid)values(?,?,?,?,?)',
            [comment.commentid,comment.ccontent,comment.ctype,comment.songid,comment.userid])
    }
    //删除评论信息
    delcomment(id){
        return DAO('delete from comment where commentid=?',[id])
    }

}
module.exports =new DB();