package controller;

import bean.*;
import model.CarAvailabilityDbUtil;
import model.CarOrderDbUtil;
import model.SpaceOrderDbUtil;
import model.UserDbUtil;

import javax.annotation.Resource;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

/**
 * Servlet implementation class StudentControllerServlet
 */
@WebServlet("/UserController")
public class UserController extends HttpServlet {
    private final static String TAG = "UserController";
    private static final long serialVersionUID = 1L;
    private UserDbUtil userDbUtil;
    private CarOrderDbUtil carOrderDbUtil;
    private SpaceOrderDbUtil spaceOrderDbUtil;
    private CarAvailabilityDbUtil carAvailabilityDbUtil;

    @Resource(name = "jdbc/2017J2EE")
    private DataSource dataSource;

    @Override
    public void init() throws ServletException {
        super.init();

        // create our student db util ... and pass in the conn pool / datasource
        try {
            userDbUtil = new UserDbUtil(dataSource);
            spaceOrderDbUtil = new SpaceOrderDbUtil(dataSource);
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
            // read the "command" parameter
            String theCommand = request.getParameter("command");

            // if the command is missing, then default to listing students
            if (theCommand == null) {
            }

            // route to the appropriate method
            switch (theCommand) {
                case "LOGIN":
                    login(request, response);
                    break;
                case "USER_REGISTER":
                    userRegister(request, response);
                    break;
                case "CHECK_NAME":
                    checkName(request, response);
                    break;
                case "CHECK_CELL":
                    checkCell(request, response);
                    break;
                case "ADMIN_USER":
                    adminUser(request, response);
                    break;
                case "ACTIVATE_USER":
                    activateUser(request, response);
                    break;
                case "SUSPEND_USER":
                    suspendUser(request, response);
                    break;
                case "ADMIN_USER_UPDATE":
                    updateUserById(request, response);
                    break;
                case "USER_PAGE":
                    getUserInfoByName(request, response);
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

    private void getUserInfoByName(HttpServletRequest request, HttpServletResponse response) throws Exception {
        String userName = request.getParameter("user_name");
        User nowUser = userDbUtil.getUserByName(userName);
        request.setAttribute("nowUser", nowUser);

        List<CarOrder> nowCarOrder = carOrderDbUtil.getCarOrderListByAdmin(null, userName,
                null, null, null, null, null, null);

        request.setAttribute("nowCarOrder", nowCarOrder);

        List<SpaceOrder> nowSpaceOrder = spaceOrderDbUtil.getSpaceOrderListByAdmin(null, userName,
                null, null, null, null, null);
        request.setAttribute("nowSpaceOrder", nowSpaceOrder);

        List<CarAvailability> nowCarAva = carAvailabilityDbUtil.getCarAvailabilityListByAdmin(null, userName,
                null,null,null,null,null,null,null);

        request.setAttribute("nowCarAva", nowCarAva);

        RequestDispatcher dispatcher = request.getRequestDispatcher("/profile.jsp");
        dispatcher.forward(request, response);
    }

    private void checkCell(HttpServletRequest request, HttpServletResponse response) throws Exception {
        PrintWriter out = response.getWriter();
        boolean result = true;
        if (userDbUtil.getUserByCell(request.getParameter("user_cell")) == null) {
            result = false;
        }
        out.print(result);
    }

    private void checkName(HttpServletRequest request, HttpServletResponse response) throws Exception {
        PrintWriter out = response.getWriter();
        boolean result = true;
        if (userDbUtil.getUserByName(request.getParameter("user_name")) == null) {
            result = false;
        }
        out.print(result);
    }

    private void userRegister(HttpServletRequest request, HttpServletResponse response) throws Exception {
        String userName = request.getParameter("user_name");
        String userCell = request.getParameter("user_cell");
        String userPsw = request.getParameter("user_psw");
        String userEmail = request.getParameter("user_email");
        userDbUtil.registerUser(userName, userPsw, userEmail, userCell);
        RequestDispatcher dispatcher = request.getRequestDispatcher("/IndexController");
        dispatcher.forward(request, response);
    }

    private void updateUserById(HttpServletRequest request, HttpServletResponse response) throws Exception {
        response.setCharacterEncoding("utf-8");
        response.setContentType("text");
        PrintWriter out = response.getWriter();
        out.print(userDbUtil.updateUserById(request.getParameter("user_id"), request.getParameter("user_psw"), request.getParameter("user_cell")));
    }

    private void suspendUser(HttpServletRequest request, HttpServletResponse response) throws Exception {
        userDbUtil.suspendUserById(request.getParameter("user_id"));
        response.setCharacterEncoding("utf-8");
        response.setContentType("text");
        PrintWriter out = response.getWriter();
        out.print(true);
    }

    private void activateUser(HttpServletRequest request, HttpServletResponse response) throws Exception {
        userDbUtil.activateUserById(request.getParameter("user_id"));
        response.setCharacterEncoding("utf-8");
        response.setContentType("text");
        PrintWriter out = response.getWriter();
        out.print(true);
    }

    private void login(HttpServletRequest request, HttpServletResponse response) throws Exception {
        User user = new User();
        User user_db = userDbUtil.getUserByName(request.getParameter("user_name"));
        System.out.println(request.getParameter("user_name"));
        if (user_db == null
                || user_db.getUserValid() != 1
                || !user_db.getUserPsw().equals(request.getParameter("user_psw"))) {
            request.setAttribute("logged_in", false);
            //Forward to login.jsp
            RequestDispatcher dispatcher = request.getRequestDispatcher("/login.jsp");
            dispatcher.forward(request, response);
        } else {
            userDbUtil.updateUserLastSeen(user_db.getUserId());
            request.setAttribute("logged_in", true);
            request.setAttribute("current_user", user_db);
            //Forword to index.jsp
            RequestDispatcher dispatcher = request.getRequestDispatcher("/IndexController");
            dispatcher.forward(request, response);
        }

    }

    private void adminUser(HttpServletRequest request, HttpServletResponse response) throws Exception {
        String userId = request.getParameter("user_id");
        String userStatus = request.getParameter("user_status"); //  {all,activated,pending,suspended}
        String userName = request.getParameter("user_name");
        String userCell = request.getParameter("user_cell");
        String dateLastLogined = request.getParameter("date_last_logined");
        String dateRegister = request.getParameter("date_register");
        String dateDealed = request.getParameter("date_dealed");

        UserSearch mUserSearch = new UserSearch();
        if (null != userId && userId.length() != 0) {
            mUserSearch.setSearchId(Integer.parseInt(userId));
        }
        if (null != userStatus) {
            mUserSearch.setSearchStatus(Integer.parseInt(userStatus));

        }
        if (null != userName && userName.length() != 0) {
            mUserSearch.setSearchName(userName);
        }
        if (null != dateLastLogined && dateLastLogined.length() != 0) {
            mUserSearch.setDateLastLogined(dateLastLogined);
        }
        if (null != dateRegister && dateRegister.length() != 0) {
            mUserSearch.setSearchStartDate(dateRegister);
        }
        if (null != dateDealed && dateDealed.length() != 0) {
            mUserSearch.setSearchOrderDate(dateDealed);
        }
        if (null != userCell && userCell.length() != 0) {
            mUserSearch.setSearchCell(Long.parseLong(userCell));
        }

        List<User> userList = userDbUtil.getUserListbyAdmin(userId, userStatus, userName, userCell, dateLastLogined, dateRegister, dateDealed);

        if (userList != null) {
            request.setAttribute("empty", false);
            request.setAttribute("user_list", userList);
            request.setAttribute("search_input", mUserSearch);
            //Forward to adminUser.jsp
            RequestDispatcher dispatcher = request.getRequestDispatcher("/adminUser.jsp");
            dispatcher.forward(request, response);
        } else {
            request.setAttribute("empty", true);
            //Forword to adminUser.jsp
            RequestDispatcher dispatcher = request.getRequestDispatcher("/adminUser.jsp");
            dispatcher.forward(request, response);
        }

    }

}
