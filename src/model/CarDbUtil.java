package model;

import bean.Car;
import bean.CarAvailability;

import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.List;


public class CarDbUtil extends DbUtil {

    public CarDbUtil(DataSource dataSource) {
        super(dataSource);
    }

    public int addCar(String carType, String carOwner, String carBrand, int carSeat) throws Exception {
        Connection myConn = null;
        Statement myStmt = null;
        ResultSet myRs = null;
        try {
            myConn = dataSource.getConnection();
            String sql = "insert into 2017j2ee.car (car_type, car_owner, car_brand, car_seat) VALUES (?,?,?,?,?)";
            PreparedStatement prstmt = myConn.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);

            prstmt.setString(1,carType);
            prstmt.setString(2,carOwner);
            prstmt.setString(3,carBrand);
            prstmt.setInt(4,carSeat);

            prstmt.executeUpdate();
            ResultSet keys = prstmt.getGeneratedKeys(); // equivalent to "SELECT last_insert_id();"
            keys.first();
            return keys.getInt(1);
        } finally {
            close(myConn, myStmt, myRs);
        }
    }


    public List<CarAvailability> getCarByList(List<CarAvailability> list) throws Exception {
        Connection myConn = null;
        Statement myStmt = null;
        ResultSet myRs = null;
        try {
            myConn = dataSource.getConnection();
            myStmt = myConn.createStatement();
            for (CarAvailability it : list) {
                String sql = "select * from 2017j2ee.car WHERE car_id=" + it.getCarId();
                myRs = myStmt.executeQuery(sql);
                myRs.first();
                Car result = new Car().setCarId(myRs.getInt("car_id"))
                        .setCarBrand(myRs.getString("car_brand"))
                        .setCarOwner(myRs.getString("car_owner"))
                        .setCarCustomer(myRs.getInt("car_customer_count"))
                        .setCarSeat(myRs.getInt("car_seat"))
                        .setCarRating(myRs.getFloat("car_rating"))
                        .setCarType(myRs.getString("car_type"));
                it.setCarRating(result.getCarRating());
                it.setCarCustomer(result.getCarCustomer());
            }
            return list;
        } finally {
            close(myConn, myStmt, myRs);
        }
    }

    public Car getCarById(int carId) throws Exception {
        Connection myConn = null;
        Statement myStmt = null;
        ResultSet myRs = null;
        try {
            myConn = dataSource.getConnection();
            myStmt = myConn.createStatement();
            String sql = "select * from 2017j2ee.car WHERE car_id=" + carId;
            myRs = myStmt.executeQuery(sql);
            myRs.first();
            Car result = new Car().setCarId(myRs.getInt("car_id"))
                    .setCarBrand(myRs.getString("car_brand"))
                    .setCarOwner(myRs.getString("car_owner"))
                    .setCarCustomer(myRs.getInt("car_customer_count"))
                    .setCarSeat(myRs.getInt("car_seat"))
                    .setCarRating(myRs.getFloat("car_rating"))
                    .setCarType(myRs.getString("car_type"));
            return result;
        } finally {
            close(myConn, myStmt, myRs);
        }
    }
}
