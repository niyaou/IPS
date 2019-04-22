package com.desay.cd.es.mysql.jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.HashMap;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

public class JdbcUtils {
    // 通过上面的工具就可以获取到properties文件中的键值从而可以加载驱动 获取链接 从而 可以增删改查
    private static Connection conn = null;
    private final static Logger logger = LogManager.getLogger(JdbcUtils.class);

    static {
        String driver = "com.mysql.jdbc.Driver";
        try {
            System.out.println("----11--load jdbc driver    com.mysql.jdbc.Driver");
            Class.forName(driver);
            System.out.println("---22---load jdbc driver    com.mysql.jdbc.Driver");
            logger.info("------load jdbc driver    com.mysql.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
    }
    public static Connection getConn() {
        System.out.println("---- DriverManager.getConnection(url, username, password)------");
//        PropertiesUtil.loadFile("jdbc.properties");
      //PropertiesUtil.getPropertyValue("driver");
        String url = "jdbc:mysql://10.217.2.230:3307/pangoo_platform_others?characterEncoding=utf8";// PropertiesUtil.getPropertyValue("url");
        String username = "root";//PropertiesUtil.getPropertyValue("username");
        String password = "desay_12345";//PropertiesUtil.getPropertyValue("password");

        try {
            logger.info(url);
            logger.info(username);
            logger.info(password);
            conn = DriverManager.getConnection(url, username, password);
        }  catch (SQLException e) {
            logger.info("1-------");
            e.printStackTrace();
            close();
          
        } catch(Exception x) {
            logger.info("2-------");
            x.printStackTrace();
            close();
        }
        return conn;
    }

    public static void close() {
        logger.info("3-------"+(conn!=null));
        try {
            conn.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    
    public static  HashMap<String ,Object> getDevice(String id) throws SQLException {
        System.out.println("------HashMap<String ,Object> getDevice-----"+id);
        String sql = "select * from test_data where id like " + "'" + id + "'";
        Connection conn = JdbcUtils.getConn();
        Statement stmt = null;
        ResultSet ret = null;
        HashMap<String ,Object> a=new  HashMap<String ,Object>();
        try {
            stmt = conn.createStatement();
            // 执行语句，得到结果集
            ret = stmt.executeQuery(sql);
            while (ret.next()) {
               
                // 这里只查询的密码
//                a=ret.getObject(2);
                a.put("id", ret.getObject(1));
                a.put("source_data", ret.getObject(2));
                a.put("json_data", ret.getObject(3));
                a.put("create_date", ret.getObject(4));
                a.put("vin", ret.getObject(5));
                a.put("type", ret.getObject(6));
            }
            ret.close();
        } catch (SQLException e1) {
            e1.printStackTrace();
            return null;
        }
        return a;
    }
    
    
    /**
     * 通过用户名到数据库中获取凭证密码
     * 
     * @param userName
     * @return
     */
    private static String getPasswordByUserName(String userName) {
        // SQL语句
        String sql = "select password from users where username = " + "'" + userName + "'";
        Connection conn = JdbcUtils.getConn();
        Statement stmt = null;
        ResultSet ret = null;
        String password = null;
        try {
            stmt = conn.createStatement();
            // 执行语句，得到结果集
            ret = stmt.executeQuery(sql);
            while (ret.next()) {
                // 这里只查询的密码
                password = ret.getString(1);
            }
            ret.close();
            conn.close();// 关闭连接
        } catch (SQLException e1) {
            e1.printStackTrace();
        }
        return password;
    }
}
