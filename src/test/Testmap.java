package test;
import util.DataBaseUtils;
import util.DataBaseUtils.*;

import java.sql.SQLException;
import java.util.Map;
public class Testmap {

	public static void main(String[] args) throws SQLException {
		// TODO Auto-generated method stub
		DataBaseUtils.config("jdbc.properties");
		Map map = DataBaseUtils.queryForMap("select * from t_user where username = ?","张三");
		System.out.println(map);
	}

}
