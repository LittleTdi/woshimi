const express=require("express");
const mysql=require("mysql");
const pool=mysql.createPool({
    host:"127.0.0.1",
    port:3306,
    database:"wsm",
    user:"root",
    password:"",
    connectionLimit:15
});
const cors=require("cors");
var server=express();
server.listen(3000);
server.use(cors({
    origin:["http://127.0.0.1:8080","http://localhost:8080","http://127.0.0.1:8081"],credentials:true
}));
server.use(express.static("public"));
server.get("/home",(req,res)=>{
    var obj={code:1}
    var sql="SELECT sid,swipe_img FROM w_swipe";
    pool.query(sql,(err,result)=>{
        if(err) throw err;
        //console.log(result);
        obj.data=result;
        res.send(obj);
    })
})
server.get("/grid",(req,res)=>{
    var obj={code:1};
    var sql="SELECT grid_img,title,href FROM w_grid";
    pool.query(sql,(err,result)=>{
        if(err) throw err;
        obj.data=result;
        res.send(obj);
    })
})
server.get("/cate",(req,res)=>{
    var obj={code:1}
    pool.query("SELECT cid,url FROM w_cate",(err,result)=>{
        if(err) throw err;
        obj.data=result;
        res.send(obj);
    })
})
server.get('/getStars',(req,res)=>{
    var obj={code:1};
    pool.query('SELECT slid,title_img,title,genre,detail,score FROM w_storyList',(err,result)=>{
        if(err) throw err;
        obj.data=result;
        res.send(obj);
    })
})