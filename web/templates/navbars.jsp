<%@ page import="bean.User" %>
<%--
  Created by IntelliJ IDEA.
  User: cyj970209
  Date: 2017/12/3
  Time: 下午8:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" %>

<%
    Object loggedIn = request.getAttribute("logged_in");
    User currentUser = null;
    boolean hasLoggedIn;
    if (loggedIn != null) {
        session.setAttribute("hasLoggedIn", loggedIn);
        if ((boolean) session.getAttribute("hasLoggedIn")) {
            session.setAttribute("currentUser", request.getAttribute("current_user"));
        }
    }
    if (session.getAttribute("hasLoggedIn") != null) {
        hasLoggedIn = (boolean) session.getAttribute("hasLoggedIn");
        if (hasLoggedIn) {
            currentUser = (User) session.getAttribute("currentUser");
        }
    } else {
        hasLoggedIn = false;
    }
%>
<!-- TOP INFO BAR -->

<div class="nav-wrapper navbarWhite">

    <div class="container-fluid header-bg">
        <div class="row">
            <div class="col-lg-4 col-sm-4 col-xs-6 header-left empty">empty
            </div>
            <div class="col-lg-8 col-sm-8 col-xs-6 header-right empty">empty
            </div>
        </div>
    </div>

    <!-- NAVBAR -->
    <nav id="menuBar" class="navbar navbar-default lightHeader" role="navigation">
        <div class="container">

            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="index.jsp"><img src="img/logo-blue.png" alt="logo"></a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse navbar-ex1-collapse">
                <ul class="nav navbar-nav navbar-right">
                    <li class="active"><a href="index.jsp">网站主页 </a></li>
                    <li class=" dropdown singleDrop">
                        <a href="javascript:void(0)" class="dropdown-toggle" data-toggle="dropdown"
                           role="button" aria-haspopup="true" aria-expanded="false">租车信息 <i
                                class="fa fa-angle-down" aria-hidden="true"></i></a>
                        <ul class="dropdown-menu dropdown-menu-right">
                            <li><a href="/CarAvailabilityController?command=USER_CAR_AVAILABILITY">我要租车-查询车辆信息</a></li>
                            <li><a href="addCar.jsp">我要出租-填写车辆信息</a></li>
                        </ul>
                    </li>
                    <li class=""><a href="rentSpace.jsp">车位信息 </a></li>
                    <li class=""><a href="news.jsp">新闻中心 </a></li>
                    <%
                        if (currentUser != null && currentUser.isUserAdmin()) {
                            out.print("<li class=\" dropdown singleDrop\">\n" +
                                    "                        <a href=\"javascript:void(0)\" class=\"dropdown-toggle\" data-toggle=\"dropdown\"\n" +
                                    "                           role=\"button\" aria-haspopup=\"true\" aria-expanded=\"false\">管理员网站管理 <i\n" +
                                    "                                class=\"fa fa-angle-down\" aria-hidden=\"true\"></i></a>\n" +
                                    "                        <ul class=\"dropdown-menu dropdown-menu-right\">\n" +
                                    "                            <li><a href=\"adminDashboard.jsp\">管理主页</a></li>\n" +
                                    "                            <li><a href=\"/CarOrderController?command=ADMIN_CAR_ORDER\">租车订单管理</a></li>\n" +
                                    "                            <li><a href=\"/SpaceOrderController?command=ADMIN_SPACE_ORDER\">车位订单管理</a></li>\n" +
                                    "                            <li><a href=\"/UserController?command=ADMIN_USER\">用户管理</a></li>\n" +
                                    "                            <li><a href=\"/CarAvailabilityController?command=ADMIN_CAR_AVAILABILITY\">车辆信息管理</a></li>\n" +
                                    "                            <li><a href=\"/SpaceController?command=ADMIN_SPACE\">车库管理</a></li>\n" +
                                    "                        </ul>\n" +
                                    "                    </li>");
                        }
                    %>
                </ul>
                <%
                    if (hasLoggedIn) {
                        out.print("<button class=\"btn btn-default navbar-btn\" type=\"button\"><i class=\"fa fa-user fa-lg\" aria-hidden=\"true\"></i>\n" +
                                "                    <a href=\"profile.jsp\"><span>");
                        out.print("欢迎, ".concat(currentUser.getUserName()));
                        out.print("</span></a>\n" +
                                "                </button>");
                    } else {
                        out.print("<button class=\"btn btn-default navbar-btn\" type=\"button\" data-toggle=\"modal\"\n" +
                                "                        data-target=\"#loginModal\"><i class=\"fa fa-user fa-lg\" aria-hidden=\"true\"></i>\n" +
                                "                    <span>用户登录</span>\n" +
                                "                </button>");
                    }
                %>
            </div>

        </div>
    </nav>
</div>
