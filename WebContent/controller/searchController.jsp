<%@ page language="java" contentType="text/html; charset=UTF-8" import="java.util.*,bean.Work,util.*,servlet.Job"
    pageEncoding="UTF-8"%>
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







<% 
	String username = request.getParameter("username");
	System.out.println(username);
	Job job = new Job();
	Work user = Job.getUser(username);

	if(StringUtils.isEmpty(username)){
		out.print(-1);
	}else{
		List a =DataBaseUtils.queryForList("select * from t_job where username = ?", username);
		//System.out.println(a);
		request.getSession().setAttribute("Test", a);
		//request.getRequestDispatcher("${basePath}/Test.jsp").forward(request, response);
		out.print(1);
		//response.sendRedirect("Test.jsp?Test=a");

	}
%>	

