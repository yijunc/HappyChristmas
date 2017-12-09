package controller;

import bean.CarAvailability;
import model.CarAvailabilityDbUtil;

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

@WebServlet("/CarAvailabilityController")
public class CarAvailabilityController extends HttpServlet {
    private final static String TAG = "CarAvailabilityController";
    private CarAvailabilityDbUtil carAvailabilityDbUtil;

    @Resource(name = "jdbc/2017J2EE")
    private DataSource dataSource;

    @Override
    public void init() throws ServletException {
        super.init();
        // create our student db util ... and pass in the conn pool / datasource
        try {
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
                case "ADMIN_CAR_AVAILABILITY":
                    adminCarAvailabillty(request, response);
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

    private void adminCarAvailabillty(HttpServletRequest request, HttpServletResponse response) throws Exception {
        String carId = request.getParameter("car_id");
        String carOwner = request.getParameter("car_owner");
        String carBrand = request.getParameter("car_brand");
        String carType = request.getParameter("car_type");
        String carSeat = request.getParameter("car_seat");
        String carStatus = request.getParameter("car_status");
        String carDateStart = request.getParameter("date_start");
        String carDateEnd = request.getParameter("date_end");
        String carPrice = request.getParameter("car_price");

        List<CarAvailability> carAvailabilityList = carAvailabilityDbUtil.getCarAvailabilityListByAdmin(carId, carOwner, carBrand,
                carType, carSeat, carStatus, carDateStart, carDateEnd, carPrice);

        if (null != carAvailabilityList) {
            request.setAttribute("empty", false);
            request.setAttribute("car_available_list", carAvailabilityList);
            //Forward to adminCar.jsp
            RequestDispatcher dispatcher = request.getRequestDispatcher("/adminCar.jsp");
            dispatcher.forward(request, response);
        } else {
            request.setAttribute("empty", true);
            //Forward to adminCar.jsp
            RequestDispatcher dispatcher = request.getRequestDispatcher("/adminCar.jsp");
            dispatcher.forward(request, response);
        }
    }
}
