package test;

import bean.User;
import util.DataBaseUtils;
import bean.Work;
import service.LoginService;

public class TestUser {
	public static void main(String[] args){
		String username = "张三";
		String sql = "select * from t_user where username = ?";
		User user = DataBaseUtils.queryForBean(sql, User.class, username);
		System.out.print(user);
	}
	
	
//	public static void main(String[] args){
//	Work work = DataBaseUtils.queryForBean("select username from t_job where id = '1'", Work.class);
//	System.out.println(work);
//	}
//	public static void main(String[] args) {
//    	LoginService loginservice = new LoginService();
//    	User user = loginservice.getUser("张三");
//    	System.out.println(user);
//	}
//	
}
