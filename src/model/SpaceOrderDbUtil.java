package model;

import bean.SpaceOrder;

import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

public class SpaceOrderDbUtil extends DbUtil {

    public SpaceOrderDbUtil(DataSource dataSource) {
        super(dataSource);
    }


    public boolean cancelSpaceOrderByOrderId(int orderId) throws Exception {
        Connection myConn = null;
        Statement myStmt = null;
        ResultSet myRs = null;

        try {
            myConn = dataSource.getConnection();
            myStmt = myConn.createStatement();
            String sql = "UPDATE 2017j2ee.space_order SET space_order_status = 0 WHERE space_order_id = " + orderId;
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
