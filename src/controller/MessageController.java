package controller;

import model.MessageDbUtil;

import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;
import java.io.IOException;

@WebServlet("/MessageController")
public class MessageController extends HttpServlet {
    private final static String TAG = "MessageController";
    private MessageDbUtil messageDbUtil;

    @Resource(name = "jdbc/2017J2EE")
    private DataSource dataSource;

    @Override
    public void init() throws ServletException {
        super.init();
        // create our student db util ... and pass in the conn pool / datasource
        try {
            messageDbUtil = new MessageDbUtil(dataSource);
        } catch (Exception exc) {
            throw new ServletException(exc);
        }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        try {
            String theCommand = request.getParameter("command");
            // if the command is missing, then default to listing cars which are available
            if (theCommand == null) {
            }
            // route to the appropriate method
            switch (theCommand) {
                case "ADD_MESSAGE":
                    addMessage(request, response);
                    break;
                case "DELETE_MESSAGE":
                    deleteMessage(request, response);
                    break;
                default:
                    break;
            }

        } catch (Exception exc) {
            throw new ServletException(exc);
        }
    }

    private void addMessage(HttpServletRequest request, HttpServletResponse response) throws Exception {
        int newsId = Integer.parseInt(request.getParameter("news_id"));
        String messagePoster = request.getParameter("message_poster");
        String messageContent = request.getParameter("message_content");
        messageDbUtil.addMessage(messagePoster,messageContent,newsId);

        response.sendRedirect("/NewsController?command=NEWS_DETAIL&news_id=" + newsId);
    }

    private void deleteMessage(HttpServletRequest request, HttpServletResponse response) throws Exception{
        int messageId = Integer.parseInt(request.getParameter("message_id"));
        messageDbUtil.deleteMessagesById(messageId);

    }
}
