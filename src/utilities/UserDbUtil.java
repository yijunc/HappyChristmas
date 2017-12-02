package utilities;

import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

public class UserDbUtil extends DbUtil {

    //Constructor
    public UserDbUtil(DataSource dataSource) {
        super(dataSource);
    }

    public int getUserId(String userName) throws Exception {

        Connection myConn = null;
        Statement myStmt = null;
        ResultSet myRs = null;

        try {
            // get a connection
            myConn = dataSource.getConnection();

            // create sql statement
            String sql = "select  from 2017j2ee.user WHERE user_name=".concat(userName);

            myStmt = myConn.createStatement();

            // execute query
            myRs = myStmt.executeQuery(sql);

            // process result set

        } finally {
            // close JDBC objects
            close(myConn, myStmt, myRs);
        }
    }

}
