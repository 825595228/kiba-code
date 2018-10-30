package test;
/**
 * 读取properties文件
 * @author 小高
 *
 */
//import java.io.File ;
import java.io.InputStream ;
//import java.io.FileInputStream ;
import java.io.IOException;
import java.util.Properties;;
public class TestProperties {
	public static void main(String[] args) {
		InputStream inputStream = TestProperties.class.getClassLoader().getResourceAsStream("jdbc.properties");
		Properties p = new Properties();
		try {
			p.load(inputStream);
			System.out.println(p);
			
		}catch(IOException e){
			e.printStackTrace();
		}
	}

}
