package controller;

import bean.SpaceOrder;
import bean.SpaceOrderSearch;
import model.SpaceDbUtil;
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
import java.util.List;

@WebServlet("/SpaceOrderController")
public class SpaceOrderController extends HttpServlet {
    private final static String TAG = "SpaceOrderController";
    private SpaceOrderDbUtil spaceOrderDbUtil;
    private SpaceDbUtil spaceDbUtil;

    @Resource(name = "jdbc/2017J2EE")
    private DataSource dataSource;

    @Override
    public void init() throws ServletException {
        super.init();
        // create our student db util ... and pass in the conn pool / datasource
        try {
            spaceOrderDbUtil = new SpaceOrderDbUtil(dataSource);
            spaceDbUtil = new SpaceDbUtil(dataSource);
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
                case "ADMIN_ORDER_CANCEL":
                    adminOrderCancel(request, response);
                    break;
                case "ADMIN_ORDER_DONE":
                    adminOrderDone(request, response);
                    break;
                case "USER_TAKE_ORDER":
                    userTakeOrder(request, response);
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

    private void userTakeOrder(HttpServletRequest request, HttpServletResponse response) throws Exception {
        int spaceId = Integer.valueOf(request.getParameter("space_id"));
        String spaceTaker = request.getParameter("space_taker");
        String spaceStart = request.getParameter("space_start");
        String spaceEnd = request.getParameter("space_end");
        int spacePrice = Integer.valueOf(request.getParameter("space_price"));
        int spaceType = Integer.valueOf(request.getParameter("space_type"));

        spaceOrderDbUtil.addSpaceOrder(spaceId, spaceTaker, spaceStart, spaceEnd, spacePrice, spaceType);
        spaceDbUtil.setSpaceRemainByIdAndType(spaceId, spaceType, spaceDbUtil.getSpaceRemainByIdAndType(spaceId, spaceType) - 1);

    }

    private void adminOrderDone(HttpServletRequest request, HttpServletResponse response) throws Exception {
//        System.out.println(TAG+" order_id:"+request.getParameter("order_id"));//输出正确
        int orderId = Integer.valueOf(request.getParameter("order_id"));
//        System.out.println(TAG+" orderId:"+orderId);//输出正确
        String orderDate = request.getParameter("order_date");
        int orderPrice = Integer.valueOf(request.getParameter("order_price"));
        int spaceId = Integer.valueOf(request.getParameter("space_id"));
        int spaceType = Integer.valueOf(request.getParameter("space_type"));
        spaceOrderDbUtil.doneSpaceOrderByOrderId(orderId, orderPrice, orderDate);
        spaceDbUtil.setSpaceRemainByIdAndType(spaceId, spaceType, spaceDbUtil.getSpaceRemainByIdAndType(spaceId, spaceType) + 1);
    }

    private void adminOrderCancel(HttpServletRequest request, HttpServletResponse response) throws Exception {
        int orderId = Integer.valueOf(request.getParameter("order_id"));
        int spaceId = Integer.valueOf(request.getParameter("space_id"));
        int spaceType = Integer.valueOf(request.getParameter("space_type"));
        spaceOrderDbUtil.cancelSpaceOrderByOrderId(orderId);
        spaceDbUtil.setSpaceRemainByIdAndType(spaceId, spaceType, spaceDbUtil.getSpaceRemainByIdAndType(spaceId, spaceType) + 1);
    }

    private void adminSpaceOrder(HttpServletRequest request, HttpServletResponse response) throws Exception {
        String orderId = request.getParameter("order_id");
        String orderTaker = request.getParameter("order_taker");
        String orderSpaceId = request.getParameter("order_space_id");
        String orderSpaceType = request.getParameter("order_space_type");
        String orderStart = request.getParameter("order_start");
        String orderEnd = request.getParameter("order_end");
        String orderStatus = request.getParameter("order_status");

        SpaceOrderSearch spaceOrderSearch = new SpaceOrderSearch();
        if (null != orderId && orderId.length() != 0) {
            spaceOrderSearch.setOrderId(orderId);
        }
        if (null != orderTaker && orderTaker.length() != 0) {
            spaceOrderSearch.setOrderTaker(orderTaker);
        }
        if (null != orderSpaceId && orderSpaceId.length() != 0) {
            spaceOrderSearch.setOrderSpaceId(orderSpaceId);
        }
        if (null != orderSpaceType && orderSpaceType.length() != 0) {
            spaceOrderSearch.setOrderSpaceType(orderSpaceType);
        }
        if (null != orderStart && orderStart.length() != 0) {
            spaceOrderSearch.setOrderStart(orderStart);
        }
        if (null != orderEnd && orderEnd.length() != 0) {
            spaceOrderSearch.setOrderEnd(orderEnd);
        }
        if (null != orderStatus && orderStatus.length() != 0) {
            spaceOrderSearch.setOrderStatus(orderStatus);
        }

        List<SpaceOrder> spaceOrderList = spaceOrderDbUtil.getSpaceOrderListByAdmin(
                orderId, orderTaker, orderSpaceId, orderSpaceType, orderStart, orderEnd, orderStatus
        );

        if (null != spaceOrderList) {
            request.setAttribute("empty", false);
            request.setAttribute("space_order_list", spaceOrderList);
            request.setAttribute("search_input", spaceOrderSearch);
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
