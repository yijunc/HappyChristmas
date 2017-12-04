<%--
  Created by IntelliJ IDEA.
  User: cyj970209
  Date: 2017/12/3
  Time: 下午8:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"
         pageEncoding="utf-8" %>

<header id="pageTop" class="header">

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
                    <a class="navbar-brand" href="index.jsp"><img src="img/logo-blue.png" alt="logo"></a>
                </div>

                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse navbar-ex1-collapse">
                    <ul class="nav navbar-nav navbar-right">
                        <li class=""><a href="index.jsp">网站主页 </a></li>
                        <li class=""><a href="#">租车信息 </a></li>
                        <li class=""><a href="#">车位信息 </a></li>
                        <li class=""><a href="#">新闻中心 </a></li>
                        <li class=" dropdown singleDrop">
                            <a href="javascript:void(0)" class="dropdown-toggle" data-toggle="dropdown"
                               role="button" aria-haspopup="true" aria-expanded="false">管理员网站管理 <i
                                    class="fa fa-angle-down" aria-hidden="true"></i></a>
                            <ul class="dropdown-menu dropdown-menu-right">
                                <li><a href="dashboard.html">Dashboard</a></li>
                                <li><a href="add-listings.html">Add Listing</a></li>
                                <li><a href="edit-listings.html">Edit Listing</a></li>
                                <li><a href="listings.html">My Listings</a></li>
                                <li><a href="profile.html">My Profile</a></li>
                                <li><a href="oders.html">My Orders</a></li>
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
</header>
