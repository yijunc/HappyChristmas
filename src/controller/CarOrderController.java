package controller;

import bean.CarOrder;
import model.CarOrderDbUtil;

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

@WebServlet("/CarOrderController")
public class CarOrderController extends HttpServlet {
    private final static String TAG = "CarOrderController";
    private CarOrderDbUtil carOrderDbUtil;

    @Resource(name = "jdbc/2017J2EE")
    private DataSource dataSource;

    @Override
    public void init() throws ServletException {
        super.init();
        // create our student db util ... and pass in the conn pool / datasource
        try {
            carOrderDbUtil = new CarOrderDbUtil(dataSource);
        } catch (Exception exc) {
            throw new ServletException(exc);
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");

        try {
            String theCommand = request.getParameter("command");
            // if the command is missing, then default to listing cars which are available
            if (theCommand == null) {
            }
            // route to the appropriate method
            switch (theCommand) {
                case "ADMIN_CAR_ORDER":
                    adminCarOrder(request, response);
                    break;
                default:
                    break;
            }

        } catch (Exception exc) {
            throw new ServletException(exc);
        }

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        doGet(request, response);
    }

    private void adminCarOrder(HttpServletRequest request, HttpServletResponse response) throws Exception {
        String orderId = request.getParameter("order_id");
        String orderTaker = request.getParameter("order_taker");
        String orderPoster = request.getParameter("order_poster");
        String orderDate = request.getParameter("order_date");
        String orderStart = request.getParameter("order_start");
        String orderEnd = request.getParameter("order_end");
        String orderCarId = request.getParameter("order_car_id");
        String orderStatus = request.getParameter("order_status");

        List<CarOrder> carOrderList = carOrderDbUtil.getCarOrderListByAdmin(
                orderId, orderTaker, orderPoster, orderDate, orderStart, orderEnd, orderCarId, orderStatus
        );

        if (null != carOrderList) {
            request.setAttribute("empty", false);
            request.setAttribute("car_order_list", carOrderList);
            RequestDispatcher dispatcher = request.getRequestDispatcher("/adminRentCar.jsp");
            dispatcher.forward(request, response);
        } else {
            request.setAttribute("empty", true);
            RequestDispatcher dispatcher = request.getRequestDispatcher("/adminRentCar.jsp");
            dispatcher.forward(request, response);
        }
    }
}
