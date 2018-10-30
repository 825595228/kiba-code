package test;

import java.util.UUID;

import util.DataBaseUtils;

public class Testwork {

	public static void main(String[] args) {

		DataBaseUtils.update("INSERT INTO t_job(id,username,type,hospital,starttime,endtime,content) "
		        + "VALUES (?, ?, ?, ?, ?, ?, ?)", 0,"username",0,"hospital",null,null,"content");


	}

}
