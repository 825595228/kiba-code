<%@ page language="java" contentType="text/html; charset=UTF-8" import="java.util.*,bean.User,util.*,java.util.UUID"
    pageEncoding="UTF-8"%>
<%
	String username = request.getParameter("username");
//	String username = (String)request.getSession().getAttribute("username");
	String type = request.getParameter("type");
	String hospital = request.getParameter("hospital");
	String starttime = request.getParameter("starttime");
	String endtime = request.getParameter("endtime");
	String content = request.getParameter("content");
	System.out.println(username);
	System.out.println(type);
	System.out.println(hospital);
	System.out.println(starttime);
	System.out.println(endtime);
	System.out.println(content);
	if(StringUtils.isEmpty(content)||StringUtils.isEmpty(starttime)||StringUtils.isEmpty(endtime)){
		out.print(-1);//时间和事件内容不得为空
	}else if(StringUtils.isEmpty(username)){
		out.print(-2);//请登录
		
	}else{
		if(type.equals("现场")){
			type = "1";
		}else{
			type = "0";
		}
		out.print(1);
		DataBaseUtils.update("INSERT INTO t_job(id,username,type,hospital,starttime,endtime,content) "
		        + "VALUES (?, ?, ?, ?, ?, ?, ?)",null,username,type,hospital,starttime,endtime,content);
	}

%>