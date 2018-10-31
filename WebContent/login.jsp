<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
    String path = request.getContextPath();
    int port = request.getServerPort();
    String basePath  = null;
    if(port==80){
        basePath = request.getScheme()+"://"+request.getServerName()+path;
    }else{
        basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path;
    }
    request.setAttribute("basePath", basePath);
%>
<html>
<script src="${basePath}/static/js/jQuery.js"></script>

<script>
	function login(){
		var username = $('#username').val();
		var password = $('#password').val();
	    $.ajax({
	        type:"post",//请求方式

	        url:"${basePath}/controller/loginController.jsp",//请求地址
	        data:{"username":username,"password":password},//传递给controller的json数据
	        error:function(){
	            alert("登录出错");
	        },
	        success:function(data){//返回成功执行回调函数。
	        	if(data == -1){
                    alert('用户名和密码不能为空！');
                }else if(data == -2){
                    alert('用户名不存在！');
                }else if(data == -3){
                    alert('用户名或密码错误！');
                }else{
                    //登录成功后返回首页
                    window.location.href = "${basePath}/index.jsp"; 
                }
	        }

	    });
	}
</script>
 <head>
  <meta charset="UTF-8">
  <meta name="Generator" content="EditPlus?">
  <meta name="Author" content="">
  <meta name="Keywords" content="">
  <meta name="Description" content="">
  <title>首页</title>
  <style>
   div
   {
    border:2px solid #a1a1a1;
    padding:10px 40px;
    background:#dddddd;
    width:900px;
    border-radius:25px;
    position: center;
   }

   body{
    background-image: url("dai.jpg");
    background-repeat: no-repeat;
    background-position: top;
    background-size: cover;
   }
   .button{
    padding: 5px 20px;
    border: 1px solid rgba(0, 0, 0, 0.4);
    text-shadow: 0 -1px 0 rgba(0, 0, 0, 0.4);
    box-shadow: inset 0 1px 0 rgba(255, 255, 255, 0.3), inset 0 10px 10px rgba(255, 255, 255, 0.1);
    border-radius: 0.3em;
    background: #0184ff;
    color: white;
    float: right;
    font-weight: bold;
    cursor: pointer;
    font-size: 13px;

   }
   #logo1{
    color: black;
    text-align: center;
    font-size: 80px;
   }
   #logo2{
    color: black;
    text-align: center;
    font-size: 50px;
   }
   #msty1 {
    color: blue;
    text-align:center ;
    font-size:20px;
   }
   #sub {
    text-align: center;
   }

  </style>
 </head>
 	<body>
 		<h1 id="logo1">Welcome To Kiba Family</h1>
 		<h2 id="logo2">Kiba Family</h2>
 		<div style="margin:0 auto;width:200px;">
			<p id="msty1">用户名：<input type="text" id="username" autofocus 
			autocomplete="off" maxlength="60" placeholder="请输入账号/邮箱/手机号"></p>
			<p id="msty1">密码：<input type="password" id="password" autofocus 
			autocomplete="off" maxlength="60" placeholder="请输入密码"></p></div>
			<p id="msty1"><button class="login_btn" onclick="login()">登录</button></p>
	</body>
</html>

