package bean;

import annotation.Table;
import annotation.Column;
@Table(tableName = "t_user")
public class User {
	@Column(type = "varchar(100)",field = "id" ,primaryKey = true ,defaultNull = false)
	private String id;			//主键id
	@Column(type = "varchar(30)",field = "username")
	private String username;		//用户名
	@Column(type = "varchar(30)",field = "password")
	private String password;	//密码
	@Column(type = "varchar(30)",field = "integral")
	private Integer integral;		//积分
	
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getId() {
		return id;
	} 
	public void setId(String id) {
		this.id = id;
	}
	public Integer getIntegral() {
		return integral;
	}
	public void setIntegral(Integer integral) {
		this.integral = integral;
	}
}
