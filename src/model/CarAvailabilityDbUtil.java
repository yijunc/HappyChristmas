package model;

import bean.CarAvailability;

import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;


public class CarAvailabilityDbUtil extends DbUtil {

    private SimpleDateFormat dateFormatFrom = new SimpleDateFormat("mm/dd/yyyy");
    private SimpleDateFormat dateFormatTo = new SimpleDateFormat("yyyy-mm-dd");
    private SimpleDateFormat dff = new SimpleDateFormat("yyyy-MM-dd");

    public CarAvailabilityDbUtil(DataSource dataSource) {
        super(dataSource);
    }

    public boolean modifyCar(int avaId, String dateStart, String dateEnd) throws Exception{
        Connection myConn = null;
        Statement myStmt = null;
        ResultSet myRs = null;
        try {
            myConn = dataSource.getConnection();
            myStmt = myConn.createStatement();

            String sql = "select * from 2017j2ee.car_availability WHERE car_availability_id = " + avaId;
            myRs = myStmt.executeQuery(sql);
            myRs.first();
            CarAvailability origin = new CarAvailability().setCarId(myRs.getInt("car_availability_id"))
                    .setCarId(myRs.getInt("car_availability_car_id"))
                    .setCarDateStart(myRs.getDate("car_availability_date_start"))
                    .setCarDateEnd(myRs.getDate("car_availability_date_end"))
                    .setCarPriceDaily(myRs.getInt("car_availability_price_daily"))
                    .setCarBrand(myRs.getString("car_availability_car_brand"))
                    .setCarType(myRs.getString("car_availability_type"))
                    .setCarOwner(myRs.getString("car_availability_car_owner"))
                    .setCarSeat(myRs.getInt("car_availability_car_seat"))
                    .setCarStatus(myRs.getInt("car_availability_status"));
            myStmt.execute(sql);

            Calendar ca = Calendar.getInstance();
            ca.setTime(dff.parse(dateStart)); //设置时间为当前时间
            ca.add(Calendar.DATE, -1); //年份减1
            Date prevDateEnd = ca.getTime(); //结果

            ca.setTime(dff.parse(dateEnd)); //设置时间为当前时间
            ca.add(Calendar.DATE, 1);
            Date postDateStart = ca.getTime();

            CarAvailability post = (CarAvailability) origin.clone();
            CarAvailability prev = (CarAvailability) origin.clone();

            post.setCarDateStart(postDateStart);
            prev.setCarDateEnd(prevDateEnd);

            origin.setCarDateStart(dff.parse(dateStart));
            origin.setCarDateEnd(dff.parse(dateEnd));
            origin.setCarStatus(0);

            sql = "DELETE FROM 2017j2ee.car_availability WHERE car_availability_id = " + avaId;
            myStmt.execute(sql);

            sql = "INSERT INTO 2017j2ee.car_availability (car_availability_car_id, car_availability_date_start, " +
                    "car_availability_date_end, car_availability_price_daily, car_availability_type," +
                    "car_availability_car_owner, car_availability_car_brand, car_availability_car_seat, car_availability_status" +
                    ") VALUES (?,?,?,?,?,?,?,?,?)";

            PreparedStatement prstmt = myConn.prepareStatement(sql);

            prstmt.setInt(1,origin.getCarId());
            prstmt.setDate(2, (java.sql.Date) origin.getCarDateStart());
            prstmt.setDate(3, (java.sql.Date) origin.getCarDateEnd());
            prstmt.setInt(4, origin.getCarPriceDaily());
            prstmt.setString(5, origin.getCarType());
            prstmt.setString(6, origin.getCarOwner());
            prstmt.setString(7, origin.getCarBrand());
            prstmt.setInt(8, origin.getCarSeat());
            prstmt.setInt(9,origin.getCarStatus());


            prstmt.execute();

            prstmt = myConn.prepareStatement(sql);

            prstmt.setInt(1,prev.getCarId());
            prstmt.setDate(2, (java.sql.Date) prev.getCarDateStart());
            prstmt.setDate(3, (java.sql.Date) prev.getCarDateEnd());
            prstmt.setInt(4, prev.getCarPriceDaily());
            prstmt.setString(5, prev.getCarType());
            prstmt.setString(6, prev.getCarOwner());
            prstmt.setString(7, prev.getCarBrand());
            prstmt.setInt(8, prev.getCarSeat());
            prstmt.setInt(9,prev.getCarStatus());


            prstmt.execute();

            prstmt = myConn.prepareStatement(sql);

            prstmt.setInt(1,post.getCarId());
            prstmt.setDate(2, (java.sql.Date) post.getCarDateStart());
            prstmt.setDate(3, (java.sql.Date) post.getCarDateEnd());
            prstmt.setInt(4, post.getCarPriceDaily());
            prstmt.setString(5, post.getCarType());
            prstmt.setString(6, post.getCarOwner());
            prstmt.setString(7, post.getCarBrand());
            prstmt.setInt(8, post.getCarSeat());
            prstmt.setInt(9,post.getCarStatus());

            prstmt.execute();



            return true;


        } finally {
            close(myConn, myStmt, myRs);
        }
    }

    public List<CarAvailability> getCarAvalabilityListByUser(String dataStart, String dataEnd, String carSeat) throws Exception {
        Connection myConn = null;
        Statement myStmt = null;
        ResultSet myRs = null;
        try {
            myConn = dataSource.getConnection();
            myStmt = myConn.createStatement();
            String sql = "select * from 2017j2ee.car_availability WHERE";
            if (carSeat != null && carSeat.length() != 0 && !carSeat.equals("all")) {
                sql = sql + " car_availability_car_seat = " + carSeat;
            } else {
                sql = sql + " car_availability_car_seat IS NOT NULL";
            }
            sql += " AND ";
            if (dataStart != null && dataStart.length() != 0) {
                sql = sql + " car_availability_date_start <= \"" + dateFormatTo.format(dateFormatFrom.parse(dataStart)) + "\"";
            } else {
                sql = sql + " car_availability_date_start <= CURDATE()";
            }
            sql += " AND ";
            if (dataEnd != null && dataEnd.length() != 0) {
                sql = sql + " car_availability_date_end >= \"" + dateFormatTo.format(dateFormatFrom.parse(dataEnd)) + "\"";
            } else {
                sql = sql + " car_availability_date_end IS NOT NULL";
            }
            System.out.println(sql);
            myRs = myStmt.executeQuery(sql);
            List<CarAvailability> mCarAvaList = new ArrayList<CarAvailability>();
            CarAvailability mCarAva = null;
            while (myRs.next()) {
                mCarAva = new CarAvailability().setCarId(myRs.getInt("car_availability_id"))
                        .setCarId(myRs.getInt("car_availability_car_id"))
                        .setCarDateStart(myRs.getDate("car_availability_date_start"))
                        .setCarDateEnd(myRs.getDate("car_availability_date_end"))
                        .setCarPriceDaily(myRs.getInt("car_availability_price_daily"))
                        .setCarBrand(myRs.getString("car_availability_car_brand"))
                        .setCarType(myRs.getString("car_availability_type"))
                        .setCarOwner(myRs.getString("car_availability_car_owner"))
                        .setCarSeat(myRs.getInt("car_availability_car_seat"))
                        .setCarStatus(myRs.getInt("car_availability_status"));
                mCarAvaList.add(mCarAva);
            }
            return mCarAvaList;
        } finally {
            close(myConn, myStmt, myRs);
        }
    }

    public List<CarAvailability> getCarAvailabilityListByAdmin(String carId, String carOwner, String carBrand, String carType, String carSeat,
                                                               String carStatus, String carDateStart, String carDateEnd, String carPrice) throws Exception {
        Connection myConn = null;
        Statement myStmt = null;
        ResultSet myRs = null;
        try {
            myConn = dataSource.getConnection();
            myStmt = myConn.createStatement();
            String sql = "select * from 2017j2ee.car_availability WHERE";

            SimpleDateFormat dateFormatFrom = new SimpleDateFormat("mm/dd/yyyy");
            SimpleDateFormat dateFormatTo = new SimpleDateFormat("yyyy-mm-dd");

            if (null != carId && carId.length() != 0) {
                sql = sql + " car_availability_car_id=" + carId;
            } else {
                sql = sql + " car_availability_car_id IS NOT NULL";
            }
            sql += " AND ";
            if (null != carOwner && carOwner.length() != 0 && !carOwner.equals("3")) {
                sql = sql + " car_availability_car_owner=\"" + carOwner + "\"";
            } else {
                sql = sql + " car_availability_car_owner IS NOT NULL";
            }
            sql += " AND ";
            if (null != carBrand && carBrand.length() != 0 && !carBrand.equals("all")) {
                sql = sql + " car_availability_car_brand=\"" + carBrand + "\"";
            } else {
                sql = sql + " car_availability_car_brand IS NOT NULL";
            }
            sql += " AND ";
            if (null != carType && carType.length() != 0 && !carType.equals("all")) {
                sql = sql + " car_availability_type=\"" + carType + "\"";
            } else {
                sql = sql + " car_availability_type IS NOT NULL";
            }
            sql += " AND ";
            if (null != carSeat && carSeat.length() != 0 && !carSeat.equals("all")) {
                sql = sql + " car_availability_car_seat=\"" + carSeat + "\"";
            } else {
                sql = sql + " car_availability_car_seat IS NOT NULL";
            }
            sql += " AND ";
            if (null != carStatus && carStatus.length() != 0 && !carStatus.equals("all")) {
                sql = sql + " car_availability_status=\"" + carStatus + "\"";
            } else {
                sql = sql + " car_availability_status IS NOT NULL";
            }
            sql += " AND ";
            if (null != carDateStart && carDateStart.length() != 0) {
                sql = sql + " car_availability_date_start=\"" + dateFormatTo.format(dateFormatFrom.parse(carDateStart)) + "\"";
            } else {
                sql = sql + " car_availability_date_end IS NOT NULL";
            }
            sql += " AND ";
            if (null != carDateEnd && carDateEnd.length() != 0) {
                sql = sql + " car_availability_date_end=\"" + dateFormatTo.format(dateFormatFrom.parse(carDateEnd)) + "\"";
            } else {
                sql = sql + " car_availability_date_end IS NOT NULL";
            }

            if (null != carPrice && carPrice.length() != 0 && carPrice != "all") {
                sql += " AND ";
                sql = sql + " car_availability_type=\"" + carType + "\"";
            }
            System.out.println("sql car_availability :" + sql);
            myRs = myStmt.executeQuery(sql);

            List<CarAvailability> mCarAvaList = new ArrayList<CarAvailability>();
            CarAvailability mCarAva = null;

            while (myRs.next()) {
                mCarAva = new CarAvailability().setCarId(myRs.getInt("car_availability_id"))
                        .setCarId(myRs.getInt("car_availability_car_id"))
                        .setCarDateStart(myRs.getDate("car_availability_date_start"))
                        .setCarDateEnd(myRs.getDate("car_availability_date_end"))
                        .setCarPriceDaily(myRs.getInt("car_availability_price_daily"))
                        .setCarBrand(myRs.getString("car_availability_car_brand"))
                        .setCarType(myRs.getString("car_availability_type"))
                        .setCarOwner(myRs.getString("car_availability_car_owner"))
                        .setCarSeat(myRs.getInt("car_availability_car_seat"))
                        .setCarStatus(myRs.getInt("car_availability_status"));
                mCarAvaList.add(mCarAva);
            }
            return mCarAvaList;
        } finally {
            close(myConn, myStmt, myRs);
        }
    }
}
