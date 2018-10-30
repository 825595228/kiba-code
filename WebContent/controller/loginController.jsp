<%@ page language="java" import="java.util.*,service.LoginService,util.StringUtils,bean.User"
    pageEncoding="UTF-8"%>
<%

    //设置请求的编码
    //request.setCharacterEncoding("UTF-8");
    //获取客户端传递过来参数
    String username = request.getParameter("username");
    String password = request.getParameter("password");
    System.out.println(username);
    System.out.println(password);
    //如果用户名和密码不为空
    if(StringUtils.isEmpty(username)||StringUtils.isEmpty(password)){
    	out.print("-1");
    }else{
    	//初始化loginservice
    	LoginService loginservice = new LoginService();
    	User user = loginservice.getUser(username);
    	System.out.println(user);
        if(user == null){
            out.print("-2");//错误码-2 :   用户名不存在！
        }else
            //如果用户名存在，那么验证用户名和密码是否匹配
            if(!username.equals(user.getUsername()) || !password.equals(user.getPassword())){
                out.print("-3");//错误码-3 :   用户名或密码错误！
            }else{
                //如果能到这一步，就说明用户的确存在，而且账号密码也正确。那么就把user放在session中
                out.print("1");
                session.setAttribute("user", user);
                session.setAttribute("username", user.getUsername());
            }
    }
%>