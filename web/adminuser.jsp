<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/12/4
  Time: 21:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<html>
<%@include file="templates/headers.jsp" %>

<header>
    <title>用户管理</title>
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
                        <h2>网站用户管理</h2>
                    </div>
                    <div class="dashboardBoxBg mb30">
                        <div class="profileIntro">
                            <div class="row">
                                <div class="form-group col-md-4 col-sm-6 col-xs-12">
                                    <label for="orderId">用户ID</label>
                                    <input type="text" class="form-control" id="orderId" placeholder="请输入用户ID">
                                </div>
                                <div class="form-group col-md-4 col-sm-6 col-xs-12">
                                    <label for="orderStatus">用户状态</label>
                                    <div class="contactSelect">
                                        <select name="orderStatus" id="orderStatus" class="select-drop">
                                            <option value="0">状态0</option>
                                            <option value="1">状态1</option>
                                            <option value="2">状态2</option>
                                            <option value="3">状态3</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group col-md-4 col-sm-6 col-xs-12">
                                    <label for="customer">用户名</label>
                                    <input type="text" class="form-control" id="customer" placeholder="请输入用户名">
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

                        <div class="col-xs-12"><!--用户管理-->
                            <div class="table-responsive bgAdd" data-pattern="priority-columns">
                                <table id="ordersTable" class="table table-small-font table-bordered table-striped"
                                       cellspacing="0" width="100%">
                                    <thead>
                                    <tr>
                                        <th>用户ID</th>
                                        <th data-priority="">用户姓名</th>
                                        <th data-priority="2">用户等级</th>
                                        <th data-priority="3">用户状态</th>
                                        <th data-priority="6">上次登陆时间</th>
                                        <th data-priority="6">用户收支</th>
                                        <th data-priority="3">用户状态</th>
                                        <th data-priority="2">操作</th>
                                    </tr>
                                    </thead>
                                    <tfoot>
                                    <tr>
                                        <th>用户ID</th>
                                        <th data-priority="">用户姓名</th>
                                        <th data-priority="2">用户信用</th>
                                        <th data-priority="3">用户电话</th>
                                        <th data-priority="6">上次登陆时间</th>
                                        <th data-priority="6">用户收支</th>
                                        <th data-priority="3">用户状态</th>
                                        <th data-priority="2">操作</th>
                                    </tr>
                                    </tfoot>
                                    <tbody>
                                    <tr>
                                        <td>2475</td>
                                        <td>阿爸很欣慰</td>
                                        <td>100</td>
                                        <td>18877665533</td>
                                        <td>12/12/2017</td>
                                        <td>¥222.00</td>
                                        <td><span class="label label-warning">Pending</span></td>
                                        <td>
                                            <div class="btn-group">
                                                <button type="button" class="btn btn-primary">View</button>
                                                <button type="button" class="btn btn-primary">Edit</button>
                                                <button type="button" class="btn btn-primary">Delete</button>
                                            </div>
                                        </td>
                                    </tr>
                                    <% for (int fontSize = 1; fontSize <= 50; fontSize++) { %>
                                    <tr>
                                        <td>2475</td>
                                        <td>阿爸很欣慰</td>
                                        <td>100</td>
                                        <td>18877665533</td>
                                        <td>12/12/2017</td>
                                        <td>¥222.00</td>
                                        <td><span class="label label-warning">Pending</span></td>
                                        <td>
                                            <div class="btn-group">
                                                <button type="button" class="btn btn-primary">View</button>
                                                <button type="button" class="btn btn-primary">Edit</button>
                                                <button type="button" class="btn btn-primary">Delete</button>
                                            </div>
                                        </td>
                                    <%}%>
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