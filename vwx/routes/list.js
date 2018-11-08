const express=require('express');
const router=express.Router();
const pool=require("../pool.js");
router.get("/demo",(req,res)=>{
    var jd=0;
    var resu=[];        
    for(let i=1;i<=7;i++){
        let obj={title:[],slist:[]};                
        (async function(){
            var sql=" SELECT lname,lid FROM wx_list WHERE lid=?";
            await new Promise(function(open){
                pool.query(sql,i,(err,result)=>{           
                    if(err)throw err;
                    obj.title=result[0];                     
                    open();
                })
            });             
            var sql="SELECT `lbid`, `lbimg`, `lbname`,`lbclass` FROM `wx_listbook` WHERE `lbclass`=?";
            await new Promise(function(open){
                pool.query(sql,i,(err,result)=>{
                    if(err)throw err;                    
                    obj.slist=result;
                    jd+=1;                                
                    resu[i-1]=obj;                    
                    if(jd==7){
                        res.send(resu);
                      }                                    
                })
            })            
        })()                     
    }           
})
router.get("/list",(req,res)=>{
	var lbid=req.query.lbid;
	sql="SELECT x.cid,x.cimage,x.ctitle,x.cdetail,x.cclass,x.liulan,x.time,x.clist ,y.lbid from wx_classdoc x INNER JOIN wx_listbook y on y.lbid=x.clist where lbid=?";
	pool.query(sql,[lbid],(err,result)=>{
		if(err)throw err;
		res.send(result);
	})	   
})
router.get("/search",(req,res)=>{
	var key=req.query.key;
	var sql="SELECT `cid`,`cimage`, `ctitle` FROM `wx_classdoc` WHERE ctitle like ?";
	pool.query(sql,['%'+key+'%'],(err,result)=>{
		if(err)throw err;
		res.send(result);
	})	   
})
router.get("/hot",(req,res)=>{
	var sql="SELECT ctitle from wx_classdoc where cid<11";
	pool.query(sql,(err,result)=>{
		if(err)throw err;
		res.send(result);
	})	   
})
module.exports=router;