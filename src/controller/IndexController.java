package controller;

import model.*;

import javax.annotation.Resource;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;
import java.io.IOException;

@WebServlet("/IndexController")
public class IndexController extends HttpServlet {

    private CarOrderDbUtil carOrderDbUtil;
    private CarDbUtil carDbUtil;
    private SpaceOrderDbUtil spaceOrderDbUtil;
    private UserDbUtil userDbUtil;
    private NewsDbUtil newsDbUtil;

    @Resource(name = "jdbc/2017J2EE")
    private DataSource dataSource;

    @Override
    public void init() throws ServletException {
        super.init();
        // create our student db util ... and pass in the conn pool / datasource
        try {
            carOrderDbUtil = new CarOrderDbUtil(dataSource);
            carDbUtil = new CarDbUtil(dataSource);
            spaceOrderDbUtil = new SpaceOrderDbUtil(dataSource);
            userDbUtil = new UserDbUtil(dataSource);
            newsDbUtil = new NewsDbUtil(dataSource);
        } catch (Exception exc) {
            throw new ServletException(exc);
        }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            request.setAttribute("user_count", userDbUtil.userCount());
            request.setAttribute("car_order_count", carOrderDbUtil.carOrderCount());
            request.setAttribute("car_count", carDbUtil.carCount());
            request.setAttribute("space_order_count",spaceOrderDbUtil.countSpaceOrder());
            request.setAttribute("news_list", newsDbUtil.getNewsList(null));

            RequestDispatcher dispatcher = request.getRequestDispatcher("/index.jsp");
            dispatcher.forward(request, response);
        }catch (Exception exc) {
            throw new ServletException(exc);
        }


    }
}
