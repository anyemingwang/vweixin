const express=require('express');
const router=express.Router();
const pool=require("../pool.js");

router.get("/image",(req,res)=>{
    var sql="SELECT * FROM `wx_imagelist`";
    pool.query(sql,(err,result)=>{
    if(err) console.log(err);
    res.send(result);
    }) 
})
router.get("/booklist",(req,res)=>{
    var sql="SELECT * FROM `wx_classdoc` where cclass=1";
    pool.query(sql,(err,result)=>{
    if(err) console.log(err);
    res.send(result);
    }) 
})
router.get("/demo",(req,res)=>{
    var jd=0;
    var resu=[];        
    for(let i=2;i<=5;i++){
        let obj={title:[],slist:[]};                
        (async function(){
            var sql=" SELECT dclass,dtitle FROM wx_doclist WHERE did=?";
            await new Promise(function(open){
                pool.query(sql,i,(err,result)=>{           
                    if(err)throw err;
                    obj.title=result[0];                     
                    open();
                })
            });             
            var sql="SELECT `cimage`,`ctitle`,`cdetail`,`liulan`,`time` FROM wx_classdoc WHERE `cclass`=?";
            await new Promise(function(open){
                pool.query(sql,i,(err,result)=>{
                    if(err)throw err;                    
                    obj.slist=result;
                    jd+=1;                                
                    resu[i-2]=obj;                    
                    if(jd==4){
                        res.send(resu); 
                      }                                    
                })
            })            
        })()                     
    }           
})
module.exports=router;