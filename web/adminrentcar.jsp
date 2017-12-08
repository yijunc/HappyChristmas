<%--
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
    <title>车位信息与订单管理</title>
</header>

<body class="body-wrapper">
<div class="page-loader" style="background: url(img/preloader.gif) center no-repeat #fff;"></div>
<div class="main-wrapper">
    <header id="pageTop" class="header">
        <%@include file="templates/navbars.jsp" %>
        <%@include file="templates/adminnavbar.jsp" %>
    </header>

    <!-- DASHBOARD ORDERS SECTION -->
    <section class="clearfix bg-dark dashboardOrders">
        <div class="container">
            <div class="row">
                <div class="col-xs-12">
                    <div class="dashboardPageTitle text-center">
                        <h2>网站车辆租赁出租订单管理</h2>
                    </div>
                    <div class="dashboardBoxBg mb30">
                        <div class="profileIntro">
                            <div class="row">
                                <div class="form-group col-md-4 col-sm-6 col-xs-12">
                                    <label for="orderId">订单ID</label>
                                    <input type="text" class="form-control" id="orderId" placeholder="Order ID">
                                </div>
                                <div class="form-group col-md-4 col-sm-6 col-xs-12">
                                    <label for="customer">订单顾客名</label>
                                    <input type="text" class="form-control" id="customer" placeholder="Customer">
                                </div>
                                <div class="form-group col-md-4 col-sm-6 col-xs-12">
                                    <label for="customer">订单发布者</label>
                                    <input type="text" class="form-control" id="customer" placeholder="Customer">
                                </div>

                                <div class="form-group col-md-4 col-sm-6 col-xs-12">
                                    <label for="dateAdded">订单下单时间</label>
                                    <div class="dateSelect">
                                        <div class="input-group date ed-datepicker filterDate"
                                             data-provide="datepicker">
                                            <input type="text" class="form-control" placeholder="mm/dd/yyyy">
                                            <div class="input-group-addon">
                                                <i class="icon-listy icon-calendar"></i>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group col-md-4 col-sm-6 col-xs-12">
                                    <label for="dateModified">订单开始时间</label>
                                    <div class="dateSelect">
                                        <div class="input-group date ed-datepicker filterDate"
                                             data-provide="datepicker">
                                            <input type="text" class="form-control" placeholder="mm/dd/yyyy">
                                            <div class="input-group-addon">
                                                <i class="icon-listy icon-calendar"></i>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group col-md-4 col-sm-6 col-xs-12">
                                    <label for="dateModified">订单完成时间</label>
                                    <div class="dateSelect">
                                        <div class="input-group date ed-datepicker filterDate"
                                             data-provide="datepicker">
                                            <input type="text" class="form-control" placeholder="mm/dd/yyyy">
                                            <div class="input-group-addon">
                                                <i class="icon-listy icon-calendar"></i>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="form-group col-md-4 col-sm-6 col-xs-12">
                                    <label for="orderStatus">订单状态</label>
                                    <input type="text" class="form-control" id="orderStatus" placeholder="做成选择">
                                </div>
                                <div class="form-group col-md-4 col-sm-6 col-xs-12" style="padding-top: 2.3%;">
                                    <button type="submit" class="btn btn-primary btn-lg" onclick="setCookie()">&nbsp;&nbsp;<i
                                            class="fa fa-search" aria-hidden="true"></i>搜索&nbsp;&nbsp;
                                    </button>
                                    <button type="button" class="btn btn-primary btn-lg">&nbsp;&nbsp;<i
                                            class="fa fa-circle-o" aria-hidden="true"></i>清空&nbsp;&nbsp;
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-xs-12">
                    <div class="table-responsive bgAdd" data-pattern="priority-columns">
                        <table id="ordersTable" class="table table-small-font table-bordered table-striped"
                               cellspacing="0" width="100%">
                            <thead>
                            <tr>
                                <th>订单ID</th>
                                <th data-priority="">订单顾客名</th>
                                <th data-priority="">订单发布者</th>
                                <th data-priority="3">订单金额</th>
                                <th data-priority="2">订单下单时间</th>
                                <th data-priority="6">订单开始时间</th>
                                <th data-priority="6">订单结束时间</th>
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
                                <th>订单状态</th>
                                <th>操作</th>
                            </tr>
                            </tfoot>
                            <tbody>
                            <tr>
                                <td>2475</td>
                                <td>Tiger Nixon</td>
                                <td>$700</td>
                                <td>12/12/2017</td>
                                <td>12/12/2017</td>
                                <td>15/12/2017</td>
                                <td><span class="label label-warning">Pending</span></td>
                                <td>
                                    <div class="btn-group">
                                        <button type="button" class="btn btn-primary">View</button>
                                        <button type="button" class="btn btn-primary">Edit</button>
                                        <button type="button" class="btn btn-primary">Delete</button>
                                    </div>
                                </td>
                            </tr>
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
