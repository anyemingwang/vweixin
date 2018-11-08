const express=require('express');
const bodyParser=require('body-parser');
const index=require('./routes/index');
const comment=require('./routes/comment');
const list=require('./routes/list');
var app=express();
app.use(bodyParser.urlencoded({extended:false}));
app.use(express.static(__dirname+"/static"));
app.listen(3000);
const cors=require("cors");
app.use(cors({
    origin:["https://aimeiht.rrcj123.com"],
    credentials:true
}));
app.use("/index",index);
app.use("/comment",comment);
app.use("/list",list);

