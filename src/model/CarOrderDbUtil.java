package model;

import bean.CarOrder;
import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.Statement;
import java.sql.ResultSet;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

public class CarOrderDbUtil extends DbUtil{

    public CarOrderDbUtil(DataSource dataSource) {
        super(dataSource);
    }

    public List<CarOrder> getCarOrderListByAdmin(String orderId, String orderTaker, String orderPoster, String orderDate, String orderStart, String orderEnd, String orderCarId, String orderStatus) throws Exception {
        Connection myConn = null;
        Statement myStmt = null;
        ResultSet myRs = null;
        try {
            myConn = dataSource.getConnection();
            myStmt = myConn.createStatement();
            String sql = "select * from 2017j2ee.car_order WHERE";

            SimpleDateFormat dateFormatFrom = new SimpleDateFormat("mm/dd/yyyy");
            SimpleDateFormat dateFormatTo = new SimpleDateFormat("yyyy-mm-dd");

            System.out.println(orderCarId);

            if (null != orderId && orderId.length() != 0) {
                sql = sql + " car_order_id=" + orderId;
            } else {
                sql = sql + " car_order_id IS NOT NULL";
            }
            sql += " AND ";
            if (null != orderTaker && orderTaker.length() != 0) {
                sql = sql + " car_order_taker=\"" + orderTaker + "\"";
            } else {
                sql = sql + " car_order_taker IS NOT NULL";
            }
            sql += " AND ";
            if (null != orderPoster && orderPoster.length() != 0) {
                sql = sql + " car_order_poster=\"" + orderPoster + "\"";
            } else {
                sql = sql + " car_order_poster IS NOT NULL";
            }
            sql += " AND ";
            if (null != orderStatus && orderStatus.length() != 0 && !orderStatus.equals("all")) {
                sql = sql + " car_order_status=" + orderStatus;
            } else {
                sql = sql + " car_order_status IS NOT NULL";
            }
            sql += " AND ";
            if (null != orderDate && orderDate.length() != 0) {
                sql = sql + " car_order_order_date=\"" + dateFormatTo.format(dateFormatFrom.parse(orderDate)) + "\"";
            } else {
                sql = sql + " car_order_order_date IS NOT NULL";
            }
            sql += " AND ";
            if (null != orderStart && orderStart.length() != 0) {
                sql = sql + " car_order_date_start=\"" + dateFormatTo.format(dateFormatFrom.parse(orderStart)) + "\"";
            } else {
                sql = sql + " car_order_date_start IS NOT NULL";
            }
            sql += " AND ";
            if (null != orderEnd && orderEnd.length() != 0) {
                sql = sql + " car_order_date_end=\"" + dateFormatTo.format(dateFormatFrom.parse(orderEnd)) + "\"";
            } else {
                sql = sql + " car_order_date_end IS NOT NULL";
            }
            if (null != orderCarId && orderCarId.length() != 0) {
                sql += " AND ";
                sql = sql + " car_order_car_id=" + orderCarId;
            }
            System.out.println("sql car_order :" + sql);
            myRs = myStmt.executeQuery(sql);

            List<CarOrder> mCarOrderList = new ArrayList<CarOrder>();
            CarOrder mCarOrder = null;

            while (myRs.next()) {
                mCarOrder = new CarOrder(myRs.getInt("car_order_id"),
                        myRs.getString("car_order_taker"),
                        myRs.getString("car_order_poster"),
                        myRs.getInt("car_order_price"),
                        myRs.getDate("car_order_order_date"),
                        myRs.getDate("car_order_date_start"),
                        myRs.getDate("car_order_date_end"),
                        myRs.getInt("car_order_car_id"),
                        myRs.getInt("car_order_status"));
                mCarOrderList.add(mCarOrder);
            }
            return mCarOrderList;
        } finally {
            close(myConn, myStmt, myRs);
        }
    }
}
