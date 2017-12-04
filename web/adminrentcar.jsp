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
                        <h2>Orders</h2>
                    </div>
                    <div class="dashboardBoxBg mb30">
                        <div class="profileIntro">
                            <div class="row">
                                <div class="form-group col-md-4 col-sm-6 col-xs-12">
                                    <label for="orderId">Order ID</label>
                                    <input type="text" class="form-control" id="orderId" placeholder="Order ID">
                                </div>
                                <div class="form-group col-md-4 col-sm-6 col-xs-12">
                                    <label for="orderStatus">Order Status</label>
                                    <input type="text" class="form-control" id="orderStatus" placeholder="Order Status">
                                </div>
                                <div class="form-group col-md-4 col-sm-6 col-xs-12">
                                    <label for="customer">Customer</label>
                                    <input type="text" class="form-control" id="customer" placeholder="Customer">
                                </div>
                                <div class="form-group col-md-4 col-sm-6 col-xs-12">
                                    <label for="dateAdded">Date Added</label>
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
                                    <label for="dateModified">Date Modified</label>
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
                                    <label for="amount">Amount</label>
                                    <input type="text" class="form-control" id="amount" placeholder="Amount">
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
                                <th>Order ID</th>
                                <th data-priority="">Customer</th>
                                <th data-priority="2">Amount</th>
                                <th data-priority="6">Date Added</th>
                                <th data-priority="6">Date Modified</th>
                                <th data-priority="3">Status</th>
                                <th data-priority="2">Action</th>
                            </tr>
                            </thead>
                            <tfoot>
                            <tr>
                                <th>Order ID</th>
                                <th>Customer</th>
                                <th>Amount</th>
                                <th>Date Added</th>
                                <th>Date Modified</th>
                                <th>Status</th>
                                <th>Action</th>
                            </tr>
                            </tfoot>
                            <tbody>
                            <tr>
                                <td>2475</td>
                                <td>Tiger Nixon</td>
                                <td>$700</td>
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
                            <tr>
                                <td>2475</td>
                                <td>Tiger Nixon</td>
                                <td>$700</td>
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
                            <tr>
                                <td>2470</td>
                                <td>Tiger Nixon</td>
                                <td>$700</td>
                                <td>12/12/2017</td>
                                <td>15/12/2017</td>
                                <td><span class="label label-success">Active</span></td>
                                <td>
                                    <div class="btn-group">
                                        <button type="button" class="btn btn-primary">View</button>
                                        <button type="button" class="btn btn-primary">Edit</button>
                                        <button type="button" class="btn btn-primary">Delete</button>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td>2471</td>
                                <td>Tiger Nixon</td>
                                <td>$700</td>
                                <td>12/12/2017</td>
                                <td>15/12/2017</td>
                                <td><span class="label label-danger">Canceled</span></td>
                                <td>
                                    <div class="btn-group">
                                        <button type="button" class="btn btn-primary">View</button>
                                        <button type="button" class="btn btn-primary">Edit</button>
                                        <button type="button" class="btn btn-primary">Delete</button>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td>2472</td>
                                <td>Tiger Nixon</td>
                                <td>$700</td>
                                <td>12/12/2017</td>
                                <td>15/12/2017</td>
                                <td><span class="label label-success">Active</span></td>
                                <td>
                                    <div class="btn-group">
                                        <button type="button" class="btn btn-primary">View</button>
                                        <button type="button" class="btn btn-primary">Edit</button>
                                        <button type="button" class="btn btn-primary">Delete</button>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td>2465</td>
                                <td>Tiger Nixon</td>
                                <td>$700</td>
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
                            <tr>
                                <td>2474</td>
                                <td>Tiger Nixon</td>
                                <td>$700</td>
                                <td>12/12/2017</td>
                                <td>15/12/2017</td>
                                <td><span class="label label-success">Active</span></td>
                                <td>
                                    <div class="btn-group">
                                        <button type="button" class="btn btn-primary">View</button>
                                        <button type="button" class="btn btn-primary">Edit</button>
                                        <button type="button" class="btn btn-primary">Delete</button>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td>2461</td>
                                <td>Tiger Nixon</td>
                                <td>$700</td>
                                <td>12/12/2017</td>
                                <td>15/12/2017</td>
                                <td><span class="label label-danger">Canceled</span></td>
                                <td>
                                    <div class="btn-group">
                                        <button type="button" class="btn btn-primary">View</button>
                                        <button type="button" class="btn btn-primary">Edit</button>
                                        <button type="button" class="btn btn-primary">Delete</button>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td>2463</td>
                                <td>Tiger Nixon</td>
                                <td>$700</td>
                                <td>12/12/2017</td>
                                <td>15/12/2017</td>
                                <td><span class="label label-success">Active</span></td>
                                <td>
                                    <div class="btn-group">
                                        <button type="button" class="btn btn-primary">View</button>
                                        <button type="button" class="btn btn-primary">Edit</button>
                                        <button type="button" class="btn btn-primary">Delete</button>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td>2468</td>
                                <td>Tiger Nixon</td>
                                <td>$700</td>
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
                            <tr>
                                <td>2466</td>
                                <td>Tiger Nixon</td>
                                <td>$700</td>
                                <td>12/12/2017</td>
                                <td>15/12/2017</td>
                                <td><span class="label label-success">Active</span></td>
                                <td>
                                    <div class="btn-group">
                                        <button type="button" class="btn btn-primary">View</button>
                                        <button type="button" class="btn btn-primary">Edit</button>
                                        <button type="button" class="btn btn-primary">Delete</button>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td>2457</td>
                                <td>Tiger Nixon</td>
                                <td>$700</td>
                                <td>12/12/2017</td>
                                <td>15/12/2017</td>
                                <td><span class="label label-danger">Canceled</span></td>
                                <td>
                                    <div class="btn-group">
                                        <button type="button" class="btn btn-primary">View</button>
                                        <button type="button" class="btn btn-primary">Edit</button>
                                        <button type="button" class="btn btn-primary">Delete</button>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td>2354</td>
                                <td>Tiger Nixon</td>
                                <td>$700</td>
                                <td>12/12/2017</td>
                                <td>15/12/2017</td>
                                <td><span class="label label-success">Active</span></td>
                                <td>
                                    <div class="btn-group">
                                        <button type="button" class="btn btn-primary">View</button>
                                        <button type="button" class="btn btn-primary">Edit</button>
                                        <button type="button" class="btn btn-primary">Delete</button>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td>2648</td>
                                <td>Tiger Nixon</td>
                                <td>$700</td>
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
                            <tr>
                                <td>2145</td>
                                <td>Tiger Nixon</td>
                                <td>$700</td>
                                <td>12/12/2017</td>
                                <td>15/12/2017</td>
                                <td><span class="label label-success">Active</span></td>
                                <td>
                                    <div class="btn-group">
                                        <button type="button" class="btn btn-primary">View</button>
                                        <button type="button" class="btn btn-primary">Edit</button>
                                        <button type="button" class="btn btn-primary">Delete</button>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td>2874</td>
                                <td>Tiger Nixon</td>
                                <td>$700</td>
                                <td>12/12/2017</td>
                                <td>15/12/2017</td>
                                <td><span class="label label-danger">Canceled</span></td>
                                <td>
                                    <div class="btn-group">
                                        <button type="button" class="btn btn-primary">View</button>
                                        <button type="button" class="btn btn-primary">Edit</button>
                                        <button type="button" class="btn btn-primary">Delete</button>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td>2963</td>
                                <td>Tiger Nixon</td>
                                <td>$700</td>
                                <td>12/12/2017</td>
                                <td>15/12/2017</td>
                                <td><span class="label label-success">Active</span></td>
                                <td>
                                    <div class="btn-group">
                                        <button type="button" class="btn btn-primary">View</button>
                                        <button type="button" class="btn btn-primary">Edit</button>
                                        <button type="button" class="btn btn-primary">Delete</button>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td>2854</td>
                                <td>Tiger Nixon</td>
                                <td>$700</td>
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
                            <tr>
                                <td>2654</td>
                                <td>Tiger Nixon</td>
                                <td>$700</td>
                                <td>12/12/2017</td>
                                <td>15/12/2017</td>
                                <td><span class="label label-success">Active</span></td>
                                <td>
                                    <div class="btn-group">
                                        <button type="button" class="btn btn-primary">View</button>
                                        <button type="button" class="btn btn-primary">Edit</button>
                                        <button type="button" class="btn btn-primary">Delete</button>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td>2185</td>
                                <td>Tiger Nixon</td>
                                <td>$700</td>
                                <td>12/12/2017</td>
                                <td>15/12/2017</td>
                                <td><span class="label label-danger">Canceled</span></td>
                                <td>
                                    <div class="btn-group">
                                        <button type="button" class="btn btn-primary">View</button>
                                        <button type="button" class="btn btn-primary">Edit</button>
                                        <button type="button" class="btn btn-primary">Delete</button>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td>2598</td>
                                <td>Tiger Nixon</td>
                                <td>$700</td>
                                <td>12/12/2017</td>
                                <td>15/12/2017</td>
                                <td><span class="label label-success">Active</span></td>
                                <td>
                                    <div class="btn-group">
                                        <button type="button" class="btn btn-primary">View</button>
                                        <button type="button" class="btn btn-primary">Edit</button>
                                        <button type="button" class="btn btn-primary">Delete</button>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td>2176</td>
                                <td>Tiger Nixon</td>
                                <td>$700</td>
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
                            <tr>
                                <td>2211</td>
                                <td>Tiger Nixon</td>
                                <td>$700</td>
                                <td>12/12/2017</td>
                                <td>15/12/2017</td>
                                <td><span class="label label-success">Active</span></td>
                                <td>
                                    <div class="btn-group">
                                        <button type="button" class="btn btn-primary">View</button>
                                        <button type="button" class="btn btn-primary">Edit</button>
                                        <button type="button" class="btn btn-primary">Delete</button>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td>2323</td>
                                <td>Tiger Nixon</td>
                                <td>$700</td>
                                <td>12/12/2017</td>
                                <td>15/12/2017</td>
                                <td><span class="label label-danger">Canceled</span></td>
                                <td>
                                    <div class="btn-group">
                                        <button type="button" class="btn btn-primary">View</button>
                                        <button type="button" class="btn btn-primary">Edit</button>
                                        <button type="button" class="btn btn-primary">Delete</button>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td>2636</td>
                                <td>Tiger Nixon</td>
                                <td>$700</td>
                                <td>12/12/2017</td>
                                <td>15/12/2017</td>
                                <td><span class="label label-success">Active</span></td>
                                <td>
                                    <div class="btn-group">
                                        <button type="button" class="btn btn-primary">View</button>
                                        <button type="button" class="btn btn-primary">Edit</button>
                                        <button type="button" class="btn btn-primary">Delete</button>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td>2525</td>
                                <td>Tiger Nixon</td>
                                <td>$700</td>
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
                            <tr>
                                <td>2727</td>
                                <td>Tiger Nixon</td>
                                <td>$700</td>
                                <td>12/12/2017</td>
                                <td>15/12/2017</td>
                                <td><span class="label label-success">Active</span></td>
                                <td>
                                    <div class="btn-group">
                                        <button type="button" class="btn btn-primary">View</button>
                                        <button type="button" class="btn btn-primary">Edit</button>
                                        <button type="button" class="btn btn-primary">Delete</button>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td>2929</td>
                                <td>Tiger Nixon</td>
                                <td>$700</td>
                                <td>12/12/2017</td>
                                <td>15/12/2017</td>
                                <td><span class="label label-danger">Canceled</span></td>
                                <td>
                                    <div class="btn-group">
                                        <button type="button" class="btn btn-primary">View</button>
                                        <button type="button" class="btn btn-primary">Edit</button>
                                        <button type="button" class="btn btn-primary">Delete</button>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td>2424</td>
                                <td>Tiger Nixon</td>
                                <td>$700</td>
                                <td>12/12/2017</td>
                                <td>15/12/2017</td>
                                <td><span class="label label-success">Active</span></td>
                                <td>
                                    <div class="btn-group">
                                        <button type="button" class="btn btn-primary">View</button>
                                        <button type="button" class="btn btn-primary">Edit</button>
                                        <button type="button" class="btn btn-primary">Delete</button>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td>2531</td>
                                <td>Tiger Nixon</td>
                                <td>$700</td>
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
