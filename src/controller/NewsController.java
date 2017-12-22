package controller;

import bean.Message;
import bean.News;
import model.MessageDbUtil;
import model.NewsDbUtil;

import javax.annotation.Resource;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;
import java.io.IOException;
import java.util.List;

@WebServlet("/NewsController")
public class NewsController extends HttpServlet {
    private final static String TAG = "NewsController";
    private NewsDbUtil newsDbUtil;
    private MessageDbUtil messageDbUtil;

    @Resource(name = "jdbc/2017J2EE")
    private DataSource dataSource;

    @Override
    public void init() throws ServletException {
        super.init();
        // create our student db util ... and pass in the conn pool / datasource
        try {
            newsDbUtil = new NewsDbUtil(dataSource);
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
                case "NEWS_CENTER":
                    getNewsList(request, response);
                    break;
                case "DELETE_NEWS":
                    deleteNews(request, response);
                    break;
                case "NEWS_DETAIL":
                    getNewsDetail(request, response);
                    break;
                default:
                    break;
            }

        } catch (Exception exc) {
            throw new ServletException(exc);
        }
    }

    private void getNewsDetail(HttpServletRequest request, HttpServletResponse response) throws Exception {
        int newsId = Integer.parseInt(request.getParameter("news_id"));
        News news = newsDbUtil.getNewsById(newsId);
        List<Message> messages = messageDbUtil.getMessagesByNewsId(newsId);
        request.setAttribute("news", news);
        request.setAttribute("messages", messages);
        RequestDispatcher dispatcher = request.getRequestDispatcher("/newsDetail.jsp");
        dispatcher.forward(request, response);
    }

    private void deleteNews(HttpServletRequest request, HttpServletResponse response) throws Exception {
        int newsId = Integer.parseInt(request.getParameter("news_id"));
        newsDbUtil.deleteNewsById(newsId);
        getNewsList(request, response);
    }

    private void getNewsList(HttpServletRequest request, HttpServletResponse response) throws Exception {
        String search = request.getParameter("search_info");
        List<News> newsList = newsDbUtil.getNewsList(search);
        request.setAttribute("news_list", newsList);
        RequestDispatcher dispatcher = request.getRequestDispatcher("/news.jsp");
        dispatcher.forward(request, response);
    }
}
