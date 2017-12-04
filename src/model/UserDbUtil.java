package model;

import bean.User;

import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.List;

public class UserDbUtil extends DbUtil {

    //Constructor
    public UserDbUtil(DataSource dataSource) {
        super(dataSource);
    }

    public User getUserByName(String userName) throws Exception{
        Connection myConn = null;
        Statement myStmt = null;
        ResultSet myRs = null;

        try {
            // get a connection
            myConn = dataSource.getConnection();

            // create sql statement
            String sql = "select * from 2017j2ee.user WHERE user_name=\"".concat(userName).concat("\"");

            myStmt = myConn.createStatement();

            // execute query
            myRs = myStmt.executeQuery(sql);

            // process result set

            if(myRs.first()){
                return new User(myRs.getInt("user_id"),
                        myRs.getString("user_name"),
                        myRs.getString("user_psw"),
                        myRs.getString("user_cell"),
                        myRs.getBoolean("user_valid"),
                        myRs.getInt("user_credit"),
                        myRs.getString("user_email"),
                        myRs.getBoolean("user_admin"),
                        myRs.getBoolean("user_avatar"),
                        myRs.getInt("user_balance"));
            }
            else{
                return null;
            }

        } finally {
            // close JDBC objects
            close(myConn, myStmt, myRs);
        }
    }

}
