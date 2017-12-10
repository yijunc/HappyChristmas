<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/12/4
  Time: 21:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>

<%
    if(currentUser == null || !currentUser.isUserAdmin()){
        session.setAttribute("is_authorized", false);
        response.sendRedirect("login.jsp");
    }
%>

<div class="navbar-dashboard-area">
    <nav class="navbar navbar-default lightHeader navbar-dashboard" role="navigation">
        <div class="container">

            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-dash">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse navbar-dash">
                <ul class="nav navbar-nav mr0">
                    <li class="active">
                        <a href="adminDashboard.jsp"><i class="fa fa-tachometer" aria-hidden="true"></i>
                            管理主页</a>
                    </li>
                    <li class="">
                        <a href="/CarOrderController?command=ADMIN_CAR_ORDER"><i class="fa fa-list-ul" aria-hidden="true"></i></i></i>
                            租车订单管理</a>
                    </li>
                    <li class="">
                        <a href="adminRentSpace.jsp"><i class="fa fa-product-hunt" aria-hidden="true"></i>
                            车位订单管理</a>
                    </li>
                    <li class="">
                        <a href="/UserController?command=ADMIN_USER"><i class="fa fa-user" aria-hidden="true"></i>
                            用户管理</a>
                    </li>
                    <li class="">
                        <a href="/CarAvailabilityController?command=ADMIN_CAR_AVAILABILITY"><i class="fa fa-car" aria-hidden="true"></i>
                            车辆信息管理</a>
                    </li>
                    <li class="">
                        <a href=""><i class="fa fa-building icon-dash" aria-hidden="true"></i></i>
                            车库管理</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
</div>
