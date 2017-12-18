package controller;

import bean.Space;
import model.SpaceDbUtil;

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

@WebServlet("/SpaceController")
public class SpaceController extends HttpServlet {
    private final static String TAG = "SpaceController";
    private SpaceDbUtil spaceDbUtil;

    @Resource(name = "jdbc/2017J2EE")
    private DataSource dataSource;

    @Override
    public void init() throws ServletException {
        super.init();
        // create our student db util ... and pass in the conn pool / datasource
        try {
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
                case "ADMIN_SPACE":
                    adminSpace(request, response);
                    break;
                case "GET_PRICE":
                    getSpacePriceById(request, response);
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

    private void getSpacePriceById(HttpServletRequest request, HttpServletResponse response) throws Exception {
        int spaceId = Integer.valueOf(request.getParameter("space_id"));
        int spaceType = Integer.valueOf(request.getParameter("space_type"));
        PrintWriter out = response.getWriter();
        String price = String.valueOf(spaceDbUtil.getSpacePriceByIdAndType(spaceId, spaceType));
        out.write(price);
    }

    private void adminSpace(HttpServletRequest request, HttpServletResponse response) throws Exception {
        String spaceId = request.getParameter("space_id");
        String spaceType = request.getParameter("space_type");
        String spaceCity = request.getParameter("space_city");

        List<Space> spaceList = spaceDbUtil.getSpaceListByAdmin(
                spaceId, spaceCity, spaceType
        );

        if (null != spaceList) {
            request.setAttribute("empty", false);
            request.setAttribute("space_list", spaceList);
            RequestDispatcher dispatcher = request.getRequestDispatcher("/adminSpace.jsp");
            dispatcher.forward(request, response);
        } else {
            request.setAttribute("empty", true);
            RequestDispatcher dispatcher = request.getRequestDispatcher("/adminSpace.jsp");
            dispatcher.forward(request, response);
        }
    }
}
