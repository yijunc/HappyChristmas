package model;

import bean.User;

import javax.sql.DataSource;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class UserDbUtil extends DbUtil {

    //Constructor
    public UserDbUtil(DataSource dataSource) {
        super(dataSource);
    }

//    public List<User> listUser() throws Exception{
//        Connection myConn = null;
//        Statement myStmt = null;
//        ResultSet myRs = null;
//
//        try {
//            // get a connection
//            myConn = dataSource.getConnection();
//
//            // create sql statement
//            String sql = "select * from 2017j2ee.user WHERE user_name=\"".concat(userName).concat("\"");
//            System.out.println("In UserDbUtil: ".concat(sql));
//            myStmt = myConn.createStatement();
//
//            // execute query
//            myRs = myStmt.executeQuery(sql);
//
//            // process result set
//
//
//        } finally {
//            // close JDBC objects
//            close(myConn, myStmt, myRs);
//        }
//    }

    public User getUserByName(String userName) throws Exception {
        Connection myConn = null;
        Statement myStmt = null;
        ResultSet myRs = null;

        try {
            // get a connection
            myConn = dataSource.getConnection();

            // create sql statement
//            String sql = "select * from 2017j2ee.user WHERE user_name=\"".concat(userName).concat("\"");
            String sql = "select * from 2017j2ee.user WHERE user_name=?";//注释部分窝最后再删哦
            PreparedStatement ptmt = (PreparedStatement) myConn.prepareStatement(sql);//夸我夸我哦
            //传参
            ptmt.setString(1, userName);
            //执行
            myRs = ptmt.executeQuery();
            while (myRs.next()) {
                return new User(myRs.getInt("user_id"),
                        myRs.getString("user_name"),
                        myRs.getString("user_psw"),
                        myRs.getString("user_cell"),
                        myRs.getBoolean("user_valid"),
                        myRs.getString("user_email"),
                        myRs.getBoolean("user_admin"),
                        myRs.getBoolean("user_avatar"),
                        myRs.getInt("user_balance"),
                        myRs.getDate("user_last_seen"),
                        myRs.getDate("user_register_date"));
            }
            return null;


//            System.out.println("In UserDbUtil: ".concat(sql));
//            myStmt = myConn.createStatement();
//
//            // execute query
//            myRs = myStmt.executeQuery(sql);
//
//            // process result set
//
//            if (myRs.first()) {
//                return new User(myRs.getInt("user_id"),
//                        myRs.getString("user_name"),
//                        myRs.getString("user_psw"),
//                        myRs.getString("user_cell"),
//                        myRs.getBoolean("user_valid"),
//                        myRs.getString("user_email"),
//                        myRs.getBoolean("user_admin"),
//                        myRs.getBoolean("user_avatar"),
//                        myRs.getInt("user_balance"),
//                        myRs.getDate("user_last_seen"),
//                        myRs.getDate("user_register_date"));
//            } else {
//                return null;
//            }

        } finally {
            // close JDBC objects
            close(myConn, myStmt, myRs);
        }
    }

    public List<User> getUserListbyAdmin(String userId, String userStatus, String userName,
                                         String dateLastLogined, String dateRegister, String dateDealed) throws Exception {
        Connection myConn = null;
        Statement myStmt = null;
        ResultSet myRs = null;
        try {
            myConn = dataSource.getConnection();
            myStmt = myConn.createStatement();

            String sql = "select * from 2017j2ee.user WHERE" +
                    " user_id=? AND user_name=?";
            //预编译
            PreparedStatement ptmt = (PreparedStatement) myConn.prepareStatement(sql); //预编译SQL，减少sql执行

            //传参
            ptmt.setInt(1, Integer.parseInt(userId));
//            ptmt.setString(2, userStatus);
            ptmt.setString(2, userName);
//            ptmt.setDate(4, new Date(g.getBirthday().getTime()));

            //执行
            ptmt.execute();
            myRs = ptmt.executeQuery();

            List<User> userList = new ArrayList<>();
            User mUser = null;

            while (myRs.next()) {
                mUser = new User().setUserId(myRs.getInt("user_id"))
                        .setUserName(myRs.getString("user_name"))
                        .setUserPsw(myRs.getString("user_psw"))
                        .setUserCell(myRs.getString("user_cell"))
                        .setUserValid(myRs.getBoolean("user_valid"))
                        .setUserEmail(myRs.getString("user_email"))
                        .setUserAdmin(myRs.getBoolean("user_admin"))
                        .setUserAvatar(myRs.getBoolean("user_avatar"))
                        .setUserBalance(myRs.getInt("user_balance"))
                        .setUserLastSeen(myRs.getDate("user_last_seen"))
                        .setUserRegisterDate(myRs.getDate("user_register_date"));
                System.out.println("UserDbUtil:select success! User Select= " + mUser.getUserId() + " || " + mUser.getUserName());
                userList.add(mUser);
            }


//            while(myRs.next()) {
//                mUser = new User();
//
//
//                userList.add(mUser);
//            }
            return userList;
        } finally {
            close(myConn, myStmt, myRs);
        }
    }
}
