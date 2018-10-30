package servlet;

import java.io.PrintWriter;
import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpServletResponse;

import bean.User;
import bean.Work;
import net.sf.json.JSONArray;
import util.DataBaseUtils;
public class Job {
	
	public static Work getUser(String username) {	
		String sql = "select * from t_job where username = ?";
		Work user = DataBaseUtils.queryForBean(sql, Work.class, username);
		if(user == null) {
			return null;
		}
		return user;
	}
	
	
	
	
//	@RequestMapping(value="/queryAllStudent")
    public void query(HttpServletResponse resp,String username) {
        try {
            /*list集合中存放的是很多对象*/
            List work = DataBaseUtils.queryForList("select * from t_job where username = ?", username);
            System.out.print(work);
            /*将list集合装换成json对象*/
            JSONArray data = JSONArray.fromObject(work);
            //接下来发送数据
            /*设置编码，防止出现乱码问题*/
            resp.setCharacterEncoding("utf-8");
            /*得到输出流*/
            PrintWriter respWritter = resp.getWriter();
            /*将JSON格式的对象toString()后发送*/
            respWritter.append(data.toString());
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

}
