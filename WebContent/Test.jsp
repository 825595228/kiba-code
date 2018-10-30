<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
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
<%-- <%= pageContext.getAttribute("Test", PageContext.REQUEST_SCOPE) %>
 --%>
<%-- 	<%=request.getParameter("a")%>  --%>
<%--  	${Test} --%>
<table>
<tr>
<th>事件id</th>
<th>姓名</th>
<th>方式</th>
<th>医院</th>
<th>开始时间</th>
<th>结束时间</th>
<th>事件内容</th>
</tr>
<c:forEach items="${Test}" var="map" varStatus="status">
<c:forEach items="${map}" var="data">
<tr>
<th>${data.value}</th>
</tr>
</c:forEach>
</c:forEach>
</table>