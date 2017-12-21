<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="bean.*" %><%--
  Created by IntelliJ IDEA.
  User: zhaoning
  Date: 2017/12/2
  Time: 下午6:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" %>

<html>

<%@include file="/templates/headers.jsp" %>

<head>
    <title>用户个人中心</title>
</head>
<style>
    .input-style {
        background-color: white;
        color: dimgrey;

    }
</style>

<body class="body-wrapper">
<div class="page-loader" style="background: url(img/preloader.gif) center no-repeat #fff;"></div>
<div class="main-wrapper">

    <header id="pageTop" class="header">
        <%@include file="templates/navbars.jsp" %>
    </header>

    <!-- DASHBOARD PROFILE SECTION -->
    <section class="clearfix bg-dark profileSection">
        <div class="container">
            <div class="row">
                <%--<div class="dashboardBoxBg ">--%>
                <div id="infoTable">
                    <ul class="nav nav-tabs" id="userNavBar">
                        <li role="presentation" class="active" id="carRentalOrders" onclick="changeCarRentalOrders()"><a
                                href="#infoTable">我的租车订单</a></li>
                        <li role="presentation" id="parkingOrders" onclick="changeParkingOrders()"><a
                                href="#infoTable">我的停车位订单</a></li>
                        <li role="presentation" id="loadOrders" onclick="changeLoadOrdrt()"><a
                                href="#infoTable">我的出租订单</a></li>
                        <%--<li role="presentation" id="payment" onclick="changePayment()"><a href="#infoTable">我的收支</a>--%>
                        <%--</li>--%>
                    </ul>
                </div>


                <%--<form>--%>
                <%--<div class="dashboardBoxBg mt30">--%>
                <%--<div class="profileIntro">--%>
                <%--<h2>Your Profile</h2>--%>
                <%--<p>There are many variations of passages of Lorem Ipsum available, but the majority have--%>
                <%--suffered alteration in some form Ipsum available.</p>--%>
                <%--</div>--%>
                <%--</div>--%>
                <%--</form>--%>

                <div id="carRentalOrdersList">
                    <%--<div class="dashboardBoxBg mt30">--%>
                    <%--<div class="col-xs-12">--%>
                    <%--<div class="table-responsive bgAdd" data-pattern="priority-columns">--%>
                    <table id="ordersTable" class="table table-small-font table-bordered table-striped"
                           cellspacing="0" width="100%">
                        <thead>
                        <tr>
                            <th>订单ID</th>
                            <th data-priority="2">订单顾客名</th>
                            <th data-priority="2">订单发布者</th>
                            <th data-priority="3">订单金额</th>
                            <th data-priority="4">订单下单时间</th>
                            <th data-priority="4">订单开始时间</th>
                            <th data-priority="4">订单结束时间</th>
                            <th data-priority="3">车辆ID</th>
                            <th data-priority="3">订单状态</th>
                            <th data-priority="2">操作</th>
                        </tr>
                        </thead>
                        <tfoot>
                        <tr>
                            <th>订单ID</th>
                            <th>订单顾客名</th>
                            <th>订单发布者</th>
                            <th>订单金额</th>
                            <th>订单下单时间</th>
                            <th>订单开始时间</th>
                            <th>订单结束时间</th>
                            <th>车辆ID</th>
                            <th>订单状态</th>
                            <th>操作</th>
                        </tr>
                        </tfoot>
                        <tbody>
                        <%
                            List<CarOrder> carOrderList = (List<CarOrder>) request.getAttribute("nowCarOrder");
                            for (CarOrder it : carOrderList) {
                        %>
                        <tr id="orderCarResult">
                            <td name="order_carId"><%=it.getmId()%>
                            </td>
                            <td name="order_taker"><a
                                    href="/UserController?command=ADMIN_USER&user_name=<%=it.getOrderTaker()%>"><%=it.getOrderTaker()%>
                            </a></td>
                            <td name="order_poster"><a
                                    href="/UserController?command=ADMIN_USER&user_name=<%=it.getOrderPoster()%>"><%=it.getOrderPoster()%>
                            </a></td>
                            <td name="order_price"><%=it.getmAmount()%>
                            </td>
                            <td><%=it.getOrderDate()%>
                            </td>
                            <td name="order_start"><%=it.getOrderStart()%>
                            </td>
                            <td name="order_end"><%=it.getOrderEnd()%>
                            </td>
                            <td>
                                <a href="/CarAvailabilityController?command=ADMIN_CAR_AVAILABILITY&car_id=<%=it.getCarId()%>"><%=it.getCarId()%>
                                </a></td>
                            <%
                                switch (it.getmStatus()) {
                                    case 0: %>
                            <td name="order_status"><span class="label label-danger">已取消</span></td>
                            <%
                                    break;
                                case 1:
                            %>
                            <td name="order_status"><span class="label label-success">已完成</span></td>
                            <%
                                    break;
                                case 2:
                            %>
                            <td name="order_status"><span class="label label-warning">正在进行中</span></td>
                            <%
                                        break;
                                }
                            %>
                            <td>
                                <div class="btn-group">
                                    <button type="button" class="btn btn-primary mdfPrice">完成</button>
                                    <button type="button" class="btn btn-primary cancel">取消</button>
                                </div>
                            </td>
                        </tr>
                        <%
                            }
                        %>
                        </tbody>
                    </table>
                    <%--</div>--%>
                    <%--</div>--%>
                    <%--</div>--%>
                </div>
            </div>

            <div id="parkingOrdersList">
                <table id="ordersTable" class="table table-small-font table-bordered table-striped"
                       cellspacing="0" width="100%">
                    <thead>
                    <tr>
                        <th>订单ID</th>
                        <th data-priority="">订单顾客名</th>
                        <th data-priority="1">车库ID</th>
                        <th data-priority="1">车位类型</th>
                        <th data-priority="6">订单开始时间</th>
                        <th data-priority="6">订单结束时间</th>
                        <th data-priority="3">订单金额</th>
                        <th data-priority="4">订单状态</th>
                        <th data-priority="2">操作</th>
                    </tr>
                    </thead>
                    <tfoot>
                    <tr>
                        <th>订单ID</th>
                        <th>订单顾客名</th>
                        <th>车库ID</th>
                        <th>车位类型</th>
                        <th>订单开始时间</th>
                        <th>订单结束时间</th>
                        <th>订单金额</th>
                        <th>订单状态</th>
                        <th>操作</th>
                    </tr>
                    </tfoot>
                    <tbody>
                    <%
                        List<SpaceOrder> spaceOrderList = (List<SpaceOrder>) request.getAttribute("nowSpaceOrder");
                        for (SpaceOrder it : spaceOrderList) {
                    %>
                    <tr>
                        <td name="order_id"><%=it.getOrderId()%>
                        </td>
                        <td name="space_customer"><a
                                href="/UserController?command=ADMIN_USER&user_name=<%=it.getOrderTaker()%>"><%=it.getOrderTaker()%>
                        </a></td>
                        </td>
                        <td name="space_id"><a
                                href="/SpaceController?command=ADMIN_SPACE&space_id=<%=it.getOrderSpaceId()%>"><%=it.getOrderSpaceId()%>
                        </a></td>
                        <td name="space_type"><%
                            switch (it.getOrderSpaceType()) {
                                case 1:
                                    out.print("小型车位");
                                    break;
                                case 2:
                                    out.print("大型车位");
                                    break;
                            }
                        %></td>
                        <td name="order_start"><%=it.getOrderStart()%>
                        </td>
                        <td name="order_end"><%
                            if (it.getOrderEnd().toString().equals("1899-12-31")) {
                                out.print("未结束");
                            } else {
                                out.print(it.getOrderEnd());
                            }
                        %></td>
                        <td name="order_price"><%
                            if (it.getOrderPrice() == -1) {
                                out.print("未出账");
                            } else {
                                out.print(it.getOrderPrice());
                            }
                        %></td>
                        <%
                            switch (it.getOrderStatus()) {
                                case 0: %>
                        <td name="order_status"><span class="label label-danger">已取消</span></td>
                        <%
                                break;
                            case 1:
                        %>
                        <td name="order_status"><span class="label label-success">已完成</span></td>
                        <%
                                break;
                            case 2:
                        %>
                        <td name="order_status"><span class="label label-warning">正在进行中</span></td>
                        <%
                                    break;
                            }
                        %>
                        <td>
                            <div class="btn-group">
                                <button type="button" class="btn btn-primary finishOrder">完成订单</button>
                                <button type="button" class="btn btn-primary cancelOrder">取消订单</button>
                            </div>
                        </td>
                    </tr>
                    <%
                        }
                    %>
                    </tbody>
                </table>
            </div>

            <div id="loadOrdersList">
                <table id="ordersTable" class="table table-small-font table-bordered table-striped"
                       cellspacing="0" width="100%">
                    <thead>
                    <tr>
                        <th>车辆ID</th>
                        <th data-priority="3">车辆提供者</th>
                        <th data-priority="3">品牌</th>
                        <th data-priority="3">车系</th>
                        <th data-priority="3">车座</th>
                        <th data-priority="3">评分/用户数</th>
                        <th data-priority="3">金额/天</th>
                        <th data-priority="4">开始时间</th>
                        <th data-priority="4">结束时间</th>
                        <th data-priority="3">车辆状态</th>
                        <th data-priority="2">操作</th>
                    </tr>
                    </thead>
                    <tfoot>
                    <tr>
                        <th>车辆ID</th>
                        <th>车辆提供者</th>
                        <th>品牌</th>
                        <th>车系</th>
                        <th>车座</th>
                        <th>评分/用户数</th>
                        <th>金额/天</th>
                        <th>开始时间</th>
                        <th>结束时间</th>
                        <th>车辆状态</th>
                        <th>操作</th>
                    </tr>
                    </tfoot>
                    <tbody>
                    <%
                        List<CarAvailability> carAvailabilityList = (List<CarAvailability>) request.getAttribute("nowCarAva");
                        for (CarAvailability item : carAvailabilityList) {
                    %>
                    <tr>
                        <td name="car_id"><%=item.getCarId()%>
                        </td>
                        <td>
                            <a href="/UserController?command=ADMIN_USER&user_name=<%=item.getCarOwner()%>"><%=item.getCarOwner()%>
                            </a></td>
                        <td><%=item.getCarBrand()%>
                        </td>
                        <td><%=item.getCarType()%>
                        </td>
                        <td><%=item.getCarSeat()%>
                        </td>
                        <td>
                            <%
                                out.print(item.getCarRating());
                                out.print("  /  ");
                                out.print(item.getCarCustomer());
                            %>
                        </td>
                        <td><%=item.getCarPriceDaily()%>
                        </td>
                        <td>
                            <%
                                if (item.getCarDateStart() == null) {
                                    out.print("无最后下单时间");
                                } else {
                                    out.print(item.getCarDateStart());
                                }
                            %>
                        </td>
                        <td>
                            <%
                                if (item.getCarDateEnd() == null) {
                                    out.print("无最后下单时间");
                                } else {
                                    out.print(item.getCarDateEnd());
                                }
                            %>
                        </td>
                        <%
                            switch (item.getCarStatus()) {
                                case 0:%>
                        <td name="car_status"><span class="label label-danger">已过期</span></td>
                        <%
                                break;
                            case 1:%>
                        <td><span class="label label-success">可使用</span></td>
                        <%
                                    break;
                            }
                        %>
                        <td>
                            <div class="btn-group">
                                <button type="button" class="btn btn-primary  cancelCar">删除</button>
                            </div>
                        </td>
                    </tr>

                    <%
                        }
                    %>
                    </tbody>
                </table>

            </div>

            <%--<div id="paymentList">--%>
                <%--<div class="dashboardBoxBg mt30">--%>
                    <%--<div class="profileIntro">--%>
                        <%--<h2>Your PaymentList</h2>--%>
                        <%--<p>There are many variations of passages of Lorem Ipsum available, but the majority have--%>
                            <%--suffered alteration in some form Ipsum available.</p>--%>
                    <%--</div>--%>
                <%--</div>--%>
            <%--</div>--%>

            <%--<div class="col-xs-12">  <!--right-->--%>
            <form>
                <div class="dashboardBoxBg mt30">
                    <div class="profileIntro">
                        <h3>个人中心</h3>
                        <%
                            User user = (User) request.getAttribute("nowUser");
                        %>
                        <div class="row">
                            <div class="form-group col-sm-6 col-xs-12">
                                <label for="nameProfile">用户姓名</label>
                                <input type="text" class="form-control" id="nameProfile" placeholder="Jane"
                                       disabled="disabled" style="background-color: white; color:gray(0,0)"
                                       value="<%=user.getUserName()%>">
                            </div>
                            <div class="form-group col-sm-6 col-xs-12">
                                <label for="phoneProfile">联系方式</label>
                                <input type="text" class="form-control" id="phoneProfile" placeholder="Doe"
                                       value="<%=user.getUserCell()%>"
                                       disabled="disabled" style="background-color: white; color:gray(0,0)">
                            </div>
                            <div class="form-group col-sm-6 col-xs-12">
                                <label for="psdProfile">用户密码</label>
                                <input type="password" class="form-control" id="psdProfile"
                                       value="<%=user.getUserPsw()%>"
                                       disabled="disabled" style="background-color: white; color:gray(0,0)">
                            </div>
                            <div class="form-group col-sm-6 col-xs-12">
                                <label for="emailProfile">邮箱地址</label>
                                <input type="text" class="form-control" id="emailProfile"
                                       value="<%=user.getUserEmail()%>"
                                       disabled="disabled" style="background-color: white; color:gray(0,0)">
                            </div>
                            <div class="form-group col-sm-6 col-xs-12">
                                <label for="lastLogin">最后登录时间</label>
                                <input type="text" class="form-control" id="lastLogin"
                                       value="<%=user.getUserLastSeen()%>"
                                       disabled="disabled" style="background-color: white;color:gray(0,0)">
                            </div>
                            <div class="form-group col-sm-6 col-xs-12">
                                <label for="balance">用户余额</label>
                                <input type="text" class="form-control" id="balance"
                                       value="<%=user.getUserBalance()%>"
                                       disabled="disabled" style="background-color: white;color:gray(0,0)">
                            </div>
                            <div class="form-group col-xs-12">
                                <label for="tag">个人签名</label>
                                <textarea class="form-control" rows="2" id="tag"
                                          placeholder="HC爱你哟"></textarea>
                            </div>
                            <div class="form-group col-xs-12">
                                <button class="btn btn-primary" type="button" >确认修改</button>
                                <button id="loginOut" class="btn btn-primary" type="button" style="margin-left:76%">注销用户</button>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="btn-area mt30">
                    <%--<button class="btn btn-primary" type="button">Save Change</button>--%>
                </div>
            </form>

        </div>
    </section>
</div>

<%@include file="/templates/loginModal.jsp" %>
<%@include file="/templates/footers.jsp" %>

<div class="modal fade" tabindex="-1" role="dialog" id="carOrderModal" style="padding-top: 10%">
    <div class="modal-dialog" role="document">
        <div class="modal-content" style="height: 320px;width: 675px;">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span>
                </button>
                <h4 class="modal-title">编辑租车订单</h4>
            </div>
            <div class="modal-body">
                <div style="padding-left: 20px;padding-right: 20px">
                    <div class="input-group input-group-sm"
                         style="padding-bottom: 30px;padding-right: 20px;float:left;width: 300px">
                        <span class="input-group-addon" style="width: 80px">订单ID：&nbsp&nbsp</span>
                        <input type="text" class="form-control" disabled="disabled" id="modalCarOrderId"
                               style="background-color: white; color:dimgrey">
                    </div>

                    <div class="input-group input-group-sm"
                         style="width: 300px;padding-bottom: 30px;padding-left: 20px">
                        <span class="input-group-addon" style="width: 80px">订单金额：</span>
                        <input type="text" class="form-control" placeholder="请输入订单金额" id="modalCarOrderPrice">
                    </div>
                </div>

                <div style="padding-left: 20px;padding-right: 20px">
                    <div class="input-group input-group-sm"
                         style="padding-bottom: 30px;padding-right: 20px;float:left;width: 300px">
                        <span class="input-group-addon" style="width: 80px">订单发布：</span>
                        <input type="text" class="form-control" disabled="disabled" id="modalCarOrderPost"
                               style="background-color: white; color:dimgrey">
                    </div>

                    <div class="input-group input-group-sm"
                         style="width: 300px;padding-bottom: 30px;padding-left: 20px">
                        <span class="input-group-addon" style="width: 80px">订单顾客：</span>
                        <input type="text" class="form-control" disabled="disabled" id="modalCarOrderTaker"
                               style="background-color: white; color:dimgrey">
                    </div>
                </div>

                <div style="padding-left: 20px;padding-right: 20px">
                    <div class="input-group input-group-sm" style="padding-right: 20px;float:left;width: 300px">
                        <span class="input-group-addon" style="width: 80px">开始时间：</span>
                        <input type="text" class="form-control" disabled="disabled" id="modalCarOrderStart"
                               style="background-color: white; color:dimgrey">
                    </div>

                    <div class="input-group input-group-sm" style="width: 300px;padding-left: 20px">
                        <span class="input-group-addon" style="width: 80px">结束时间：</span>
                        <input type="text" class="form-control" disabled="disabled" id="modalCarOrderEnd"
                               style="background-color: white; color:dimgrey">
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-primary" style="width: 70px" id="modalReset">重置</button>
                <button type="button" class="btn btn-primary" style="width: 70px" id="modalConfirm">确认</button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div><!-- /.modal -->

<script>
    $(document).ready(function () {
        $("#carRentalOrdersList").show();
        $("#parkingOrdersList").hide();
        $("#loadOrdersList").hide();
        // $("#paymentList").hide();
    });

    function changeCarRentalOrders() {
        $("#carRentalOrders").addClass("active");
        $("#parkingOrders").removeClass("active");
        $("#loadOrders").removeClass("active");
        // $("#payment").removeClass("active");
        $("#carRentalOrdersList").show();
        $("#parkingOrdersList").hide();
        $("#loadOrdersList").hide();
        // $("#paymentList").hide();
        window.location.hash = "#infoTable";
//        alert("mmm");
        // $("#userNavBar li").each(function(){
        // if ($this().attr("class") == "active")
        //   alert($(this).attr("id"));
        //  });
    }

    function changeParkingOrders() {
        $("#carRentalOrders").removeClass("active");
        $("#parkingOrders").addClass("active");
        $("#loadOrders").removeClass("active");
        // $("#payment").removeClass("active");
        $("#carRentalOrdersList").hide();
        $("#parkingOrdersList").show();
        $("#loadOrdersList").hide();
        // $("#paymentList").hide();
    }

    function changeLoadOrdrt() {
        $("#carRentalOrders").removeClass("active");
        $("#parkingOrders").removeClass("active");
        $("#loadOrders").addClass("active");
        // $("#payment").removeClass("active");
        $("#carRentalOrdersList").hide();
        $("#parkingOrdersList").hide();
        $("#loadOrdersList").show();
        // $("#paymentList").hide();
    }

    // function changePayment() {
    //     $("#carRentalOrders").removeClass("active");
    //     $("#parkingOrders").removeClass("active");
    //     $("#loadOrders").removeClass("active");
    //     // $("#payment").addClass("active");
    //     $("#carRentalOrdersList").hide();
    //     $("#parkingOrdersList").hide();
    //     $("#loadOrdersList").hide();
    //     // $("#paymentList").show();
    // }

    $("#loginOut").click(function () {
    });
</script>
</body>
</html>
