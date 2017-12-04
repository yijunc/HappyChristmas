<%--
  Created by IntelliJ IDEA.
  User: cyj970209
  Date: 2017/12/3
  Time: 下午8:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" %>


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
                            <li><a href="rentcar.jsp">我要租车-查询车辆信息</a></li>
                            <li><a href="addcar.jsp">我要出租-填写车辆信息</a></li>
                        </ul>
                    </li>
                    <li class=""><a href="rentspace.jsp">车位信息 </a></li>
                    <li class=""><a href="news.jsp">新闻中心 </a></li>
                    <li class=" dropdown singleDrop">
                        <a href="javascript:void(0)" class="dropdown-toggle" data-toggle="dropdown"
                           role="button" aria-haspopup="true" aria-expanded="false">管理员网站管理 <i
                                class="fa fa-angle-down" aria-hidden="true"></i></a>
                        <ul class="dropdown-menu dropdown-menu-right">
                            <li><a href="admindashboard.jsp">管理主页</a></li>
                            <li><a href="adminrentcar.jsp">租车信息与订单管理</a></li>
                            <li><a href="adminrentspace.jsp">车位信息与订单管理</a></li>
                            <li><a href="adminuser.jsp">用户管理</a></li>
                            <li><a href="adminnews.jsp">新闻发布与评论管理</a></li>
                        </ul>
                    </li>
                </ul>
                <button class="btn btn-default navbar-btn" type="button" data-toggle="modal"
                        data-target="#loginModal"><i class="fa fa-user fa-lg" aria-hidden="true"></i>
                    <span>用户登录</span>
                </button>

            </div>

        </div>
    </nav>
</div>
