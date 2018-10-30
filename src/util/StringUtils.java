package util;

public class StringUtils {
	public static boolean isEmpty(String str) {
		return null == str || str.equals("") || str.matches("\\s*");
		
	}
	

	public static String defaultValue(String content,String defaultValue) {
	if(isEmpty(content)) {
		return defaultValue;
	}
	return content;
	}
	
	
	/**
	 * 数据库字段改成驼峰
	 * @param column
	 * @return
	 */
	public static String columnToProperty(String column) {
		/**如果字段名为空，返回空**/
		if(isEmpty(column)) return "";
		/**获取字段长度**/
		Byte length = (byte) column.length();
		StringBuilder sb = new StringBuilder(length);
		
		int i = 0;
		/**遍历字段字符**/
		for (int j = 0; j < length; j++) {
			/** 匹配第一个**/
			if (column.charAt(j) == '_') {
				while (column.charAt(j + 1) == '_') {
					j += 1;
				}
				sb.append((""+ column.charAt(++j)).toUpperCase());
				
			}else {
				sb.append(column.charAt(j));
				
			}
		}
		return sb.toString();
	}
	
	/**
	 * 将字符串首字母改成大写
	 */
	public static String upperCaseFirstCharacter(String str) {
		StringBuilder sb = new StringBuilder();
		char[] arr = str.toCharArray();
		for(int i = 0; i < arr.length; i++) {
			if(i==0) sb.append((arr[i] + "").toUpperCase());
			else sb.append((arr[i]+""));
		}
		return sb.toString();
	}
}


