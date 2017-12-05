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
                        <a href="admindashboard.jsp"><i class="fa fa-tachometer icon-dash" aria-hidden="true"></i>
                            管理主页</a>
                    </li>
                    <li class="">
                        <a href="adminrentcar.jsp"><i class="fa fa-car icon-dash" aria-hidden="true"></i>
                            租车信息与订单管理</a>
                    </li>
                    <li class="">
                        <a href="adminrentspace.jsp"><i class="fa fa-product-hunt icon-dash" aria-hidden="true"></i>
                            车位信息与订单管理</a>
                    </li>
                    <li class="">
                        <a href="adminuser.jsp"><i class="fa fa-user icon-dash" aria-hidden="true"></i>
                            用户管理</a>
                    </li>
                    <li class="">
                        <a href="adminnews.jsp"><i class="fa fa-envelope icon-dash" aria-hidden="true"></i>
                            新闻发布与评论管理</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
</div>
