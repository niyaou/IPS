

import java.sql.SQLException;

import org.junit.Test;

import com.desay.cd.es.mysql.jdbc.JdbcUtils;

public class Test1 {

    
    
    @Test
    public void test1() throws SQLException{
        
        System.out.println("----------"+JdbcUtils.getDevice("8a5982646a06c04a016a0710d477000f"));
    }
}
