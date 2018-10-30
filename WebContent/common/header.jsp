<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<div class="header">
    <div class="logo">任务管理系统</div>
	<div class='login'>
    	<c:choose>
        	<c:when  test="${empty sessionScope.username}">
            	<span><a href="login.jsp">登陆</a></span>  
            	<span>|</span>
            	<span><a href="javascript:void(0)">注册</a></span>
        	</c:when>
        	<c:otherwise>
            	<span><a href="javascript:void(0)">欢迎，${sessionScope.username}</a></span>  
            	<span> | </span>
            	<span><a href="javascript:void(0)">登出</a></span>
        	</c:otherwise>
    	</c:choose>
	</div>
</div>