package test;

import java.util.UUID;

import util.DataBaseUtils;

public class TestUpdate {

	public static void main(String[] args) {
		
		String id = UUID.randomUUID() + "";
		DataBaseUtils.update("INSERT INTO t_user(id,username,password,integral) "
		        + "VALUES (?, ?, ?, ?)", id,"李四",123456,0);
	}

}
