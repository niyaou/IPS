package com.desay.cd.es.mysql.jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.HashMap;

public class JdbcUtils {
    // 通过上面的工具就可以获取到properties文件中的键值从而可以加载驱动 获取链接 从而 可以增删改查
    private static Connection conn = null;

    public static Connection getConn() {
//        PropertiesUtil.loadFile("jdbc.properties");
        String driver = "com.mysql.jdbc.Driver";//PropertiesUtil.getPropertyValue("driver");
        String url = "jdbc:mysql://10.217.2.230:3307/pangoo_data_factory?characterEncoding=utf8";// PropertiesUtil.getPropertyValue("url");
        String username = "root";//PropertiesUtil.getPropertyValue("username");
        String password = "desay_12345";//PropertiesUtil.getPropertyValue("password");

        try {
            Class.forName(driver);
            conn = DriverManager.getConnection(url, username, password);

        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
            close();
        }
        return conn;
    }

    public static void close() {
        try {
            conn.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    
    public static Object getDevice(String id) throws SQLException {
        String sql = "select * from sys_device where device_id like " + "'" + id + "'";
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
                a.put("time", ret.getObject(2));
                a.put("name", ret.getObject(3));
                a.put("time2", ret.getObject(4));
                a.put("version", ret.getObject(5));
            }
            ret.close();
            conn.close();// 关闭连接
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
