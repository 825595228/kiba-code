<%@ page language="java" contentType="text/html; charset=UTF-8"
	import="java.util.*,bean.User,util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
	String path = request.getContextPath();
	int port = request.getServerPort();
	String basePath = null;
	if (port == 80) {
		basePath = request.getScheme() + "://" + request.getServerName() + path;
	} else {
		basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path;
	}
	request.setAttribute("basePath", basePath);
%>
<html>
<script src="${basePath}/static/js/jQuery.js"></script>

<script>
	function submit(){
		var username = '<%=session.getAttribute("username")%>';//获取用户名
		var type = document.getElementById("type").value;//获取解决方式
		var hospital = document.getElementById("hospital").value;//获取医院
		var starttime = $('#starttime').val();
		var endtime = $('#endtime').val();//获取时间
		var content = $('#content').val();//获取事件内容
		//		alert(username+","+type+","+hospital+","+ starttime+","+content);
		$.ajax({
			type : "post",//请求方式
			url : "${basePath}/controller/submitController.jsp",//请求地址
			data : {
				"username" : username,
				"type" : type,
				"hospital" : hospital,
				"starttime" : starttime,
				"endtime" : endtime,
				"content" : content
			},//传递给controller的json数据
			error : function() {
				alert("出错！");
			},
			success : function(data) { //返回成功执行回调函数。
				if (data == 1) {
					window.location.href = "${basePath}/index.jsp";
				}else if (data == -2){
					alert("请登录")
				} else {
					alert("时间和事件内容不能为空")					
				}
			}
		})

	}
</script>

<head>
<meta charset="UTF-8">
<meta name="Generator" content="EditPlus®">
<meta name="Author" content="">
<meta name="Keywords" content="">
<meta name="Description" content="">
<title>Froeasy.service</title>

<style>
body {
	background-image: url("mb.jpg");
	background-position: center;
	background-repeat: no-repeat;
	background-size: cover;
}

#mysty3 {
	color: black;
	text-align: center;
	font-size: 20px;
}

#mysty2 {
	color: white;
	text-align: center;
	font-size: 50px;
}

#div {
	width: 220px;
	padding: 10px;
	border: 5px solid gray;
	margin: 0px;
	color: black;
	text-align: center;
	font-size: 30px;
	font: -apple-system-body;
}

#div1 {
	background-color: #e9eeea;
	background-position: absolute;
	border: 1px solid red;
	border-radius: 5px;
	color: #000000;
	font: 14px 'Microsoft YaHei', '微软雅黑';
	margin: 0 auto;
	width: 600px;
	padding: 20px;
	margin-top: 100px;
	margin-right: 550px;
	opacity: auto;
}

.button.blue {
	background-color: #008CBA;
	border: none;
	color: white;
	padding: 15px 32px;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	font-size: 16px;
	margin: 4px 2px;
	cursor: pointer;
}
</style>
</head>
<body>
	<p id="mysty2">Welcome to KIBA!</p>
	<div>
		<p id="mysty3">Please Check!</p>
	</div>
	<!-- <form> -->
	<div id="div1" style="margin: 0px auto auto auto; text-align: left">
		<p>
			用 户：
			${sessionScope.username}</p>
<!--		<p>
			方 式：
				<select id="type">
				<option value="现场">现 场</option>
				<option value="远程">远 程</option>
				</select>
		</p>
        -->
		<p id="msty1">地点：<input type="text" id="username" autofocus 
			autocomplete="off" maxlength="60" placeholder="请填写地点全名"></p>


		<p>
			开始时间：<input id="starttime" type="datetime-local">
		</p>
<!--		<p>
			结束时间：<input id="endtime" type="datetime-local">
		</p>
        -->
		<p>
			留言详情：<input id="content" type="text"
				style="width: 500px; height: 20px;">
		</p>
		<p>
			<button class="button blue" onclick="submit()">提交</button>
		</p>
		<!-- </form> -->
	</div>



</body>
</html>
