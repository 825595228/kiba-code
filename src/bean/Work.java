package bean;
import annotation.Column;
import annotation.Table;
@Table(tableName = "t_job")
public class Work {
	@Column(type = "varchar(100)",field = "id" ,primaryKey = true ,defaultNull = false)
	private String id;
	@Column(type = "varchar(30)",field = "username",defaultNull = false)
	private String username;
	@Column(type = "boolean",field = "type",defaultNull = false)
	private boolean type;
	@Column(type = "varchar(30)",field = "hospital",defaultNull = false)
	private String hospital;
	@Column(type = "datetime",field = "starttime",defaultNull = false)
	private String starttime;
	@Column(type = "datetime",field = "endtime",defaultNull = false)
	private String endtime;
	@Column(type = "varchar(255)",field = "content",defaultNull = false)
	private String content;
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	
	public boolean getType() {
		return type;
	}
	public void setType(boolean type) {
		this.type=type;
	}
	
	public String getStarttime() {
		return starttime;
	}
	public void setStarttime(String starttime) {
		this.starttime = starttime;
	}
	
	public String getEndtime() {
		return endtime;
	}
	public void setEndtime(String endtime) {
		this.endtime = endtime;
	}
	
	public String getHospital() {
		return hospital;
	}
	public void setHospital(String hospital) {
		this.hospital = hospital;
	}
	
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
}
