package model;

import bean.CarAvailability;

import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;


public class CarAvailabilityDbUtil extends DbUtil {

    public CarAvailabilityDbUtil(DataSource dataSource) {
        super(dataSource);
    }

    public List<CarAvailability> getCarAvalabilityListByUser(String carSeat, String carBrand, int carPriceLow, int carPriceHigh) throws Exception{
        Connection myConn = null;
        Statement myStmt = null;
        ResultSet myRs = null;
        try {
            myConn = dataSource.getConnection();
            myStmt = myConn.createStatement();
            String sql = "select * from 2017j2ee.car_availability WHERE";
            if(carSeat != null && carSeat.length() != 0){
                sql = sql + " car_availability_car_seat=" + carSeat;
            }
            else{
                sql = sql + " car_availability_car_seat IS NOT NULL";
            }
            sql += " AND ";
            if(carBrand != null && carBrand.length() != 0){
                sql = sql + " car_availability_car_brand\"" + carBrand + "\"";
            }
            else{
                sql = sql + " car_availability_car_brand IS NOT NULL";
            }
            sql  = sql + " AND car_availability_price_daily >= " + carPriceLow + " AND car_availability_price_daily <= " + carPriceHigh
                    + " AND car_availability_status=1";
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
