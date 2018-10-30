<%@ page language="java" contentType="text/html; charset=utf-8" import="util.DataBaseUtils"
    pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>首页</title>
<style>
    *{
    padding:0;
    margin:0;
    font-family:"微软雅黑";
}
.header{
    height:72px;
    background:#458fce ;
}
.header .logo{
    color:#fff ;
    line-height:70px;
    font-size:30px;
    margin-left:20px;
    display:inline-block;
    text-align:center;

}
a {
    color: #fff ;
    text-decoration: none ;
}
.header .login{
    float:right;
    color:#fff ;
    line-height:72px;
    margin-right:70px;
    display:inline-block;
}

.banner{
    height:380px;
    overflow:hidden;
    background: #ddd;
}
.button.blue{
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
<script src="${basePath}/static/js/jQuery.js"></script>
<script>
<%-- 	var username = '<%=session.getAttribute("username")%>'; --%>
 	function search(){
// 	        $.ajax({
// 	            url:"${basePath}/controller/searchController.jsp",
// 	            type: "post",
// 	            data:{"username":username},
// 	            dataType: "json",
// 	            success: function(data){
// 	                /*这个方法里是ajax发送请求成功之后执行的代码*/
// 	                showData(data);//我们仅做数据展示
// 	            },
// 	            error: function(msg){
// 	                alert("ajax连接异常："+msg);
// 	            }
// 	        });
// 	    };
// 	  //展示数据
// 	  function showData(data) {
// 	        var str = "";//定义用于拼接的字符串
// 	        for (var i = 0; i < data.length; i++) {
// 	                //拼接表格的行和列
// 	        str = "<tr><td>" + data[i].name + "</td><td>" + data[i].password + "</td></tr>";
// 	                //追加到table中
//             $("#tab").append(str);         }
// 	        }
 		var username = '<%=session.getAttribute("username")%>';
		alert(username);
	    $.ajax({
	        type:"post",//请求方式
	        url:"${basePath}/controller/searchController.jsp",//请求地址
	        data:{"username":username},//传递给controller的json数据
	        error:function(){
	            alert("查询出错！");
	        },
	        success:function(data){ //返回成功执行回调函数。
	        	if(data == -1){
	        		alert("用户名不能为空")
	        	}else{
		    		window.location.href = "${basePath}/Test.jsp";	        		
	        	}

	        }
		})

	}

</script>
<c:choose>
<c:when  test="${empty sessionScope.username}">
	<div class="header">
    	<div class="logo">任务管理系统</div>
		<div class='login'>

            		<span><a href="login.jsp">登陆</a></span>  
            		<span>|</span>
            		<span><a href="javascript:void(0)">注册</a></span>
    </div>
	</div>
</c:when>
<c:otherwise>
     <div class="header">
    	<div class="logo">任务管理系统</div>
		<div class='login'>
            		<span><a href="javascript:void(0)">欢迎，${sessionScope.username}</a></span>  
            		<span> | </span>
            		<span><a href="${basePath}/controller/logoutController.jsp">退出</a></span>
		</div>
	</div>
	
	<p><a href = '${basePath}/work.jsp'><button type="button" class="button blue" name='new'>新增事件</button></a></p>
	<br><button type="button" class="button blue" name='search' onclick="search()">查询事件</button>
</c:otherwise>
</c:choose>
	
</body>
</html>