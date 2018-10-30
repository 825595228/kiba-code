package test;

import bean.User;
import bean.Work;
import util.TableUtils;
public class TestMain {

	public static void main(String[] args) {
		String sql = TableUtils.getCreateTableSQL(User.class);
		System.out.println(sql);
	}

}
