package service;

import java.util.List;
import java.util.Map;

import bean.Work;
import util.DataBaseUtils;
public class SearchService {
	public List searchjob(String username) {
		String sql = "select * from t_job where username = ?";
		List work = DataBaseUtils.queryForList(sql, Work.class,username);
		if(work==null) {
			return null;
		}
		return work;
	}
}
