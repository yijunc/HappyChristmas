<%@ page import="java.util.List" %>
<%@ page import="bean.News" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/11/28
  Time: 0:26
  To change this template use File | Settings | File Templates.
--%>

<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<html>
<%@include file="/templates/headers.jsp" %>

<head>
    <title>HAPPY CHRISTMAS主页</title>
</head>
<body class="body-wrapper">
<div class="page-loader" style="background: url(img/preloader.gif) center no-repeat #fff;"></div>
<div class="main-wrapper">
    <header id="pageTop" class="header">
        <%@include file="templates/navbars.jsp" %>
    </header>

    <!-- BANNER SECTION -->
    <section class="clearfix homeBanner" style="background-image: url(img/banner/banner7.jpg);">
        <div class="container">
            <div class="row">
                <div class="col-xs-12">
                    <div class="banerInfo">
                        <h1>租赁. 连接. 分享</h1>
                        <p>『HAPPY CHRISTMAS』连接车主与租客，分享咨询与新闻</p>
                        <%--<form class="form-inline" action="" method="">--%>
                            <%--<div class="form-group">--%>
                                <%--<div class="input-group">--%>
                                    <%--<div class="input-group-addon" style="width: 30%;">查找</div>--%>
                                    <%--<input type="text" class="form-control" id="findItem"--%>
                                           <%--placeholder="输入您想要了解的信息">--%>
                                <%--</div>--%>
                            <%--</div>--%>
                            <%--<div class="form-group">--%>
                                <%--<div class="input-group">--%>
                                    <%--<div class="input-group-addon" style="width: 30%;">类别</div>--%>
                                    <%--<div class="searchSelectboxes">--%>
                                        <%--<select id="" class="select-drop" name="user_status" style="margin-right: 10%">--%>
                                            <%--<option value="">未选择</option>--%>
                                            <%--<option value="1">车辆租赁资讯</option>--%>
                                            <%--<option value="2">车位租赁资讯</option>--%>
                                            <%--<option value="0">新闻资讯</option>--%>
                                        <%--</select>--%>
                                    <%--</div>--%>
                                <%--</div>--%>
                            <%--</div>--%>
                            <%--<button type="submit" class="btn btn-primary">搜索 <i class="fa fa-search"--%>
                                                                                    <%--aria-hidden="true"></i></button>--%>
                        <%--</form>--%>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- INTEREST SECTION -->
    <section class="clearfix interestArea">
        <div class="container">
            <div class="page-header text-center">
                <h2>在这里你能找？
                    <small>『HAPPY CHRISTMAS』提供租车、车位、咨询、分享</small>
                </h2>
            </div>
            <div class="row">
                <div class="col-sm-3 col-xs-12">
                    <a href="/CarAvailabilityController?command=USER_CAR_AVAILABILITY" class="interestContent">
					<span>
						<i class="fa fa-car fa-3x"></i>
						租车分享
					</span>
                    </a>
                </div>
                <div class="col-sm-3 col-xs-12">
                    <a href="/SpaceController?command=USER_SPACE" class="interestContent">
					<span>
						<i class="fa fa-product-hunt fa-3x" aria-hidden="true"></i>
						车位预定
					</span>
                    </a>
                </div>
                <div class="col-sm-3 col-xs-12">
                    <a href="/NewsController?command=NEWS_CENTER" class="interestContent">
					<span>
						<i class="fa fa-newspaper-o fa-3x" aria-hidden="true"></i>
						新闻动态
					</span>
                    </a>
                </div>
                <div class="col-sm-3 col-xs-12">
                    <a class="interestContent">
					<span>
						<i class="fa fa-plus-square-o fa-3x" aria-hidden="true"></i>
						更多内容
					</span>
                    </a>
                </div>
            </div>
        </div>
    </section>

    <!-- COUNT UP SECTION -->
    <section class="clearfix countUpSection">
        <div class="container">
            <div class="page-header text-center">
                <h2>为什么选择 『HAPPY CHRISTMAS』？</h2>
            </div>
            <div class="row">
                <div class="col-sm-3 col-xs-12">
                    <div class="text-center countItem">
                        <div class="counter"><%=request.getAttribute("car_count")%></div>
                        <div class="counterInfo bg-color-1">平台车辆数</div>
                    </div>
                </div>
                <div class="col-sm-3 col-xs-12">
                    <div class="text-center countItem">
                        <div class="counter"><%=request.getAttribute("car_order_count")%></div>
                        <div class="counterInfo bg-color-2">平台车辆租赁订单数</div>
                    </div>
                </div>
                <div class="col-sm-3 col-xs-12">
                    <div class="text-center countItem">
                        <div class="counter"><%=request.getAttribute("space_order_count")%></div>
                        <div class="counterInfo bg-color-3">平台车位租赁订单数</div>
                    </div>
                </div>
                <div class="col-sm-3 col-xs-12">
                    <div class="text-center countItem">
                        <div class="counter"><%=request.getAttribute("user_count")%></div>
                        <div class="counterInfo bg-color-4">平台用户数</div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-xs-12">
                    <div class="btnArea text-center">
                        <a href="register.jsp" class="btn btn-primary">加入我们</a>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- ARTICLES SECTION-->
    <section class="clearfix articlesArea">
        <div class="container">
            <div class="page-header text-center">
                <h2>新闻热点
                    <small>Brouse latest tips from our blog</small>
                </h2>
            </div>
            <div class="row">
                <%
                    List<News> newsList = (List<News>)request.getAttribute("news_list");
                    for(int i = 0 ; i<3 ; i++){%>
                <div class="col-sm-4 col-xs-12">
                    <div class="thumbnail articleContent">
                        <img src="img/news/news<%=newsList.get(i).getNewsId()%>-1.jpg" alt="Image articles" class="img-responsive">
                        <div class="caption">
                            <h4><%=newsList.get(i).getPostDate()%> by <a href="#"><%=newsList.get(i).getPoster()%></a></h4>
                            <h3><a href="/NewsController?command=NEWS_DETAIL&news_id=<%=newsList.get(i).getNewsId()%>"><%=newsList.get(i).getTitle()%></a></h3>
                            <p><%=newsList.get(i).getBrief()%></p>
                        </div>
                    </div>
                </div>
                <%
                    }
                %>
                <%--<div class="col-sm-4 col-xs-12">--%>
                    <%--<div class="thumbnail articleContent">--%>
                        <%--<img src="img/articles/article-1.jpg" alt="Image articles" class="img-responsive">--%>
                        <%--<div class="caption">--%>
                            <%--<h4>Nov 22, 2016 by <a href="#">Admin</a></h4>--%>
                            <%--<h3><a href="blog-details.html">Donec id dolor in erat imperdiet.</a></h3>--%>
                            <%--<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed eiusmod tempor incididunt--%>
                                <%--labore et dolore magna aliqua.</p>--%>
                        <%--</div>--%>
                    <%--</div>--%>
                <%--</div>--%>
                <%--<div class="col-sm-4 col-xs-12">--%>
                    <%--<div class="thumbnail articleContent">--%>
                        <%--<img src="img/articles/article-2.jpg" alt="Image articles" class="img-responsive">--%>
                        <%--<div class="caption">--%>
                            <%--<h4>Nov 22, 2016 by <a href="#">Admin</a></h4>--%>
                            <%--<h3><a href="blog-details.html">Donec id dolor in erat imperdiet.</a></h3>--%>
                            <%--<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed eiusmod tempor incididunt--%>
                                <%--labore et dolore magna aliqua.</p>--%>
                        <%--</div>--%>
                    <%--</div>--%>
                <%--</div>--%>
                <%--<div class="col-sm-4 col-xs-12">--%>
                    <%--<div class="thumbnail articleContent">--%>
                        <%--<img src="img/articles/article-3.jpg" alt="Image articles" class="img-responsive">--%>
                        <%--<div class="caption">--%>
                            <%--<h4>Nov 22, 2016 by <a href="#">Admin</a></h4>--%>
                            <%--<h3><a href="blog-details.html">Donec id dolor in erat imperdiet.</a></h3>--%>
                            <%--<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed eiusmod tempor incididunt--%>
                                <%--labore et dolore magna aliqua.</p>--%>
                        <%--</div>--%>
                    <%--</div>--%>
                <%--</div>--%>
            </div>
        </div>
    </section>

    <!-- CALL TO ACTION SECTION -->
    <section class="clearfix callAction">
        <div class="container">
            <div class="row">
                <div class="col-md-10 col-sm-9 col-xs-12">
                    <div class="callInfo">
                        <h4>祝大家圣诞快乐~🎄</h4>
                    </div>
                </div>
                <div class="col-md-2 col-sm-3 col-xs-12">
                    <div class="btnArea">
                        <a href="register.jsp" class="btn btn-primary btn-block">成为用户</a>
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
