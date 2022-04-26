var express = require('express');
var nodemailer = require('nodemailer');
var router = express.Router();
var con=require('../config/config');


/* GET home page. */
router.get('/',function(req,res,next){
 
  res.render("admin/indexHome",{homePage:true})
})
router.get('/mechHome', function(req, res, next) {
  let user = req.session.user;
  var mail = req.session.user.email;
  console.log(mail)
  con.query("select * from company",(err,result)=>{
    if(err){
      console.log(err)
    }else{
      console.log(result)
      
      res.render('admin/index',{user,result});
    }
  })
 
});
router.get('/mechReg', function(req, res, next) {
  message=""
  res.render('admin/adminReg',{homePage:true,message});
});
router.get('/addExam', function(req, res, next) {
  var user= req.session.user;
  res.render('admin/addExam',{user});
});
router.post('/addExam', function(req, res, next) {
  var sql = "insert into exam set ?"
  con.query(sql,req.body,(err,result)=>{
    if(err){
      console.log(err)
    }else{
      res.redirect('/addExam')
    }
  })
});


router.post('/mechReg',(req,res)=>{
 var msg;
 var data;
 var orginalPassword;
 var pass1=req.body.password;
 var pass2 = req.body.repassword2;
 if(pass1 != pass2){
   msg="password miss match"
 }else{
  orginalPassword = pass2;
  data = req.body;
 }

 console.log(req.body)
 let sql = "INSERT INTO mechanics SET ?";
let sql2 = "SELECT * FROM mechanics WHERE email = ?";
var mail= req.body.email;
let query = con.query(sql2,[mail],(err,result)=>{
  if(err){
    console.log(err)
  }else{
        if(result.length > 0){
            var message = "This email id has been taken";
            console.log('this email has been taken')
            res.render('/adminReg',{homePage:true,message})
        }else{
          let query = con.query(sql,req.body,(error,row)=>{
            if(error){
              console.log(error)
            }else{
              console.log("data inserted successfully")
              var message ="login to continue"
              res.render('admin/adminLogin',{message,homePage:true})
            }
          })
        }
  }
})
})


router.post('/mechLogin',(req,res)=>{
  var email = req.body.email;
  var password = req.body.password;
  con.query("select * from mechanics where email = ? and password = ? and status = 'approved'",[email,password],
    function(error,result){
     if(error){
       console.log(error);
     }else{
       if(result.length>0){
         req.session.loggedIn= true;
         req.session.user=result[0];
     
          res.redirect('/mechHome')
       }else{
         var message = "Email or Password incorrect or condact Admin for approvel"
        res.render('admin/adminLogin',{homePage:true,message})
       }
     }
    }
  )
  
})




router.get('/approveReq/:id/:shopname/:time/:umail/:email',function(req,res){
  var id = req.params.id;
  var shopname = req.params.shopname;
  var time = req.params.time;
  var usermail = req.params.umail;
  var mail = req.params.email;
  console.log(id)
  con.query("UPDATE company SET status = 'approved' WHERE id = ?", [id],(err,result)=>{
    if(err){
      console.log(err)
    }else{
       res.redirect('/mechHome')
    }
  })
})
router.get('/reject/:id/:mail',function(req,res){
  var id = req.params.id;
  var email=req.params.mail;
  //UPDATE `booking` SET `status` ='hai' WHERE `id` = '1';
 
  con.query("UPDATE company SET status = 'Rejected' WHERE id = ?", [id],(err,result)=>{
    if(err){
      console.log(err)
    }else{
      let transporter = nodemailer.createTransport({
        service: 'gmail',
        auth: {
          user: 'tve20mca-2011@cet.ac.in',
          pass: 'babysunitha',
        },
        tls:{
          rejectUnauthorized : false,
        },
      });
      let mailOptions = {
        from: "aneetashalz86064@gmaisl.com",
        to: email,
        subject: 'Request Rejected',
        text: `your Request for mechanical help is rejected by the shop . `
      };
      transporter.sendMail(mailOptions, function(error, info){
        if (error) {
          console.log(error);
        } else {
          console.log('Email sent: ' + info.response);
        }
      });
      res.redirect('/mechHome')
    }
  })
})
router.get('/serviceBook/:email',function(req,res){
  var email = req.params.email;
  //UPDATE `booking` SET `status` ='hai' WHERE `id` = '1';
 
  con.query("select * from rider",(err,result)=>{
    if(err){
      console.log(err)
    }else{
      var user = req.session.user;
      res.render('admin/serviceBook',{user,result})
    }
  })
})


router.get('/addProduct',function(req,res){
  res.render('admin/addProduct')
})
router.get('/adminLogin',function(req,res,next){
 
  res.render("admin/adminLogin",{homePage:true})
})
router.post('/adminLog',function(req,res,next){
  console.log(req.body)
  res.render("admin/adminLogin",)
})

router.get('/logout',(req,res)=>{
  
      req.session.destroy();
      res.redirect('/')
   
 
})
router.get('/uploadResult',(req,res)=>{
  var user= req.session.user;
  res.render('admin/uploadResult',{user})
})
router.post('/result',(req,res)=>{
  var sql="insert into result set ?"
  con.query(sql,req.body,(err,result)=>{
    if(err){
      console.log(err)
    }else{
      res.redirect('/uploadResult')
    }
  })
})
router.get('/viewWorks',(req,res)=>{
  var sql="Select * from works"
  con.query(sql,(err,result)=>{
    if(err){
      console.log(err)
    }else{
      var user = req.session.user;
      res.render('admin/viewWorks',{result,user})
    }
  })
})
router.get('/qrg',(req,res)=>{
  var user= req.session.user;
  res.render('admin/qrg',{user})
})

module.exports = router;

