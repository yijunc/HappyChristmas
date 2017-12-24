package controller;

import bean.CarAvailability;
import bean.CarAvailabilitySearch;
import model.CarAvailabilityDbUtil;
import model.CarDbUtil;

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
    private CarDbUtil carDbUtil;

    @Resource(name = "jdbc/2017J2EE")
    private DataSource dataSource;

    @Override
    public void init() throws ServletException {
        super.init();
        try {
            carAvailabilityDbUtil = new CarAvailabilityDbUtil(dataSource);
            carDbUtil = new CarDbUtil(dataSource);
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
            if (theCommand != null) {
                // route to the appropriate method
                switch (theCommand) {
                    case "ADMIN_CAR_AVAILABILITY":
                        adminCarAvailability(request, response);
                        break;
                    case "USER_CAR_AVAILABILITY":
                        userCarAvailability(request, response);
                        break;
                    case "ADD_CAR_AVAILABILITY":
                        userAddCarAvailability(request, response);
                        break;
                    case "ADMIN_CAR_CANCEL":
                        adminCarCancel(request, response);
                        break;
                    default:
                        break;
                }
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

    private void adminCarCancel(HttpServletRequest request, HttpServletResponse response) throws Exception {
        int avaId = Integer.parseInt(request.getParameter("ava_id"));
        carAvailabilityDbUtil.cancelCarAva(avaId);
    }

    private void userAddCarAvailability(HttpServletRequest request, HttpServletResponse response) throws Exception {
        String carType = request.getParameter("car_type");
        String carOwner = request.getParameter("car_owner");
        String carBrand = request.getParameter("car_brand");
        String dateStart = request.getParameter("date_start");
        String dateEnd = request.getParameter("date_end");
        int priceDaily = Integer.parseInt(request.getParameter("price_daily"));
        int carSeat = Integer.parseInt(request.getParameter("car_seat"));

        int carId = carDbUtil.addCar(carType, carOwner, carBrand, carSeat);

        carAvailabilityDbUtil.addCarAvailability(carId, dateStart, dateEnd, priceDaily, carType, carOwner, carBrand, carSeat);

        response.sendRedirect("/CarAvailabilityController?command=USER_CAR_AVAILABILITY");

    }

    private void userCarAvailability(HttpServletRequest request, HttpServletResponse response) throws Exception {
        String dataStart = request.getParameter("date_start");
        String dataEnd = request.getParameter("date_end");
        String carSeat = request.getParameter("car_seat");
        System.out.println(TAG + " dataStart: " + dataStart);
        System.out.println(TAG + " dataEnd: " + dataEnd);
        System.out.println(TAG + " carSeat: " + carSeat);

        List<CarAvailability> carAvailabilityList = carAvailabilityDbUtil.getCarAvalabilityListByUser(dataStart, dataEnd, carSeat);
        carAvailabilityList = carDbUtil.getCarByList(carAvailabilityList);
        request.setAttribute("car_available_list", carAvailabilityList);
        RequestDispatcher dispatcher = request.getRequestDispatcher("/rentCar.jsp");
        dispatcher.forward(request, response);
    }

    private void adminCarAvailability(HttpServletRequest request, HttpServletResponse response) throws Exception {
        String carId = request.getParameter("car_id");
        String carOwner = request.getParameter("car_owner");
        String carBrand = request.getParameter("car_brand");
        String carType = request.getParameter("car_type");
        String carSeat = request.getParameter("car_seat");
        String carStatus = request.getParameter("car_status");
        String carDateStart = request.getParameter("date_start");
        String carDateEnd = request.getParameter("date_end");
        String carPrice = request.getParameter("car_price");

        CarAvailabilitySearch carAvailabilitySearch = new CarAvailabilitySearch();
        if (null != carId && carId.length() != 0) {
            carAvailabilitySearch.setCarId(carId);
        }
        if (null != carOwner && carOwner.length() != 0 && !carOwner.equals("3")) {
            carAvailabilitySearch.setCarOwner(carOwner);
        }
        if (null != carBrand && carBrand.length() != 0 && !carBrand.equals("all")) {
            carAvailabilitySearch.setCarBrand(carBrand);
        }
        if (null != carType && carType.length() != 0 && !carType.equals("all")) {
            carAvailabilitySearch.setCarType(carType);
        }
        if (null != carSeat && carSeat.length() != 0 && !carSeat.equals("all")) {
            carAvailabilitySearch.setCarSeat(carSeat);
        }
        if (null != carStatus && carStatus.length() != 0 && !carStatus.equals("all")) {
            carAvailabilitySearch.setCarStatus(carSeat);
        }
        if (null != carDateStart && carDateStart.length() != 0) {
            carAvailabilitySearch.setCarDateStart(carDateStart);
        }
        if (null != carDateEnd && carDateEnd.length() != 0) {
            carAvailabilitySearch.setCarDateEnd(carDateEnd);
        }
        if (null != carPrice && carPrice.length() != 0 && carPrice != "all") {
            carAvailabilitySearch.setCarPriceDaily(carPrice);
        }

        List<CarAvailability> carAvailabilityList = carAvailabilityDbUtil.getCarAvailabilityListByAdmin(carId, carOwner, carBrand,
                carType, carSeat, carStatus, carDateStart, carDateEnd, carPrice);
        carAvailabilityList = carDbUtil.getCarByList(carAvailabilityList);
        if (null != carAvailabilityList) {
            request.setAttribute("empty", false);
            request.setAttribute("car_available_list", carAvailabilityList);
            request.setAttribute("search_input", carAvailabilitySearch);
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
