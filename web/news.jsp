<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/12/4
  Time: 19:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<html>

<%@include file="templates/headers.jsp" %>

<head>
    <title>新闻中心</title>
</head>

<body class="body-wrapper">
<div class="page-loader" style="background: url(img/preloader.gif) center no-repeat #fff;"></div>
<div class="main-wrapper">

    <header id="pageTop" class="header">
        <%@include file="templates/navbars.jsp" %>
    </header>


    <!-- PAGE TITLE SECTION -->
    <section class="clearfix pageTitleSection bg-image"
             style="background-image: url(img/background/bg-page-title.jpg);">
        <div class="container">
            <div class="row">
                <div class="col-xs-12">
                    <div class="pageTitle">
                        <h2>新闻中心</h2>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- BLOG SECTION -->
    <section class="clearfix">
        <div class="container">
            <div class="row">
                <div class="col-xs-8">
                    <div class="blogInnerWrapper">
                        <div class="thumbnail blogInner">
                            <img src="img/blog/blog-1.jpg" alt="Image blog" class="img-responsive">
                            <div class="caption">
                                <h4>Nov 22, 2016 by
                                    <a href="#">Admin</a>
                                </h4>
                                <h3>
                                    <a href="blog-details.html">Donec id dolor in erat imperdiet.</a>
                                </h3>
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed eiusmod tempor
                                    incididunt labore et dolore
                                    magna aliqua.Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi
                                    ut aliquip ex ea
                                    commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
                                    cillum dolore eu fugiat
                                    nulla pariatur. Excepteur sint occaecat cupidatat non proident. sunt in culpa qui
                                    officia deserunt mollit
                                    anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit
                                    voluptatem </p>
                            </div>
                        </div>
                        <div class="thumbnail blogInner">
                            <div id="blog-carousel-id" class="carousel slide" data-ride="carousel">
                                <div class="carousel-inner">
                                    <div class="item active">
                                        <img src="img/blog/blog-2.jpg" alt="Image blog">
                                    </div>
                                    <div class="item">
                                        <img src="img/blog/blog-1.jpg" alt="Image blog">
                                    </div>
                                </div>
                                <a class="left carousel-control" href="#blog-carousel-id" data-slide="prev">
                                    <i class="icon-listy icon-left-arrow-3"></i>
                                </a>
                                <a class="right carousel-control" href="#blog-carousel-id" data-slide="next">
                                    <i class="icon-listy icon-right-arrow-3"></i>
                                </a>
                            </div>
                            <div class="caption">
                                <h4>Nov 22, 2016 by
                                    <a href="#">Admin</a>
                                </h4>
                                <h3>
                                    <a href="blog-details.html">Donec id dolor in erat imperdiet.</a>
                                </h3>
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed eiusmod tempor
                                    incididunt labore et dolore
                                    magna aliqua.Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi
                                    ut aliquip ex ea
                                    commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
                                    cillum dolore eu fugiat
                                    nulla pariatur. Excepteur sint occaecat cupidatat non proident. sunt in culpa qui
                                    officia deserunt mollit
                                    anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit
                                    voluptatem </p>
                            </div>
                        </div>
                        <div class="thumbnail blogInner">
                            <div class="caption">
                                <h4>Nov 22, 2016 by
                                    <a href="#">Admin</a>
                                </h4>
                                <h3>
                                    <a href="blog-details.html">Donec id dolor in erat imperdiet.</a>
                                </h3>
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed eiusmod tempor
                                    incididunt labore et dolore
                                    magna aliqua.Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi
                                    ut aliquip ex ea
                                    commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
                                    cillum dolore eu fugiat
                                    nulla pariatur. Excepteur sint occaecat cupidatat non proident. sunt in culpa qui
                                    officia deserunt mollit
                                    anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit
                                    voluptatem </p>
                            </div>
                        </div>
                        <div class="thumbnail blogInner">
                            <div class="iframWrapper">
                                <iframe scrolling="no" frameborder="no"
                                        src="https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/273828810&amp;color=ff5500&amp;auto_play=false&amp;hide_related=false&amp;show_comments=true&amp;show_user=true&amp;show_reposts=false"></iframe>
                            </div>
                            <div class="caption">
                                <h4>Nov 22, 2016 by
                                    <a href="#">Admin</a>
                                </h4>
                                <h3>
                                    <a href="blog-details.html">Donec id dolor in erat imperdiet.</a>
                                </h3>
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed eiusmod tempor
                                    incididunt labore et dolore
                                    magna aliqua.Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi
                                    ut aliquip ex ea
                                    commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
                                    cillum dolore eu fugiat
                                    nulla pariatur. Excepteur sint occaecat cupidatat non proident. sunt in culpa qui
                                    officia deserunt mollit
                                    anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit
                                    voluptatem </p>
                            </div>
                        </div>
                        <div class="thumbnail blogInner ">
                            <div class="caption">
                                <h4>Nov 22, 2016 by
                                    <a href="#">Admin</a>
                                </h4>
                                <h3>
                                    <a href="blog-details.html">Donec id dolor in erat imperdiet.</a>
                                </h3>
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed eiusmod tempor
                                    incididunt labore et dolore
                                    magna aliqua.Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi
                                    ut aliquip ex ea
                                    commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
                                    cillum dolore eu fugiat
                                    nulla pariatur. Excepteur sint occaecat cupidatat non proident. sunt in culpa qui
                                    officia deserunt mollit
                                    anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit
                                    voluptatem </p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-xs-4">
                    <div class="sidebarInner">
                        <div class="input-group">
                            <input type="text" class="form-control" placeholder="Search..."
                                   aria-describedby="basic-addon2">
                            <a href="#" class="input-group-addon" id="basic-addon2">
                                <i class="fa fa-search" aria-hidden="true"></i>
                            </a>
                        </div>
                        <button class="btn btn-primary" style="margin: 8px auto;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<i
                                class="fa fa-search" aria-hidden="true"></i>搜索&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        </button>
                        <button class="btn btn-primary" style="margin: 8px auto;">&nbsp;&nbsp;&nbsp;<i
                                class="fa fa-search" aria-hidden="true"></i>添加新新闻&nbsp;&nbsp;&nbsp;
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </section>
</div>
<%@include file="templates/loginModal.jsp" %>
<%@include file="templates/footers.jsp" %>

</body>

</html>