package controller;

import bean.SpaceOrder;
import model.SpaceOrderDbUtil;

import javax.annotation.Resource;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/SpaceOrderController")
public class SpaceOrderController extends HttpServlet {
    private final static String TAG = "SpaceOrderController";
    private SpaceOrderDbUtil spaceOrderDbUtil;

    @Resource(name = "jdbc/2017J2EE")
    private DataSource dataSource;

    @Override
    public void init() throws ServletException {
        super.init();
        // create our student db util ... and pass in the conn pool / datasource
        try {
            spaceOrderDbUtil = new SpaceOrderDbUtil(dataSource);
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
                case "ADMIN_SPACE_ORDER":
                    adminSpaceOrder(request, response);
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

    private void adminSpaceOrder(HttpServletRequest request, HttpServletResponse response) throws Exception {
        String orderId = request.getParameter("order_id");
        String orderTaker = request.getParameter("order_taker");
        String orderSpaceId = request.getParameter("order_space_id");
        String orderSpaceType = request.getParameter("order_space_type");
        String orderStart = request.getParameter("order_start");
        String orderEnd = request.getParameter("order_end");
        String orderStatus = request.getParameter("order_status");


        List<SpaceOrder> spaceOrderList = spaceOrderDbUtil.getSpaceOrderListByAdmin(
                orderId, orderTaker, orderSpaceId, orderSpaceType, orderStart, orderEnd, orderStatus
        );

        if (null != spaceOrderList) {
            request.setAttribute("empty", false);
            request.setAttribute("space_order_list", spaceOrderList);
            System.out.println(spaceOrderList.size());
            RequestDispatcher dispatcher = request.getRequestDispatcher("/adminRentSpace.jsp");
            dispatcher.forward(request, response);
        } else {
            request.setAttribute("empty", true);
            RequestDispatcher dispatcher = request.getRequestDispatcher("/adminRentSpace.jsp");
            dispatcher.forward(request, response);
        }
    }
}
