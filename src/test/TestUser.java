package test;

import bean.User;
import util.DataBaseUtils;
import bean.Work;

public class TestUser {
//	public static void main(String[] args){
//	User user = DataBaseUtils.queryForBean("select id from t_user where username = '张三'", User.class);
//	System.out.println(user);
//	}
	
	
	public static void main(String[] args){
	Work work = DataBaseUtils.queryForBean("select username from t_job where id = '1'", Work.class);
	System.out.println(work);
	}
}
