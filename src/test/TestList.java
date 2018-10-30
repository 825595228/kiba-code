package test;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import util.DataBaseUtils;

public class TestList {

//	public static void main(String[] args) throws SQLException {
//		DataBaseUtils.config("jdbc.properties");
//		Map map = DataBaseUtils.queryForMap("select * from t_user where username=  ? ","小高");
//		System.out.println(map);
//
//	}
	public static void main(String[] args)  {
		DataBaseUtils.config("jdbc.properties");
		List list = DataBaseUtils.queryForList("select * from t_job where username = ?","张三");
		System.out.println(list);
		

	}

}
