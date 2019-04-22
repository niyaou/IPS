

import java.sql.SQLException;

import org.junit.Test;

import com.desay.cd.es.mysql.jdbc.JdbcUtils;

public class TestApplication {
    @Test
    public void test1() throws SQLException{
        
        System.out.println("----------"+JdbcUtils.getDevice("fdsafdsafsa"));
    }
}
