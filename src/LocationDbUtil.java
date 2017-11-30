import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;


public class LocationDbUtil {

    private DataSource dataSource;

    public LocationDbUtil(DataSource theDataSource) {
        dataSource = theDataSource;
    }

    public String getLocationName(int location_id) throws Exception {

        Connection myConn = null;
        Statement myStmt = null;
        ResultSet myRs = null;

        try {
            // get a connection
            myConn = dataSource.getConnection();

            // create sql statement
            String sql = "select location_name from toilet_paper.location where location_id=".concat(new Integer(location_id).toString());

            myStmt = myConn.createStatement();

            // execute query
            myRs = myStmt.executeQuery(sql);

            myRs.first();

            return myRs.getString("location_name");
        } finally {
            // close JDBC objects
            close(myConn, myStmt, myRs);
        }
    }


    public List<Location> getLocations() throws Exception {

        List<Location> locations = new ArrayList<>();

        Connection myConn = null;
        Statement myStmt = null;
        ResultSet myRs = null;

        try {
            // get a connection
            myConn = dataSource.getConnection();

            // create sql statement
            String sql = "select * from toilet_paper.location";

            myStmt = myConn.createStatement();

            // execute query
            myRs = myStmt.executeQuery(sql);

            // process result set
            while (myRs.next()) {

                // retrieve data from result set row
                int id = myRs.getInt("location_id");
                double longtitude = myRs.getDouble("location_longtitude");
                double latitude = myRs.getDouble("location_latitude");
                String name = myRs.getString("location_name");

                // create new student object
                Location tempLocation = new Location(id, name, latitude, longtitude);

                // add it to the list of students
                locations.add(tempLocation);
            }

            return locations;
        } finally {
            // close JDBC objects
            close(myConn, myStmt, myRs);
        }
    }

    private void close(Connection myConn, Statement myStmt, ResultSet myRs) {

        try {
            if (myRs != null) {
                myRs.close();
            }

            if (myStmt != null) {
                myStmt.close();
            }

            if (myConn != null) {
                myConn.close(); // doesn't really close it ... just puts back in connection pool
            }
        } catch (Exception exc) {
            exc.printStackTrace();
        }
    }
}
