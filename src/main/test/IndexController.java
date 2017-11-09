import net.sf.ehcache.Cache;
import net.sf.ehcache.CacheManager;
import net.sf.ehcache.Element;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class IndexController {
    private ApplicationContext context;
    @Test
    public void testJDBC(){
        String DBDRIVER = "com.mysql.jdbc.Driver";
        String DBURL = "jdbc:mysql://127.0.0.1:3306/shiro_demo?characterEncoding=utf-8";
        String DBUSER = "test";
        String DBPASS = "123456";
        Connection con = null; //表示数据库的连接对象
        Connection conUser = null;
        try {
            Class.forName(DBDRIVER);

            con = DriverManager.getConnection(DBURL, DBUSER, DBPASS); //连接数据库

            Statement stmt = (Statement) con.createStatement(); //Statement 接口需要通过Connection 接口进行实例化操作

            ResultSet resultCount = stmt.executeQuery("select count(0) from u_user"); //执行SQL 语句，查询数据库
            Integer count = null;
            if (resultCount != null) {
                if (resultCount.next()) {
                    count = resultCount.getInt(1);
                    System.out.println("数据库记录数:" + count);
                }
                resultCount.close();
            }
            con.close(); // 3、关闭数据库
        }catch (Exception e) {
            e.printStackTrace();
        }
    }
    @Test
    public void testEHCache(){
        try {
            context = new ClassPathXmlApplicationContext("applicationContext.xml");
            CacheManager cacheManager = new CacheManager();
            final Cache cache = cacheManager.getCache("helloworld");

            // create a key to map the data to
            final String key = "greeting";

            // Create a data element
            final Element putGreeting = new Element(key, "Hello, World!");

            // Put the element into the data store
            cache.put(putGreeting);

            // Retrieve the data element
            final Element getGreeting = cache.get(key);

            // Print the value
            System.out.println(getGreeting.getObjectValue());
        }catch (Exception e) {
            e.printStackTrace();
        }
    }
}
