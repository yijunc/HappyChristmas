package controller;

import bean.UserSearch;
import bean.User;
import model.UserDbUtil;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

/**
 * Servlet implementation class StudentControllerServlet
 */
@WebServlet("/UserController")
public class UserController extends HttpServlet {
    private final static String TAG = "UserController";
    private static final long serialVersionUID = 1L;
    private UserDbUtil userDbUtil;

    SimpleDateFormat dateFormatFrom = new SimpleDateFormat("mm/dd/yyyy");
    SimpleDateFormat dateFormatTo = new SimpleDateFormat("yyyy-mm-dd");

    @Resource(name = "jdbc/2017J2EE")
    private DataSource dataSource;

    @Override
    public void init() throws ServletException {
        super.init();

        // create our student db util ... and pass in the conn pool / datasource
        try {
            userDbUtil = new UserDbUtil(dataSource);
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
                case "ADMIN_USER":
                    adminUser(request, response);
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

    private void login(HttpServletRequest request, HttpServletResponse response) throws Exception {
        User user = new User();
        User user_db = userDbUtil.getUserByName(request.getParameter("user_name"));
        if (user_db == null
                || user_db.getUserValid() != 1
                || !user_db.getUserPsw().equals(request.getParameter("user_psw"))) {
            request.setAttribute("logged_in", false);
            //Forward to login.jsp
            RequestDispatcher dispatcher = request.getRequestDispatcher("/login.jsp");
            dispatcher.forward(request, response);
        } else {
            request.setAttribute("logged_in", true);
            request.setAttribute("current_user", user_db);
            //Forword to index.jsp
            RequestDispatcher dispatcher = request.getRequestDispatcher("/index.jsp");
            dispatcher.forward(request, response);
        }

    }

    private void adminUser(HttpServletRequest request, HttpServletResponse response) throws Exception {
        String userId = request.getParameter("user_id");
        String userStatus = request.getParameter("user_status"); //  {all,activated,pending,suspended}
        String userName = request.getParameter("user_name");
        String dateLastLogined = request.getParameter("date_last_logined");
        String dateRegister = request.getParameter("date_register");
        String dateDealed = request.getParameter("date_dealed");

        UserSearch mUserSearch = new UserSearch();
        if (null != userId && userId.length() != 0) {
            System.out.println(TAG + ":mUserSearch userId= "+ userId);
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

//        if (userName != null) {
//            // 编码，解决中文乱码
//            String str = URLEncoder.encode(userName, "utf-8");
//            // 设置 name 和 url cookie
//            Cookie name = new Cookie("user_name", str);
//
//            // 设置cookie过期时间为24小时。
//            name.setMaxAge(60 * 60 * 24);
//
//            // 在响应头部添加cookie
//            response.addCookie(name);
//            System.out.println("cookie:"+str);
//        }


        List<User> userList = userDbUtil.getUserListbyAdmin(userId, userStatus, userName, dateLastLogined, dateRegister, dateDealed);

        if (userList != null) {

            request.setAttribute("empty", false);
            request.setAttribute("user_list", userList);
            request.setAttribute("search_input", mUserSearch);
            //Forward to adminuser.jsp
            RequestDispatcher dispatcher = request.getRequestDispatcher("/adminuser.jsp");
            dispatcher.forward(request, response);
        } else {
            request.setAttribute("empty", true);
            //Forword to adminuser.jsp
            RequestDispatcher dispatcher = request.getRequestDispatcher("/adminuser.jsp");
            dispatcher.forward(request, response);
        }

    }

}