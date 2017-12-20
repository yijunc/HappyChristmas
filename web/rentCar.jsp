<%@ page import="bean.CarAvailability" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Random" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/12/4
  Time: 20:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<html>
<%@include file="templates/headers.jsp" %>

<head>
    <title>租车信息查询</title>
</head>

<body class="body-wrapper">
<div class="page-loader" style="background: url(img/preloader.gif) center no-repeat #fff;"></div>
<div class="main-wrapper">
    <header id="pageTop" class="header">
        <%@include file="templates/navbars.jsp" %>
    </header>


    <!-- CATEGORY SEARCH SECTION -->
    <section class="clearfix searchArea banerInfo searchAreaGray">
        <form>
            <div class="container">
                <form action="/CarAvailabilityController" method="post" id="carSearchForm">
                    <input type="hidden" name="command" value="USER_CAR_AVAILABILITY"/>
                    <div class="row">
                        <div class="col-xs-4 col-xs-12" style="width: 30%">
                            <div class="form-group">
                                <div class="input-group">
                                    <div class="input-group-addon">取车时间</div>
                                    <div class="input-group date ed-datepicker filterDate"
                                         data-provide="datepicker">
                                        <input type="text" class="form-control" placeholder="月/日/年"
                                               id="dateStart" name="date_start">
                                        <div class="input-group-addon">
                                            <i class="fa fa-calendar" aria-hidden="true"></i>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-xs-4 col-xs-12" style="width: 30%">
                            <div class="form-group">
                                <div class="input-group">
                                    <div class="input-group-addon">还车时间</div>
                                    <div class="input-group date ed-datepicker filterDate"
                                         data-provide="datepicker" style="width: 100%">
                                        <input type="text" class="form-control" placeholder="月/日/年"
                                               id="dateEnd" name="date_end">
                                        <div class="input-group-addon">
                                            <i class="fa fa-calendar" aria-hidden="true"></i>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-xs-4 col-xs-12" style="width: 27%">
                            <div class="form-group">
                                <div class="input-group">
                                    <div class="input-group-addon">车座</div>
                                    <div class="searchSelectboxes" style="width: 100%">
                                        <select name="car_seat" id="carSeat" class="select-drop" size="1"
                                                multiple="false">
                                            <option value="all">不限</option>
                                            <option value="4">4座</option>
                                            <option value="5">5座</option>
                                            <option value="7">7座</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="" style="padding-left: 20px">
                            <div class="">
                                <button type="submit" class="btn btn-primary btn-xs" onclick=""><i
                                        class="fa fa-search" aria-hidden="true"></i>搜索
                                </button>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </form>
    </section>

    <%
        List<CarAvailability> carAvailabilityList = (List<CarAvailability>) request.getAttribute("car_available_list");
    %>

    <!-- LISTINGS SECTION -->
    <section class="clearfix bg-dark listyPage" style="padding-top: 10px;">

        <div class="container">
            <div class="row">
                <div class="col-xs-12">
                    <div class="table-responsive" data-pattern="priority-columns">
                        <table class="table listingsTable">
                            <thead>
                            <tr class="rowItem">
                                <th data-priority="">共搜索到了<span
                                        style="font-weight: bold;"><%=carAvailabilityList.size()%></span> 条记录
                                </th>
                                <th data-priority="6">车型</th>
                                <th data-priority="2">价格</th>
                                <th data-priority="2">评价</th>
                                <th data-priority="3">取车时间</th>
                                <th data-priority="4">换车时间</th>
                                <th data-priority="5">操作</th>
                            </tr>
                            </thead>
                            <tbody>
                            <%
                                for (CarAvailability item : carAvailabilityList) {
                            %>
                            <tr class="rowItem">
                                <td>
                                    <ul class="list-inline listingsInfo">
                                        <li style="padding-right: 20px"><a href="#"><img src="img/carpic/<%=item.getCarId()%>.jpg"
                                                                                         alt="Image Listings"></a>
                                        </li>
                                        <li>
                                            <p></p>
                                            <h3><b>&nbsp<%=item.getCarBrand()%>&nbsp&nbsp<%=item.getCarType()%>
                                            </b>
                                                <%if (item.getCarOwner().equals("HC")) {%>
                                                <span class="label label-primary" style="width: 40px ; ">HC</span>
                                                <%}%>
                                            </h3>
                                            <h5>&nbsp&nbspID:<%=item.getCarId()%>
                                            </h5>
                                            <%if (item.getCarOwner().equals("HC")) {%>
                                            <span class="category">&nbsp&nbsp车主：HC</span>
                                            <%} else {%>
                                            <span class="category">&nbsp&nbsp车主：<%=item.getCarOwner()%></span>
                                            <%
                                                }
                                            %>
                                            <p><span class="likeArea"><i class="fa fa-heart-o" aria-hidden="true"
                                                                         style="color: red"></i><%=item.getCarCustomer()%></span>
                                            </p>
                                        </li>
                                    </ul>
                                </td>
                                <td><%=item.getCarSeat()%>座</td>
                                <td>&nbsp <span style="color: pink; font-size: 20px;font-weight: bold">¥ <%=item.getCarPriceDaily()%> </span>/日均
                                </td>
                                <td>
                                    <ul class="list-inline rating">
                                        <%
                                            int rating = (int) (item.getCarRating() + 0.5);
                                            for (int foreach = 0; foreach < rating; foreach++) {
                                        %>
                                        <li><i class="fa fa-star" aria-hidden="true"></i></li>
                                        <%}%>
                                        <li>(<%=item.getCarRating()%>)</li>
                                    </ul>

                                </td>
                                <td><%=item.getCarDateStart()%> <br>11.00am</td>
                                <td><%=item.getCarDateEnd()%><br>11.00am</td>
                                <td><span class="label label-warning orderButton">预约</span></td>
                            </tr>
                            <%}%>

                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </section>
</div>
<%@include file="templates/loginModal.jsp" %>
<%@include file="templates/footers.jsp" %>
</body>
<script>
    $(".orderButton").click(function () {
        var index = $(this).parentNode.parentNode;
        var id = $(index).find("td[]")
    });
</script>
</html>


