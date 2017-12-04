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
                        <h2>Blog Page</h2>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- BLOG SECTION -->
    <section class="clearfix">
        <div class="container">
            <div class="row">
                <div class="col-sm-8 col-xs-12">
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
                            <div class="embed-responsive embed-responsive-16by9">
                                <iframe class="embed-responsive-item"
                                        src="https://www.youtube.com/embed/jdMXyXuualc"></iframe>
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
                    <div class="paginationCommon blogPagination">
                        <nav aria-label="Page navigation">
                            <ul class="pagination">
                                <li>
                                    <a href="#" aria-label="Previous">
                      <span aria-hidden="true">
                        <i class="fa fa-angle-left" aria-hidden="true"></i>
                      </span>
                                    </a>
                                </li>
                                <li class="active">
                                    <a href="#">1</a>
                                </li>
                                <li>
                                    <a href="#">2</a>
                                </li>
                                <li>
                                    <a href="#">3</a>
                                </li>
                                <li>
                                    <a href="#">4</a>
                                </li>
                                <li>
                                    <a href="#">5</a>
                                </li>
                                <li>
                                    <a href="#" aria-label="Next">
                      <span aria-hidden="true">
                        <i class="fa fa-angle-right" aria-hidden="true"></i>
                      </span>
                                    </a>
                                </li>
                            </ul>
                        </nav>
                    </div>
                </div>
                <div class="col-sm-4 col-xs-12">
                    <div class="sidebarInner">
                        <div class="input-group">
                            <input type="text" class="form-control" placeholder="Search..."
                                   aria-describedby="basic-addon2">
                            <a href="#" class="input-group-addon" id="basic-addon2">
                                <i class="icon-listy icon-search-2"></i>
                            </a>
                        </div>
                    </div>
                    <div class="sidebarInner">
                        <div class="panel panel-default">
                            <div class="panel-heading">Categories</div>
                            <div class="panel-body">
                                <ul class="list-unstyle categoryList">
                                    <li>
                                        <a href="#">Real Estate
                                            <span class="pull-right">(3)</span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">Automotive
                                            <span class="pull-right">(7)</span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">Healthcare
                                            <span class="pull-right">(12)</span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">Restaurent
                                            <span class="pull-right">(5)</span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">Business
                                            <span class="pull-right">(9)</span>
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="sidebarInner">
                        <div class="panel panel-default">
                            <div class="panel-heading">Recent Posts</div>
                            <div class="panel-body">
                                <ul class="list-unstyle categoryList">
                                    <li>
                                        <a href="#">Curabitur scelerisque lacus sit amet.</a>
                                    </li>
                                    <li>
                                        <a href="#">Morbi pretium ipsum ac massa sollicitu.</a>
                                    </li>
                                    <li>
                                        <a href="#">Etiam eget augue et lorem sagittis.</a>
                                    </li>
                                    <li>
                                        <a href="#">Sed mollis tincidunt massa vel egestas.</a>
                                    </li>
                                    <li>
                                        <a href="#">Aliquam semper dolor nec metus alique.</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="sidebarInner">
                        <div class="panel panel-default">
                            <div class="panel-heading">Archives</div>
                            <div class="panel-body">
                                <ul class="list-unstyle categoryList">
                                    <li>
                                        <a href="#">Jan 2016</a>
                                    </li>
                                    <li>
                                        <a href="#">Feb 2016</a>
                                    </li>
                                    <li>
                                        <a href="#">Mar 2016</a>
                                    </li>
                                    <li>
                                        <a href="#">April 2016</a>
                                    </li>
                                    <li>
                                        <a href="#">May 2016</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
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