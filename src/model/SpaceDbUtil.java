package model;

import bean.Space;

import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class SpaceDbUtil extends DbUtil {
    public SpaceDbUtil(DataSource dataSource) {
        super(dataSource);
    }

    public boolean setSpaceRemainByIdAndType(int spaceId, int spaceType, int spaceLeft) throws Exception {
        Connection myConn = null;
        Statement myStmt = null;
        ResultSet myRs = null;

        try {
            myConn = dataSource.getConnection();
            myStmt = myConn.createStatement();
            String spaceTypeCol = "阿爸还是很失望";
            switch (spaceType) {
                case 1:
                    spaceTypeCol = "space_small_left";
                    break;
                case 2:
                    spaceTypeCol = "space_large_left";
                    break;
                default:
                    break;
            }
            String sql = "UPDATE 2017j2ee.space SET " + spaceTypeCol + " = " + spaceLeft + " WHERE space_id = " + spaceId;
            System.out.println(sql);
            myStmt.executeUpdate(sql);
            return true;
        } finally {
            close(myConn, myStmt, myRs);
        }
    }

    public int getSpaceRemainByIdAndType(int spaceId, int spaceType) throws Exception {
        Connection myConn = null;
        Statement myStmt = null;
        ResultSet myRs = null;

        try {
            myConn = dataSource.getConnection();
            myStmt = myConn.createStatement();
            String spaceTypeCol = "阿爸太失望了";
            switch (spaceType) {
                case 1:
                    spaceTypeCol = "space_small_left";
                    break;
                case 2:
                    spaceTypeCol = "space_large_left";
                    break;
                default:
                    break;
            }
            String sql = "SELECT * FROM 2017j2ee.space WHERE space_id = " + spaceId;
            myRs = myStmt.executeQuery(sql);
            myRs.first();
            return myRs.getInt(spaceTypeCol);
        } finally {
            close(myConn, myStmt, myRs);
        }
    }

    public List<Space> getSpaceListByAdmin(String spaceId, String spaceCity, String spaceType) throws Exception {
        Connection myConn = null;
        Statement myStmt = null;
        ResultSet myRs = null;

        try {
            myConn = dataSource.getConnection();
            myStmt = myConn.createStatement();
            String sql = " SELECT * FROM 2017j2ee.space WHERE";

            if (spaceId != null && spaceId.length() != 0) {
                sql = sql + " space_id=" + spaceId;
            } else {
                sql += " space_id IS NOT NULL";
            }
            sql += " AND ";
            if (spaceType != null && spaceType.length() != 0 && !spaceType.equals("all")) {
                sql = sql + " space_type=\"" + spaceType + "\"";
            } else {
                sql += " space_type IS NOT NULL";
            }
            if (spaceCity != null && spaceCity.length() != 0) {
                sql += " AND ";
                sql = sql + " space_city=\"" + spaceCity + "\"";
            }
            System.out.println("sql：space : " + sql);
            myRs = myStmt.executeQuery(sql);

            List<Space> mSpaceList = new ArrayList<Space>();
            Space mSpace = null;

            while (myRs.next()) {
                mSpace = new Space().setSpaceId(myRs.getInt("space_id"))
                        .setSpaceCity(myRs.getString("space_city"))
                        .setSpaceDetailLoc(myRs.getString("space_detail_location"))
                        .setSpaceType(myRs.getString("space_type"))
                        .setSpaceSmall(myRs.getInt("space_small"))
                        .setSpaceSmallLeft(myRs.getInt("space_small_left"))
                        .setSpaceSmallPrice(myRs.getInt("space_small_price"))
                        .setSpaceLarge(myRs.getInt("space_large"))
                        .setSpaceLargeLeft(myRs.getInt("space_large_left"))
                        .setSpaceLargePrice(myRs.getInt("space_large_price"))
                        .setSpaceDate(myRs.getDate("space_date"));
                mSpaceList.add(mSpace);
            }
            return mSpaceList;
        } finally {
            close(myConn, myStmt, myRs);
        }
    }


}
