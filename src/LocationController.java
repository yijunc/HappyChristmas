import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

import com.google.gson.Gson;

/**
 * Servlet implementation class LocationController
 */
@WebServlet("/LocationController")
public class LocationController extends HttpServlet {
    private static final long serialVersionUID = 1L;

    private LocationDbUtil locationDbUtil;

    @Resource(name = "jdbc/2017J2EE")
    private DataSource dataSource;

    @Override
    public void init() throws ServletException {
        // TODO Auto-generated method stub
        super.init();

        try {
            locationDbUtil = new LocationDbUtil(dataSource);
        } catch (Exception exc) {
            throw new ServletException(exc);
        }
    }

    /**
     * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
     * response)
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // TODO Auto-generated method stub
        try {
            // read the "command" parameter
            request.setCharacterEncoding("UTF-8");
            String theCommand = request.getParameter("command");

            // if the command is missing, then default to listing students
            if (theCommand == null) {
                theCommand = "LIST";
            }

            // route to the appropriate method
            switch (theCommand) {

                case "LIST":
                    listLocations(request, response);
                    break;

                default:
                    listLocations(request, response);
            }

        } catch (Exception exc) {
            throw new ServletException(exc);
        }
    }

    /**
     * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
     * response)
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // TODO Auto-generated method stub
        doGet(request, response);
    }


    private void listLocations(HttpServletRequest request, HttpServletResponse response) throws Exception {
        response.setContentType("application/json;charset=utf-8");
        LocationResult result = new LocationResult();

        // get students from db util
        List<Location> locations = locationDbUtil.getLocations();
        for (Location it : locations) {
            result.addToResult(it);
        }

        PrintWriter writer = response.getWriter();
        writer.write(new Gson().toJson(result, LocationResult.class));
        writer.flush();
    }

}
