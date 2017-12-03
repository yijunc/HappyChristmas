<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/11/30
  Time: 16:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"
         pageEncoding="utf-8" %>
<html>
<head>

    <!-- SITE TITTLE -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- PLUGINS CSS STYLE -->
    <link href="plugins/jquery-ui/jquery-ui.min.css" rel="stylesheet">
    <link href="plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <link href="plugins/listtyicons/style.css" rel="stylesheet">
    <link href="plugins/bootstrapthumbnail/bootstrap-thumbnail.css" rel="stylesheet">
    <link href="plugins/datepicker/datepicker.min.css" rel="stylesheet">
    <link href="plugins/selectbox/select_option1.css" rel="stylesheet">
    <link href="plugins/owl-carousel/owl.carousel.min.css" rel="stylesheet">
    <link href="plugins/fancybox/jquery.fancybox.pack.css" rel="stylesheet">
    <link href="plugins/isotope/isotope.min.css" rel="stylesheet">
    <link href="plugins/map/css/map.css" rel="stylesheet">

    <!-- CUSTOM CSS -->
    <link href="css/style.css" rel="stylesheet">

    <!-- FAVICON -->
    <link href="img/favicon.png" rel="shortcut icon">
</head>

<head>
    <title>用户登录</title>
</head>

<body class="body-wrapper">
<div class="page-loader" style="background: url(img/preloader.gif) center no-repeat #fff;"></div>
<div class="main-wrapper">
    <!-- HEADER -->
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
                        <button type="button" class="navbar-toggle" data-toggle="collapse"
                                data-target=".navbar-ex1-collapse">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <a class="navbar-brand" href="index.html"><img src="img/logo-blue.png" alt="logo"></a>
                    </div>

                    <!-- Collect the nav links, forms, and other content for toggling -->
                    <div class="collapse navbar-collapse navbar-ex1-collapse">
                        <ul class="nav navbar-nav navbar-right">
                            <li class=" dropdown singleDrop">
                                <a href="" class="dropdown-toggle" data-toggle="dropdown" role="button"
                                   aria-haspopup="true" aria-expanded="false">home <i class="fa fa-angle-down"
                                                                                      aria-hidden="true"></i></a>
                                <ul class="dropdown-menu dropdown-menu-right">
                                    <li><a href="index.html">Map Version</a></li>
                                    <li><a href="index-2.html">Travel Version</a></li>
                                    <li><a href="index-3.html">Automobile Version</a></li>
                                </ul>
                            </li>
                            <li class=" dropdown megaDropMenu">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button"
                                   aria-haspopup="true" aria-expanded="false">Listing <i class="fa fa-angle-down"
                                                                                         aria-hidden="true"></i></a>
                                <ul class="row dropdown-menu">
                                    <li class="col-sm-4 col-xs-12">
                                        <ul class="list-unstyled">
                                            <li><h5>listing Grids</h5></li>
                                            <li><a href="category-grid.html">Listing Grid Left</a></li>
                                            <li><a href="category-grid-right.html">Listing Grid Right</a></li>
                                            <li><a href="category-grid-full.html">Listing Grid Fullwidth</a></li>
                                            <li><h5>listing lists</h5></li>
                                            <li><a href="category-list-left.html">Listing list Left</a></li>
                                            <li><a href="category-list-right.html">Listing list Right</a></li>
                                            <li><a href="category-list-full.html">Listing list Full</a></li>
                                        </ul>
                                    </li>
                                    <li class="col-sm-4 col-xs-12">
                                        <ul class="list-unstyled">
                                            <li><h5>listing Sidebar Map</h5></li>
                                            <li><a href="listing-sidebar-map-left.html">Listing Sidebar Map left</a>
                                            </li>
                                            <li><a href="listing-sidebar-map-right.html">Listing Sidebar Map right</a>
                                            </li>
                                            <li><a href="listing-sidebar-map-full.html">Listing Sidebar Map Full</a>
                                            </li>
                                            <li><h5>listing Details</h5></li>
                                            <li><a href="listing-details-left.html">Listing Details Left</a></li>
                                            <li><a href="listing-details-right.html">Listing Details Right</a></li>
                                            <li><a href="listing-details-full.html">Listing Details Full</a></li>
                                        </ul>
                                    </li>
                                    <li class="col-sm-4 col-xs-12">
                                        <ul class="list-unstyled">
                                            <li class="mega-img">
                                                <a href=""><img src="img/works/works-big-3.png" alt=""></a>
                                            </li>
                                        </ul>
                                    </li>
                                </ul>
                            </li>
                            <li class="active dropdown singleDrop">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button"
                                   aria-haspopup="true" aria-expanded="false">pages <i class="fa fa-angle-down"
                                                                                       aria-hidden="true"></i></a>
                                <ul class="dropdown-menu dropdown-menu-left">
                                    <li><a href="contact-us.html">Contact Us</a></li>
                                    <li><a href="terms-of-services.html">Terms and Conditions</a></li>
                                    <li><a href="sign-up.html">Create Account</a></li>
                                    <li><a href="login.html">Login</a></li>
                                    <li><a href="pricing-table.html">Pricing</a></li>
                                    <li><a href="payment-process.html">Payment</a></li>
                                    <li><a href="how-it-works.html">How It Works</a></li>
                                </ul>
                            </li>
                            <li class=""><a href="blog.html">blog </a></li>
                            <li class=" dropdown singleDrop">
                                <a href="javascript:void(0)" class="dropdown-toggle" data-toggle="dropdown"
                                   role="button" aria-haspopup="true" aria-expanded="false">admin <i
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
                    </div>
                    <button class="btn btn-default navbar-btn" type="button" data-toggle="modal"
                            data-target="#loginModal"> + <span>Add Listing</span></button>
                </div>
            </nav>
        </div>
    </header>

    <!-- LOGIN SECTION -->

    <style type="text/css">
        .panel-body .fa {
            margin-left: 4%;
            margin-top: 7%;
        }
    </style>

    <section class="clearfix loginSection">
        <div class="container">
            <div class="row">
                <div class="center-block col-md-5 col-sm-6 col-xs-12">
                    <div class="panel panel-default loginPanel">
                        <div class="panel-heading text-center">用户登录</div>
                        <div class="panel-body">
                            <form class="loginForm" action="/UserController" method="post">
                                <input type="hidden" name="command" value="LOGIN"/>
                                <div class="form-group">
                                    <label for="user_name">用户名：</label>
                                    <i class="fa fa-user fa-lg" aria-hidden="true"></i>
                                    <input type="text" class="form-control" id="user_name">
                                    <p class="help-block">请输入你的用户名</p>
                                </div>
                                <div class="form-group">
                                    <label for="user_psw">密码：</label>
                                    <i class="fa fa-lock fa-lg" aria-hidden="true"></i>
                                    <input type="password" class="form-control" id="user_psw">
                                    <p class="help-block">请输入当前用户名所对应的密码</p>
                                </div>

                                <div class="form-group">
                                    <button type="submit" class="btn btn-primary">登录</button>
                                    <a href="#" class="pull-right link">忘记密码?</a>
                                </div>
                            </form>
                        </div>
                        <div class="panel-footer text-center">
                            <p>还没有账号？<a href="/register.jsp" class="link">注册新用户</a></p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <%@include file="/templates/loginModal.jsp" %>
    <%@include file="/templates/footers.jsp" %>

</body>
</html>
