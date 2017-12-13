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
                <form>

                    <div class="row">
                        <div class="col-xs-3 col-xs-12">
                            <div class="form-group">
                                <div class="input-group">
                                    <div class="input-group-addon">取车时间</div>
                                    <div class="input-group date ed-datepicker filterDate"
                                         data-provide="datepicker">
                                        <input type="text" class="form-control" placeholder="月/日/年"
                                               id="dateStart" name="date_start">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-xs-3 col-xs-12">
                            <div class="form-group">
                                <div class="input-group">
                                    <div class="input-group-addon">还车时间</div>
                                    <div class="input-group date ed-datepicker filterDate"
                                         data-provide="datepicker" style="width: 100%">
                                        <input type="text" class="form-control" placeholder="月/日/年"
                                               id="dateEnd" name="date_end">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-xs-3 col-xs-12">
                            <div class="form-group">
                                <div class="input-group">
                                    <div class="input-group-addon">车座</div>
                                    <div class="searchSelectboxes" style="width: 100%">
                                        <select name="guiest_id32" id="guiest_id32" class="select-drop">
                                            <option value="0">不限</option>
                                            <option value="1">4座</option>
                                            <option value="2">5座</option>
                                            <option value="3">7座</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="" style="padding-left: 20px">
                            <div class="">
                                <button type="button" class="btn btn-primary btn-xs" onclick=""><i
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
                                        <li style="padding-right: 20px"><a href="#"><img src="img/dashboard/listing.jpg"
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
                                <td>7座</td>
                                <td>&nbsp <span style="color: pink; font-size: 20px;font-weight: bold">¥ 66.00 </span>/日均
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
                                <td><span class="label label-warning">预约</span></td>
                            </tr>
                            <%}%>

                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
    </section>

    <%--<section style="padding-top: 15px; ">--%>
    <%--<div class="container">--%>
    <%--<div class="row">--%>
    <%--<div class="col-sm-12 col-xs-12">--%>
    <%--<div class="resultBar barSpaceAdjust">--%>
    <%--<h2>We found <span><%=carAvailabilityList.size()%></span> Results for you</h2>--%>
    <%--</div>--%>

    <%--<%--%>
    <%--for (int foreach = 0; foreach < carAvailabilityList.size(); foreach++) {--%>
    <%--CarAvailability mCarAvailability = carAvailabilityList.get(foreach);--%>
    <%--%>--%>
    <%--<div class="listContent">--%>
    <%--<div class="row">--%>
    <%--<div class="col-sm-5 col-xs-12">--%>
    <%--<div class="categoryImage">--%>
    <%--<img src="img/things/things-<%=mCarAvailability.getCarId()%>.jpg"--%>
    <%--alt="Image category"--%>
    <%--class="img-responsive img-rounded">--%>
    <%--<span class="label label-primary">Verified</span>--%>
    <%--</div>--%>
    <%--</div>--%>
    <%--<div class="col-sm-7 col-xs-12">--%>
    <%--<div class="categoryDetails">--%>
    <%--<ul class="list-inline rating">--%>
    <%--<%--%>
    <%--for (int i = 0; i < mCarAvailability.getCarRating(); i++) {--%>
    <%--%>--%>
    <%--<li><i class="fa fa-star" aria-hidden="true"></i></li>--%>
    <%--<%--%>
    <%--}--%>
    <%--%>--%>
    <%--</ul>--%>
    <%--<h2><a href="blog-details.html" style="color: #222222">Glory Hole Doughnuts</a>--%>
    <%--<span class="likeCount"><i class="fa fa-heart-o"--%>
    <%--aria-hidden="true"></i> 10 k</span></h2>--%>
    <%--<p>1569 Queen Street West <span class="placeName">Toronto</span></p>--%>
    <%--<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed eiusmod tempor--%>
    <%--incididunt labore et dolore magna aliqua. </p>--%>
    <%--<ul class="list-inline list-tag">--%>
    <%--<li><a href="category-list-full.html">Hotel,</a></li>--%>
    <%--<li><a href="category-list-full.html">Restaurant</a></li>--%>
    <%--</ul>--%>
    <%--</div>--%>
    <%--</div>--%>
    <%--</div>--%>
    <%--</div>--%>

    <%--<div class="listContent borderRemove">--%>
    <%--<div class="row">--%>
    <%--<div class="col-sm-5 col-xs-12">--%>
    <%--<div class="categoryImage">--%>
    <%--<img src="img/things/things-2.jpg" alt="Image category"--%>
    <%--class="img-responsive img-rounded">--%>
    <%--</div>--%>
    <%--</div>--%>
    <%--<div class="col-sm-7 col-xs-12">--%>
    <%--<div class="categoryDetails">--%>
    <%--<h2><a href="blog-details.html" style="color: #222222">Glory Hole Doughnuts</a>--%>
    <%--<span class="likeCount"><i class="fa fa-heart-o"--%>
    <%--aria-hidden="true"></i> 10 k</span></h2>--%>
    <%--<p>1569 Queen Street West <span class="placeName">Toronto</span></p>--%>
    <%--<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed eiusmod tempor--%>
    <%--incididunt labore et dolore magna aliqua. </p>--%>
    <%--<ul class="list-inline list-tag">--%>
    <%--<li><a href="category-list-full.html">Hotel,</a></li>--%>
    <%--<li><a href="category-list-full.html">Restaurant</a></li>--%>
    <%--</ul>--%>
    <%--</div>--%>
    <%--</div>--%>
    <%--</div>--%>
    <%--</div>--%>

    <%--<%}%>--%>
    <%--<div class="paginationCommon blogPagination categoryPagination">--%>
    <%--<nav aria-label="Page navigation">--%>
    <%--<ul class="pagination">--%>
    <%--<li>--%>
    <%--<a href="#" aria-label="Previous">--%>
    <%--<span aria-hidden="true"><i class="fa fa-angle-left"--%>
    <%--aria-hidden="true"></i></span>--%>
    <%--</a>--%>
    <%--</li>--%>
    <%--<li class="active"><a href="#">1</a></li>--%>
    <%--<li><a href="#">2</a></li>--%>
    <%--<li><a href="#">3</a></li>--%>
    <%--<li><a href="#">4</a></li>--%>
    <%--<li><a href="#">5</a></li>--%>
    <%--<li>--%>
    <%--<a href="#" aria-label="Next">--%>
    <%--<span aria-hidden="true"><i class="fa fa-angle-right"--%>
    <%--aria-hidden="true"></i></span>--%>
    <%--</a>--%>
    <%--</li>--%>
    <%--</ul>--%>
    <%--</nav>--%>
    <%--</div>--%>
    <%--</div>--%>
    <%--</div>--%>
    <%--</div>--%>
    <%--</section>--%>

</div>
<%@include file="templates/loginModal.jsp" %>
<%@include file="templates/footers.jsp" %>
</body>
<script>
</script>
</html>


