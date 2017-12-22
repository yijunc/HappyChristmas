package model;

import bean.Message;

import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class MessageDbUtil extends DbUtil {
    public MessageDbUtil(DataSource dataSource) {
        super(dataSource);
    }

    public boolean addMessage(String messagePoster, String messageContent, int newsId) throws Exception {
        Connection myConn = null;
        Statement myStmt = null;
        ResultSet myRs = null;

        try {
            myConn = dataSource.getConnection();
            String sql = "INSERT INTO 2017j2ee.message (message_poster, message_content, message_news_id) VALUES (?,?,?)";
            PreparedStatement prstmt = myConn.prepareStatement(sql);

            prstmt.setString(1, messagePoster);
            prstmt.setString(2, messageContent);
            prstmt.setInt(3, newsId);

            prstmt.execute();

            return true;
        } finally {
            close(myConn, myStmt, myRs);
        }
    }

    public boolean deleteMessagesById(int messageId) throws Exception {
        Connection myConn = null;
        Statement myStmt = null;
        ResultSet myRs = null;

        try {
            myConn = dataSource.getConnection();
            myStmt = myConn.createStatement();
            String sql = "DELETE FROM 2017j2ee.message WHERE message_id = " + messageId;
            myStmt.execute(sql);
            return true;
        } finally {
            close(myConn, myStmt, myRs);
        }
    }

    public List<Message> getMessagesByNewsId(int newsId) throws Exception {
        Connection myConn = null;
        Statement myStmt = null;
        ResultSet myRs = null;

        try {
            myConn = dataSource.getConnection();
            myStmt = myConn.createStatement();
            String sql = "SELECT * FROM 2017j2ee.message WHERE message_news_id = " + newsId;
            myRs = myStmt.executeQuery(sql);
            List<Message> mmList = new ArrayList<Message>();
            while (myRs.next()) {
                Message mm = new Message().setMessageId(myRs.getInt("message_id"))
                        .setMessageContent(myRs.getString("message_content"))
                        .setMessageNewsId(myRs.getInt("message_news_id"))
                        .setMessagePoster(myRs.getString("message_poster"));
                mmList.add(mm);
            }
            return mmList;
        } finally {
            close(myConn, myStmt, myRs);
        }
    }
}
