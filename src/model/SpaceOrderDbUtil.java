package model;

import bean.SpaceOrder;

import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

public class SpaceOrderDbUtil extends DbUtil {

    public SpaceOrderDbUtil(DataSource dataSource) {
        super(dataSource);
    }

    public int countSpaceOrder() throws Exception {
        Connection myConn = null;
        Statement myStmt = null;
        ResultSet myRs = null;

        try {
            myConn = dataSource.getConnection();
            myStmt = myConn.createStatement();
            String sql = "SELECT * FROM 2017j2ee.space_order";
            myRs = myStmt.executeQuery(sql);
            myRs.last();
            return myRs.getRow();
        } finally {
            close(myConn, myStmt, myRs);
        }
    }

    public boolean addSpaceOrder(int spaceId, String spaceTaker, String spaceStart, String spaceEnd, int spacePrice, int spaceType) throws Exception {
        Connection myConn = null;
        Statement myStmt = null;
        ResultSet myRs = null;

        try {
            myConn = dataSource.getConnection();
            String sql = "insert into 2017j2ee.space_order (space_order_space_id, space_order_taker, " +
                    "space_order_date_start, space_order_date_end, space_order_price, space_order_space_type) VALUES (?,?,?,?,?,?)";
            PreparedStatement prstmt = myConn.prepareStatement(sql);
            System.out.println(sql);

            prstmt.setInt(1, spaceId);
            prstmt.setString(2, spaceTaker);
            prstmt.setString(3, spaceStart);
            prstmt.setString(4, spaceEnd);
            prstmt.setInt(5, spacePrice);
            prstmt.setInt(6, spaceType);

            prstmt.execute();
            return true;
        } finally {
            close(myConn, myStmt, myRs);
        }
    }


    public boolean doneSpaceOrderByOrderId(int orderId, int orderPrice, String orderDate) throws Exception {
        Connection myConn = null;
        Statement myStmt = null;
        ResultSet myRs = null;

        try {
            myConn = dataSource.getConnection();
            myStmt = myConn.createStatement();
            String sql = "UPDATE 2017j2ee.space_order SET space_order_status = 1 , space_order_date_end = \""
                    + orderDate
                    + "\" , space_order_price = "
                    + orderPrice
                    + " WHERE space_order_id = "
                    + orderId;
            System.out.println("2017/12/19: " + sql);
            myStmt.executeUpdate(sql);
            return true;
        } finally {
            close(myConn, myStmt, myRs);
        }
    }


    public boolean cancelSpaceOrderByOrderId(int orderId) throws Exception {
        Connection myConn = null;
        Statement myStmt = null;
        ResultSet myRs = null;

        try {
            myConn = dataSource.getConnection();
            myStmt = myConn.createStatement();
            String sql = "UPDATE 2017j2ee.space_order SET space_order_status = 0 WHERE space_order_id = " + orderId;
            System.out.println(sql);
            myStmt.executeUpdate(sql);
            return true;
        } finally {
            close(myConn, myStmt, myRs);
        }
    }

    public List<SpaceOrder> getSpaceOrderListByAdmin(String orderId, String orderTaker, String orderSpaceId, String orderSpaceType, String orderStart, String orderEnd, String orderStatus) throws Exception {
        Connection myConn = null;
        Statement myStmt = null;
        ResultSet myRs = null;

        try {
            myConn = dataSource.getConnection();
            myStmt = myConn.createStatement();
            String sql = "select * from 2017j2ee.space_order WHERE";

            SimpleDateFormat dateFormatFrom = new SimpleDateFormat("mm/dd/yyyy");
            SimpleDateFormat dateFormatTo = new SimpleDateFormat("yyyy-mm-dd");

            if (null != orderId && orderId.length() != 0) {
                sql = sql + " space_order_id=" + orderId;
            } else {
                sql += " space_order_id IS NOT NULL ";
            }
            sql += " AND ";
            if (null != orderTaker && orderTaker.length() != 0) {
                sql = sql + " space_order_taker=\"" + orderTaker + "\"";
            } else {
                sql += " space_order_taker IS NOT NULL";
            }
            sql += " AND ";
            if (null != orderSpaceId && orderSpaceId.length() != 0) {
                sql = sql + " space_order_space_id=" + orderSpaceId;
            } else {
                sql += " space_order_space_id IS NOT NULL";
            }
            sql += " AND ";
            if (orderSpaceType != null && orderSpaceType.length() != 0 && !orderSpaceType.equals("all")) {
                sql = sql + " space_order_space_type=" + orderSpaceType;
            } else {
                sql += " space_order_space_type IS NOT NULL";
            }
            sql += " AND ";
            if (null != orderStart && orderStart.length() != 0) {
                sql = sql + " space_order_date_start=\"" + dateFormatTo.format(dateFormatFrom.parse(orderStart)) + "\"";
            } else {
                sql += " space_order_date_start IS NOT NULL";
            }
            sql += " AND ";
            if (null != orderEnd && orderEnd.length() != 0) {
                sql = sql + " space_order_date_end=\"" + dateFormatTo.format(dateFormatFrom.parse(orderEnd)) + "\"";
            } else {
                sql += " space_order_date_end IS NOT NULL";
            }

            if (null != orderStatus && orderStatus.length() != 0 && !orderStatus.equals("all")) {
                sql += " AND ";
                sql = sql + " space_order_status=" + orderStatus;
            }

            System.out.println("sql space order :" + sql);
            myRs = myStmt.executeQuery(sql);

            List<SpaceOrder> mSpaceOrderList = new ArrayList<SpaceOrder>();
            SpaceOrder mSpaceOrder = null;
            while (myRs.next()) {
                mSpaceOrder = new SpaceOrder().setOrderId(myRs.getInt("space_order_id"))
                        .setOrderSpaceId(myRs.getInt("space_order_space_id"))
                        .setOrderTaker(myRs.getString("space_order_taker"))
                        .setOrderStart(myRs.getDate("space_order_date_start"))
                        .setOrderEnd(myRs.getDate("space_order_date_end"))
                        .setOrderPrice(myRs.getInt("space_order_price"))
                        .setOrderSpaceType(myRs.getInt("space_order_space_type"))
                        .setOrderStatus(myRs.getInt("space_order_status"));
                mSpaceOrderList.add(mSpaceOrder);
            }
            return mSpaceOrderList;
        } finally {
            close(myConn, myStmt, myRs);
        }
    }

}
