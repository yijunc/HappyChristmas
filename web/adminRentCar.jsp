<%@ page import="bean.CarOrder" %>
<%@ page import="bean.CarOrderSearch" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/12/4
  Time: 21:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<html>
<%@include file="templates/headers.jsp" %>

<header>
    <title>租赁出租订单管理</title>
</header>

<body class="body-wrapper">
<div class="page-loader" style="background: url(img/preloader.gif) center no-repeat #fff;"></div>
<div class="main-wrapper">
    <header id="pageTop" class="header">
        <%@include file="templates/navbars.jsp" %>
        <%@include file="templates/adminNavbar.jsp" %>
    </header>

    <!-- DASHBOARD ORDERS SECTION -->
    <section class="clearfix bg-dark dashboardOrders">
        <div class="container">
            <div class="row">
                <div class="col-xs-12">
                    <div class="dashboardPageTitle text-center">
                        <h2><b>HC</b>租赁出租订单管理</h2>
                    </div>
                    <%
                        Boolean empty = (Boolean) request.getAttribute("empty");
                        List<CarOrder> result = null;
                        if (empty == null) {
                            empty = true;
                        }
                        if (!empty) {
                            CarOrderSearch carOrderSearch = (CarOrderSearch) request.getAttribute("search_input");
                    %>
                    <div class="dashboardBoxBg mb30">
                        <form action="/CarOrderController" method="post" class="row">
                            <input type="hidden" name="command" value="ADMIN_CAR_ORDER">
                            <div class="profileIntro">
                                <div class="form-group col-md-4 col-sm-6 col-xs-12">
                                    <label for="orderID">订单ID</label>
                                    <input type="text" class="form-control" id="orderID" name="order_id"
                                           placeholder="请输入订单ID"
                                        <%if(null!=carOrderSearch.getmId()){%>
                                           value=<%=carOrderSearch.getmId()%>
                                        <%}%>>
                                </div>
                                <div class="form-group col-md-4 col-sm-6 col-xs-12">
                                    <label for="orderTaker">订单顾客名</label>
                                    <input type="text" class="form-control" id="orderTaker" placeholder="请输入用户名"
                                           name="order_taker"
                                        <%if(null!=carOrderSearch.getOrderTaker()){%>
                                           value=<%=carOrderSearch.getOrderTaker()%>
                                        <%}%>>
                                </div>
                                <div class="form-group col-md-4 col-sm-6 col-xs-12">
                                    <label for="orderPoster">订单发布者</label>
                                    <input type="text" class="form-control" id="orderPoster" placeholder="请输入用户名"
                                           name="order_poster"
                                        <%if(null!=carOrderSearch.getOrderPoster()){%>
                                           value=<%=carOrderSearch.getOrderPoster()%>
                                        <%}%>>
                                </div>

                                <div class="form-group col-md-4 col-sm-6 col-xs-12">
                                    <label>订单下单时间</label>
                                    <div class="dateSelect">
                                        <div class="input-group date ed-datepicker filterDate"
                                             data-provide="datepicker">
                                            <input type="text" class="form-control" placeholder="月/日/年"
                                                   name="order_date" id="orderDate"
                                                <%if(null!=carOrderSearch.getOrderDate()){%>
                                                   value=<%=carOrderSearch.getOrderDate()%>
                                                <%}%>>
                                            <div class="input-group-addon">
                                                <i class="fa fa-calendar" aria-hidden="true"></i>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group col-md-4 col-sm-6 col-xs-12">
                                    <label>订单开始时间</label>
                                    <div class="dateSelect">
                                        <div class="input-group date ed-datepicker filterDate"
                                             data-provide="datepicker">
                                            <input type="text" class="form-control" placeholder="月/日/年"
                                                   name="order_start" id="orderStart"
                                                <%if(null!=carOrderSearch.getOrderStart()){%>
                                                   value=<%=carOrderSearch.getOrderStart()%>
                                                <%}%>>
                                            <div class="input-group-addon">
                                                <i class="fa fa-calendar" aria-hidden="true"></i>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group col-md-4 col-sm-6 col-xs-12">
                                    <label>订单完成时间</label>
                                    <div class="dateSelect">
                                        <div class="input-group date ed-datepicker filterDate"
                                             data-provide="datepicker">
                                            <input type="text" class="form-control" placeholder="月/日/年"
                                                   name="order_end" id="orderEnd"
                                                <%if(null!=carOrderSearch.getOrderEnd()){%>
                                                   value=<%=carOrderSearch.getOrderEnd()%>
                                                <%}%>>
                                            <div class="input-group-addon">
                                                <i class="fa fa-calendar" aria-hidden="true"></i>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group col-md-4 col-sm-6 col-xs-12">
                                    <label for="orderCarId">车辆ID</label>
                                    <input type="text" class="form-control" id="orderCarId" placeholder="请输入车辆ID"
                                           name="order_car_id"
                                        <%if(null!=carOrderSearch.getCarId()){%>
                                           value=<%=carOrderSearch.getCarId()%>
                                        <%}%>>
                                </div>
                                <div class="form-group col-md-4 col-sm-6 col-xs-12">
                                    <label for="orderStatus">订单状态</label>
                                    <div class="contactSelect">
                                        <select id="orderStatus" class="select-drop" name="order_status" size="1"
                                                multiple="false">
                                            <option value="all">不限</option>
                                            <option value="1">已完成</option>
                                            <option value="0">已取消</option>
                                            <option value="2">正在进行中</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group col-md-4 col-sm-6 col-xs-12" style="padding-top: 2.3%;">
                                    <button type="button" class="btn btn-primary btn-lg" onclick="rent_car_submit()"><i
                                            class="fa fa-search" aria-hidden="true"></i>搜索
                                    </button>
                                    <script>
                                        function rent_car_submit() {
                                            if (isNaN($("input#orderID").val()))//是数字返回false
                                            {
                                                alert("订单ID请输入数字哦(￣^￣)ゞ");
                                            }
                                            else if (isNaN($("input#orderCarId").val())) {
                                                alert("车辆ID请输入数字哦(￣^￣)ゞ");
                                            }
                                            else {
                                                $("form#carAvailabilitySearchForm").submit();
                                            }
                                        }
                                    </script>
                                    <button type="button" class="btn btn-primary btn-lg" onclick="re_set()"><i
                                            class="fa fa-circle-o" aria-hidden="true"></i>清空
                                    </button>
                                    <script>
                                        function re_set() {
                                            $("input#orderID").val("");
                                            $("input#orderTaker").val("");
                                            $("input#orderPoster").val("");
                                            $("input#orderDate").val("");
                                            $("input#orderStart").val("");
                                            $("input#orderEnd").val("");
                                            $("input#orderCarId").val("");
                                        }
                                    </script>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>

                <p style="height: 0px; padding-top: 10px; padding-left: 2%">共搜索到了<span style="font-weight: bold;">
                    <%
                            result = (List<CarOrder>) request.getAttribute("car_order_list");
                            out.print(result.size());
                        } else {
                            out.print(0);
                        }
                    %></span> 条记录
                </p>

                <div class="col-xs-12">
                    <div class="table-responsive bgAdd" data-pattern="priority-columns">
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
                                for (CarOrder it : result) {
                            %>
                            <tr>
                                <td><%=it.getmId()%>
                                </td>
                                <td>
                                    <a href="/UserController?command=ADMIN_USER&user_name=<%=it.getOrderTaker()%>"><%=it.getOrderTaker()%>
                                    </a></td>
                                <td>
                                    <a href="/UserController?command=ADMIN_USER&user_name=<%=it.getOrderPoster()%>"><%=it.getOrderPoster()%>
                                    </a></td>
                                <td><%=it.getmAmount()%>
                                </td>
                                <td><%=it.getOrderDate()%>
                                </td>
                                <td><%=it.getOrderStart()%>
                                </td>
                                <td><%=it.getOrderEnd()%>
                                </td>
                                <td>
                                    <a href="/CarAvailabilityController?command=ADMIN_CAR_AVAILABILITY&car_id=<%=it.getCarId()%>"><%=it.getCarId()%>
                                    </a></td>
                                <%
                                    switch (it.getmStatus()) {
                                        case 0: %>
                                <td><span class="label label-danger">已取消</span></td>
                                <%
                                        break;
                                    case 1:
                                %>
                                <td><span class="label label-success">已完成</span></td>
                                <%
                                        break;
                                    case 2:
                                %>
                                <td><span class="label label-warning">正在进行中</span></td>
                                <%
                                            break;
                                    }
                                %>
                                <td>
                                    <div class="btn-group">
                                        <button type="button" class="btn btn-primary">修改订单</button>
                                        <button type="button" class="btn btn-primary">完成订单</button>
                                        <button type="button" class="btn btn-primary">取消订单</button>
                                    </div>
                                </td>
                            </tr>
                            <%
                                }
                            %>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </section>
</div>

<%@include file="/templates/loginModal.jsp" %>
<%@include file="/templates/footers.jsp" %>


</body>

</html>
