package utilities;

import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

public class UserDbUtil {
    private DataSource dataSource;

    public UserDbUtil(DataSource theDataSource) {
        dataSource = theDataSource;
    }

//    public int getUserId(String userName) throws Exception {
//
//        Connection myConn = null;
//        Statement myStmt = null;
//        ResultSet myRs = null;
//
//        try {
//            // get a connection
//            myConn = dataSource.getConnection();
//
//            // create sql statement
//            String sql = "select  from 2017j2ee.user WHERE user_name=".concat(userName);
//
//            myStmt = myConn.createStatement();
//
//            // execute query
//            myRs = myStmt.executeQuery(sql);
//
//            // process result set
//            if(myRs.first()){
//                return myRs.getString("user_psw");
//            }
//            else {
//                return null;
//            }
//        } finally {
//            // close JDBC objects
//            DbUtil.close(myConn, myStmt, myRs);
//        }
//    }

}
