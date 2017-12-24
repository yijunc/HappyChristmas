package controller;

import bean.CarAvailability;
import bean.CarOrder;
import bean.CarOrderSearch;
import model.CarAvailabilityDbUtil;
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
    private CarAvailabilityDbUtil carAvailabilityDbUtil;

    @Resource(name = "jdbc/2017J2EE")
    private DataSource dataSource;

    @Override
    public void init() throws ServletException {
        super.init();
        // create our student db util ... and pass in the conn pool / datasource
        try {
            carOrderDbUtil = new CarOrderDbUtil(dataSource);
            carAvailabilityDbUtil = new CarAvailabilityDbUtil(dataSource);
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
                case "ADMIN_ORDER_DONE":
                    adminOrderDone(request, response);
                    break;
                case "ADMIN_ORDER_CANCEL":
                    adminOrderCancel(request, response);
                    break;
                case "USER_TAKE_ORDER":
                    addCarOrder(request, response);
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

    private void addCarOrder(HttpServletRequest request, HttpServletResponse response) throws Exception {
        int carId = Integer.parseInt(request.getParameter("car_id"));
        String carStart = request.getParameter("car_start");
        String carEnd = request.getParameter("car_end");
        String carTaker = request.getParameter("car_taker");
        String carPoster = request.getParameter("car_poster");
        int carPrice = Integer.parseInt(request.getParameter("car_price"));
        int availabilityId = Integer.parseInt(request.getParameter("ava_id"));

        carOrderDbUtil.addCarOrder(carId,carStart,carEnd,carTaker,carPoster,carPrice);
        carAvailabilityDbUtil.modifyCarAvailability(availabilityId,carStart,carEnd);

//        response.sendRedirect("/UserController?command=USER_PAGE&user_name=" + carTaker);
//        return;

    }

    private void adminOrderCancel(HttpServletRequest request, HttpServletResponse response) throws Exception {
        String orderId = request.getParameter("order_id");
        carOrderDbUtil.cancelCarOrder(Integer.parseInt(orderId));
    }

    private void adminOrderDone(HttpServletRequest request, HttpServletResponse response) throws Exception {
        String orderId = request.getParameter("order_id");
        String orderPrice = request.getParameter("order_price");
        carOrderDbUtil.changeCarOrderPriceByOrderId(Integer.parseInt(orderId), Integer.parseInt(orderPrice));
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

        CarOrderSearch carOrderSearch = new CarOrderSearch();
        if (null != orderId) {
            carOrderSearch.setmId(orderId);
        }
        if (null != orderTaker) {
            carOrderSearch.setOrderTaker(orderTaker);
        }
        if (null != orderPoster) {
            carOrderSearch.setOrderPoster(orderPoster);
        }
        if (null != orderDate) {
            carOrderSearch.setOrderDate(orderDate);
        }
        if (null != orderStart) {
            carOrderSearch.setOrderStart(orderStart);
        }
        if (null != orderEnd) {
            carOrderSearch.setOrderEnd(orderEnd);
        }
        if (null != orderCarId) {
            carOrderSearch.setCarId(orderCarId);
        }
        if (null != orderStatus) {
            carOrderSearch.setmStatus(orderStatus);
        }

        List<CarOrder> carOrderList = carOrderDbUtil.getCarOrderListByAdmin(
                orderId, orderTaker, orderPoster, orderDate, orderStart, orderEnd, orderCarId, orderStatus);

        if (null != carOrderList) {
            request.setAttribute("empty", false);
            request.setAttribute("car_order_list", carOrderList);
            request.setAttribute("search_input", carOrderSearch);
            RequestDispatcher dispatcher = request.getRequestDispatcher("/adminRentCar.jsp");
            dispatcher.forward(request, response);
        } else {
            request.setAttribute("empty", true);
            RequestDispatcher dispatcher = request.getRequestDispatcher("/adminRentCar.jsp");
            dispatcher.forward(request, response);
        }
    }
}
