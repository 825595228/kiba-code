package test;
import java.sql.Connection;

import util.DataBaseUtils;
public class Testconnect {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Connection conn = DataBaseUtils.getConnection();
		System.out.println(conn);

	}

}
