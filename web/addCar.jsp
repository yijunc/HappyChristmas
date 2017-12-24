<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/12/4
  Time: 20:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<html>
<%@include file="templates/headers.jsp" %>

<head>
    <title>填写出租车辆信息表</title>
</head>

<body class="body-wrapper">
<div class="page-loader" style="background: url(img/preloader.gif) center no-repeat #fff;"></div>
<div class="main-wrapper">
    <header id="pageTop" class="header">
        <%@include file="templates/navbars.jsp" %>
    </header>

    <!-- DASHBOARD ORDERS SECTION -->
    <section class="clearfix bg-dark listingSection">
        <div class="container">
            <div class="row">
                <div class="col-xs-12">
                    <form action="/CarAvailabilityController" method="get" class="listing__form">
                        <input hidden="hidden" name="command" value="ADD_CAR_AVAILABILITY">
                        <div class="dashboardPageTitle text-center">
                            <h2>出租车辆信息填写表</h2>
                        </div>
                        <div class="dashboardBoxBg mb30">
                            <div class="profileIntro paraMargin">
                                <h3>车辆基本信息</h3>
                                <p>HAPPY CHRISTMAS 对您的车辆造成的意外伤害保留最终解释权。</p>
                                <input hidden="hidden" name="car_owner" value="<%
                                if(currentUser == null){
                                   response.sendRedirect("login.jsp");
                                }
                                else{
                                    out.print(currentUser.getUserName());
                                }%>">
                                <div class="row">
                                    <div class="form-group col-sm-6 col-xs-12">
                                        <label for="carBrand">品牌</label>
                                        <input type="text" class="form-control" id="carBrand" name="car_brand"
                                               placeholder="您的车辆品牌，如：宝马">
                                    </div>
                                    <div class="form-group col-sm-6 col-xs-12">
                                        <label for="carType">车系</label>
                                        <input type="text" class="form-control" id="carType" name="car_type"
                                               placeholder="您的车系，如：X5">
                                    </div>
                                    <div class="form-group col-sm-6 col-xs-12">
                                        <label for="carPriceDaily">租价／日均</label>
                                        <input type="text" class="form-control" id="carPriceDaily" name="price_daily"
                                               placeholder="您的车辆日均租价">
                                    </div>
                                    <div class="form-group col-sm-6 col-xs-12">
                                        <label for="carSeat">车座</label>
                                        <div class="contactSelect">
                                            <select name="car_seat" id="carSeat" class="select-drop">
                                                <option value="4">4座</option>
                                                <option value="5">5座</option>
                                                <option value="7">7座</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-group col-xs-12">
                                        <label for="addTags">其他说明</label>
                                        <input type="text" class="form-control" id="addTags" placeholder="其他说明">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="dashboardBoxBg mb30">
                            <div class="profileIntro paraMargin">
                                <h3>出租信息</h3>
                                <div class="row">
                                    <%--<div class="form-group col-md-4 col-sm-6 col-xs-12">--%>
                                    <%--<label for="mondayTime">Monday</label>--%>
                                    <%--<input type="text" class="form-control" id="mondayTime"--%>
                                    <%--placeholder="10.00am - 5.00pm">--%>
                                    <%--</div>--%>
                                    <div class="form-group col-sm-6 col-xs-12">
                                        <label for="dateEnd">开始时间</label><!--!!!!--8--!!!!-->
                                        <div class="dateSelect">
                                            <div class="input-group date ed-datepicker filterDate"
                                                 data-provide="datepicker">
                                                <input id="dateStart" type="text" class="form-control" name="date_start"
                                                       placeholder="月/日/年" name="date_end">
                                                <div class="input-group-addon">
                                                    <i class="fa fa-calendar" aria-hidden="true"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group col-sm-6 col-xs-12">
                                        <label for="dateEnd">结束时间</label><!--!!!!--8--!!!!-->
                                        <div class="dateSelect">
                                            <div class="input-group date ed-datepicker filterDate"
                                                 data-provide="datepicker">
                                                <input id="dateEnd" type="text" class="form-control" name="date_end"
                                                       placeholder="月/日/年" name="date_end">
                                                <div class="input-group-addon">
                                                    <i class="fa fa-calendar" aria-hidden="true"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="form-footer text-center">
                            <button type="submit" class="btn-submit">提 交</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </section>

</div>
<%@include file="templates/loginModal.jsp" %>
<%@include file="templates/footers.jsp" %>


</body>

</html>

