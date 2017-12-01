package utilities;

import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class UserDbUtil {
    private DataSource dataSource;

    public UserDbUtil(DataSource theDataSource) {
        dataSource = theDataSource;
    }

    public boolean checkUserExists(String userName, String userPsw) throws Exception {

        Connection myConn = null;
        Statement myStmt = null;
        ResultSet myRs = null;

        try {
            // get a connection
            myConn = dataSource.getConnection();

            // create sql statement
            String sql = "select * from 2017j2ee.user WHERE user_name=".concat(userName);

            myStmt = myConn.createStatement();

            // execute query
            myRs = myStmt.executeQuery(sql);

            // process result set
            int count = 0;
            if (myRs.next()) {
                count++;
            }
            if (count == 0) {
                return true;
            } else {
                return false;
            }

        } finally {
            // close JDBC objects
            DbClose.close(myConn, myStmt, myRs);
        }
    }
}
