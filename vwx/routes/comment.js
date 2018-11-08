const express=require('express');
const router=express.Router();
const pool=require("../pool.js");
const fs=require("fs");
const multer=require("multer");
router.get("/knowledge",(req,res)=>{
	var ctotal; 
	var pno=req.query.pno;
	//var pageSize=parseInt(req.query.pageSize);
	var progre=0;
	var obj={pno:pno,data:[]};
	(async function(){
		var sql=" SELECT count(coid) as c FROM wx_comment";
		await new Promise(function(open){
			pool.query(sql,(err,result)=>{
				if(err)throw err;
				ctotal=result[0].c;
				open();
			})
		}) 	
		await new Promise(function(open){
			for(let i=1;i<=ctotal;i++){
				var sql="SELECT x.coid,count(y.rcoid) as r,x.coimg,x.cohead,x.coproblem,x.cotitle,x.coform,x.cotime,x.coname from wx_comment x INNER JOIN wx_reply y on y.rcoid=x.coid WHERE x.coid=?";
				pool.query(sql,i,(err,result)=>{
					if(err) console.log(err);
					result[0].cotime=result[0].cotime.getTime();
					obj.data.push(result[0]);
					progre++;
					if(progre==ctotal){
						open();	
					}
				})
			}
		})
		await new Promise(function(open){
			obj.pageCount=Math.ceil(obj.data.length/7);
			//console.log(obj.data);
			for(var i=0;i<obj.data.length;i++){
				for(var j=0;j<obj.data.length-i-1;j++){
					if(obj.data[j].coid<obj.data[j+1].coid){
						var temp=obj.data[j];
						obj.data[j]=obj.data[j+1];
						obj.data[j+1]=temp;
					}
				}
			}
			obj.data=obj.data.slice((pno-1)*7,(pno-1)*7+7);	
			res.send(obj);
		})
	
	})()	
});
router.get("/reply",(req,res)=>{
	var coid=req.query.coid;
	var obj={wenda:[],huida:[]};
	var progress=0;
    var sql="SELECT x.coid,count(y.rcoid) as r,x.coimg,x.cohead,x.coproblem,x.cotitle,x.coform,x.cotime,x.coname,x.cogood from wx_comment x INNER JOIN wx_reply y on y.rcoid=x.coid where coid=?";
    pool.query(sql,[coid],(err,result)=>{
        if(err) throw err;
		obj.wenda=result;
		progress+=50;
		if(progress==100){
			obj.wenda[0].cotime=obj.wenda[0].cotime.getTime();
			for(i=0;i<obj.wenda[0].r;i++){
				obj.huida[i].rtime=obj.huida[i].rtime.getTime();
			}
			res.send(obj);
		}     
    })
    var sql="SELECT rid,reply,rcoid,rname,rtime,rgood,rhead,rtitle from wx_reply where rcoid=?";
    pool.query(sql,[coid],(err,result)=>{
        if(err) throw err;
		obj.huida=result; 
		progress+=50;
        if(progress==100){
			obj.wenda[0].cotime=obj.wenda[0].cotime.getTime();
			for(i=0;i<obj.wenda[0].r;i++){
				obj.huida[i].rtime=obj.huida[i].rtime.getTime();
			}
			res.send(obj);
		}
    })
});
router.post("/saveReply",(req,res)=>{
    var reply=req.body.reply;
	var rcoid=req.body.rcoid;
    var sql="INSERT INTO `wx_reply`(`rid`, `reply`, `rcoid`, `rtime`) VALUES (null,?,?,now())";
		pool.query(sql,[reply,rcoid],(err,result)=>{
        if(err) throw err;
        //执行成功条件
        if(result.affectedRows==1){
            res.send({code:200,msg:"回答成功"});
        }else{
            res.send({code:201,msg:"回答失败"})
        }
    });
});
router.post("/good",(req,res)=>{
	var rgood=req.body.rgood;
	var rid=req.body.rid;
	var sql="Update wx_reply set rgood=? where rid=?";
	pool.query(sql,[rgood,rid],(err,result)=>{
		if(err) throw err;
		if(result.affectedRows==1){
            res.send({code:200,msg:"点赞成功"});
        }else{
            res.send({code:201,msg:"点赞失败"})
        }
	})
});
router.post("/saveComment",(req,res)=>{
	if(req.body.img!=""){
		var coimg = "https://aimeiht.rrcj123.com/upload/"+req.body.img;
	}else{
		var coimg=null;
	}
    var coproblem=req.body.coproblem;
	var coform=req.body.coform;
    var sql="INSERT INTO `wx_comment`(`coid`,`coimg`,`coproblem`, `coform`, `cotime`) VALUES (null,?,?,?,now())";
	
		pool.query(sql,[coimg,coproblem,coform],(err,result)=>{
        if(err) throw err;
        //执行成功条件
        if(result.affectedRows==1){
            res.send({code:200,msg:"提问成功"});
        }else{
            res.send({code:201,msg:"提问失败"})
        }
    });
});
let path = require("path");  
//上传文件配置  
const storage = multer.diskStorage({ 
  //文件存储位置  
  destination: (req, file, cb) => {  
    cb(null, path.resolve(__dirname,"../static/upload"));  
  },  
  //文件名  
  filename: (req, file, cb) => {  
    cb(null, `${new Date().getTime()}_${Math.ceil(Math.random() * 1000)}_multer.${file.originalname.split('.').pop()}`);  
  }  
});  
const uploadCfg = {  
  storage: storage,  
  limits: {  
    //上传文件的大小限制,单位bytes  
    fileSize: 1024 * 1024 * 20  
  }  
};  
router.post("/uploads", async (req, res) => {  
  let upload = multer(uploadCfg).any();  
  upload(req, res, async (err) => {  
    if (err) {    
      console.log(err);  
      return;  
    };  
    let uploadFile = req.files[0];  
    res.send(res.json(uploadFile.filename));
  });
})
module.exports=router;