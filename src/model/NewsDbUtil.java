package model;

import bean.News;

import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

public class NewsDbUtil extends DbUtil {
    private SimpleDateFormat dateFormatFrom = new SimpleDateFormat("mm/dd/yyyy");
    private SimpleDateFormat dateFormatTo = new SimpleDateFormat("yyyy-mm-dd");
    private SimpleDateFormat dff = new SimpleDateFormat("yyyy-MM-dd");

    public NewsDbUtil(DataSource dataSource) {
        super(dataSource);
    }

    public News getNewsById(int newsId) throws Exception {
        Connection myConn = null;
        Statement myStmt = null;
        ResultSet myRs = null;

        try {
            myConn = dataSource.getConnection();
            myStmt = myConn.createStatement();
            String sql = "SELECT * FROM 2017j2ee.news WHERE news_id = " + newsId;
            myRs = myStmt.executeQuery(sql);
            myRs.first();
            News ret = new News().setNewsId(myRs.getInt("news_id"))
                    .setTitle(myRs.getString("news_title"))
                    .setPostDate(myRs.getDate("news_date"))
                    .setBrief(myRs.getString("news_brief"))
                    .setContent(myRs.getString("news_content"))
                    .setPoster(myRs.getString("news_poster"));
            return ret;
        } finally {
            close(myConn, myStmt, myRs);
        }
    }

    public boolean deleteNewsById(int newsId) throws Exception {
        Connection myConn = null;
        Statement myStmt = null;
        ResultSet myRs = null;

        try {
            myConn = dataSource.getConnection();
            myStmt = myConn.createStatement();
            String sql = "DELETE FROM 2017j2ee.news WHERE news_id = " + newsId;
            myStmt.execute(sql);

            return true;
        } finally {
            close(myConn, myStmt, myRs);
        }
    }

    public List<News> getNewsList(String search) throws Exception {
        Connection myConn = null;
        Statement myStmt = null;
        ResultSet myRs = null;

        try {
            myConn = dataSource.getConnection();
            myStmt = myConn.createStatement();
            String sql = " SELECT * FROM 2017j2ee.news";
            if (null != search && search.length() != 0) {
                sql =  " WHERE "+sql + " news.news_title LIKE \'%" + search + "%\'";
            }
            myRs = myStmt.executeQuery(sql);

            List<News> mNewsList = new ArrayList<News>();
            News mNews = null;

            while (myRs.next()) {
                mNews = new News().setNewsId(myRs.getInt("news_id"))
                        .setTitle(myRs.getString("news_title"))
                        .setPostDate(myRs.getDate("news_date"))
                        .setBrief(myRs.getString("news_brief"))
                        .setContent(myRs.getString("news_content"))
                        .setPoster(myRs.getString("news_poster"));
                mNewsList.add(mNews);
            }
            return mNewsList;
        } finally {
            close(myConn, myStmt, myRs);
        }
    }
}
