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
                                    <span name="hidden_id" class="hidden"><%=item.getmId()%></span>
                                    <ul class="list-inline listingsInfo">
                                        <li style="padding-right: 20px"><a href="#"><img src="img/carpic/<%=item.getCarId()%>.jpg"
                                                                                         alt="Image Listings"></a>
                                        </li>
                                        <li>
                                            <p></p>
                                            <h3><b>&nbsp<span name="car_brand"><%=item.getCarBrand()%></span>&nbsp&nbsp<%=item.getCarType()%>
                                            </b>
                                                <%if (item.getCarOwner().equals("HC")) {%>
                                                <span class="label label-primary" style="width: 40px ; ">HC</span>
                                                <%}%>
                                            </h3>
                                            <h5>&nbsp&nbspID:<span name="car_id"><%=item.getCarId()%></span>
                                            </h5>
                                            <%if (item.getCarOwner().equals("HC")) {%>
                                            <span class="category">&nbsp&nbsp车主：<span name="car_owner">HC</span></span>
                                            <%} else {%>
                                            <span class="category">&nbsp&nbsp车主：<span name="car_owner"><%=item.getCarOwner()%></span></span>
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
                                <td>&nbsp <span style="color: pink; font-size: 20px;font-weight: bold">¥ <span name="daily_price"><%=item.getCarPriceDaily()%></span> </span>/日均
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
                                <td><span name="date_start"><%=item.getCarDateStart()%></span>
                                    <br>11.00am</td>
                                <td><span name="date_end"><%=item.getCarDateEnd()%></span><br>11.00am</td>
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
<div class="modal fade" tabindex="-1" role="dialog" id="carOrderingModal" style="padding-top: 10%">
    <div class="modal-dialog" role="document">
        <div class="modal-content" style="height: 320px;width: 675px;">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span>
                </button>
                <h4 class="modal-title">租车账单详情</h4>
            </div>
            <div class="modal-body">
                <div style="padding-left: 20px;padding-right: 20px">
                    <div class="input-group input-group-sm"
                         style="padding-bottom: 30px;padding-right: 20px;float:left;width: 300px">
                        <span class="input-group-addon" style="width: 80px">车辆ID：&nbsp&nbsp</span>
                        <input type="text" class="form-control" disabled="disabled" id="modalCarId"
                               style="background-color: white; color:dimgrey">
                    </div>

                    <div class="input-group input-group-sm"
                         style="width: 300px;padding-bottom: 30px;padding-left: 20px">
                        <span class="input-group-addon" style="width: 80px">车辆品牌：</span>
                        <input type="text" class="form-control" disabled="disabled" id="modalBrand"
                               style="background-color: white; color:dimgrey">
                    </div>
                </div>

                <div style="padding-left: 20px;padding-right: 20px">
                    <div class="input-group input-group-sm"
                         style="padding-bottom: 30px;padding-right: 20px;float:left;width: 300px">
                        <span class="input-group-addon" style="width: 80px">车辆主人：</span>
                        <input type="text" class="form-control" disabled="disabled" id="modalHost"
                               style="background-color: white; color:dimgrey">
                    </div>

                    <div class="input-group input-group-sm"
                         style="width: 300px;padding-bottom: 30px;padding-left: 20px">
                        <span class="input-group-addon" style="width: 80px">下单客户：</span>
                        <input type="text" class="form-control" disabled="disabled" id="modalCustomer"
                        style="background-color: white; color:dimgrey">
                    </div>
                </div>

                <div style="padding-left: 20px;padding-right: 20px">
                    <div class="input-group input-group-sm" style="padding-right: 20px;float:left;width: 300px">
                        <span class="input-group-addon" style="width: 80px">提车时间：</span>
                        <input type="text" class="form-control" id="modalStart">
                    </div>

                    <div class="input-group input-group-sm" style="width: 300px;padding-left: 20px">
                        <span class="input-group-addon" style="width: 80px">取车时间：</span>
                        <input type="text" class="form-control" id="modalEnd">
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <h3 style="color: red">总额： ¥<span id="modalPrice">270</span><span><button type="button" class="btn btn-primary confirmButton" style="width: 70px;margin-left: 20px;margin-right: 20px" id="modalConfirm">确认</button></span></h3>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div><!-- /.modal -->

</body>
<script>
    var element;
    var dailyPrice;
    var mId;
    $(".orderButton").click(function () {
        var index = this.parentNode.parentNode;
        element = index;
        var id = $(index).find("h5").find("span[name='car_id']").text();
        var brand = $(index).find("td").find("ul").find("li").find("h3").find("span[name='car_brand']").text();
        var host = $(index).find("span[name='car_owner']").text();
        var myDate = new Date();
        var reg = new RegExp("/","g");//g,表示全部替换
        var today = myDate.toLocaleDateString().replace(reg,'-');
        var start = $(index).find("td").find("span[name='date_start']").text();
        var end = $(index).find("td").find("span[name='date_end']").text();
        var avePrice = $(index).find("span[name='daily_price']").text();
        dailyPrice = avePrice;
        var customer = "<%
            if(currentUser == null){
                out.print("-1");
            }
            else{
                out.print(currentUser.getUserName());
            }%>";
        if(customer == "-1"){
            alert("预订请先登录！");
            $(window).attr('location','./login.jsp');
        }
        else {
            $("#modalCarId").val(id);
            $("#modalBrand").val(brand);
            $("#modalHost").val(host);
            $("#modalCustomer").val(customer);
            $("#modalPrice").text(dailyPrice);
            // console.log("start:"+start);
            // console.log("end:"+end);
            // console.log("today:"+today);
            // console.log(getDaysDiff(start,today));
            // console.log(getDaysDiff(today,end));
            // console.log(addDays(end,30));
            if(getDaysDiff(start,today)>=0){
                $("#modalStart").val(today);
            }
            else {
                $("#modalStart").val(start);
            }
            if(getDaysDiff(today,end)>=30){
                $("#modalEnd").val(addDays(today,30));
            }
            else {
                $("#modalEnd").val(end);
            }
        }
        $("#carOrderingModal").modal('show');
    });
    function getDaysDiff(dateStart, dateEnd) {
        var arr1 = dateStart.split("-");
        var date1 = new Date(parseInt(arr1[0]),parseInt(arr1[1])-1,parseInt(arr1[2]));
        date1 = date1.getTime();
        var arr2 = dateEnd.split("-");
        var date2 = new Date(parseInt(arr2[0]),parseInt(arr2[1])-1,parseInt(arr2[2]));
        date2 = date2.getTime();
        return Math.floor((date2 - date1) / (1000 * 60 * 60 * 24) );
    }
    function addDays(date, days) {
        var arr1 = date.split("-");
        var date1 = new Date(parseInt(arr1[0]),parseInt(arr1[1])-1,parseInt(arr1[2]));
        // console.log(date1);
        date1 = new Date(date1.setDate(date1.getDate()+days));
        // console.log(date1);
        var dateEnd = date1.getFullYear()+"-"+(date1.getMonth()+1)+"-"+date1.getDate();
        return dateEnd;
    }
    $("#modalStart").blur(updatePrice);
    $("#modalStart").click(updatePrice);
    $("#modalStart").change(updatePrice);
    $("#modalEnd").blur(updatePrice);
    $("#modalEnd").click(updatePrice);
    $("#modalEnd").change(updatePrice);

    function updatePrice() {
        var date1 = $("#modalStart").val();
        var date2 = $("#modalEnd").val();
        var arr1 = date1.split("-");
        var arr2 = date2.split("-");
        var date1 = new Date(parseInt(arr1[0]),parseInt(arr1[1])-1,parseInt(arr1[2]));
        var date2 = new Date(parseInt(arr2[0]),parseInt(arr2[1])-1,parseInt(arr2[2]));
        var date1 = date1.getTime();
        var date2 = date2.getTime();
        // console.log(date1+"|"+date2);
        var price = (Math.floor((date2 - date1) / (1000 * 60 * 60 * 24))+1)* dailyPrice;
        $("#modalPrice").text(price);
        console.log("total:"+price);
    }
    $(".confirmButton").click(function () {
        var mId = $(element).find("span[name='hidden_id']").text();
        $.get("/CarOrderController?command=USER_TAKE_ORDER",{
            ava_id: mId,
            car_id: $("#modalCarId").val(),
            car_start: $("#modalStart").val(),
            car_end: $("#modalEnd").val(),
            car_taker: $("#modalHost").val(),
            car_poster: $("#modalCustomer").val(),
            car_price: $("#modalPrice").text()
        });
        $("#carOrderingModal").modal('hide');
    });
</script>
</html>


