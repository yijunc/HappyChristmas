<%--
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
    <title>网站主页--HAPPY CHRISTMAS</title>
</head>
<body class="body-wrapper">
<div class="page-loader" style="background: url(img/preloader.gif) center no-repeat #fff;"></div>
<div class="main-wrapper">
    <header id="pageTop" class="header">
        <%@include file="templates/navbars.jsp" %>
    </header>

    <!-- BANNER SECTION -->
    <section class="clearfix homeBanner" style="background-image: url(img/banner/banner1.jpg);">
        <div class="container">
            <div class="row">
                <div class="col-xs-12">
                    <div class="banerInfo">
                        <h1>租赁. 连接. 分享</h1>
                        <p>『HAPPY CHRISTMAS』连接车主与租客，分享咨询与新闻</p>
                        <form class="form-inline" action="" method="">
                            <div class="form-group">
                                <div class="input-group">
                                    <div class="input-group-addon" style="width: 30%;">查找</div>
                                    <input type="text" class="form-control" id="findItem"
                                           placeholder="输入您想要了解的信息">
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="input-group">
                                    <div class="input-group-addon" style="width: 30%;">类别</div>
                                    <div class="contactSelect">
                                        <select id="" class="select-drop" name="user_status" style="margin-right: 10%">
                                            <option value="">未选择</option>
                                            <option value="1">车辆租赁资讯</option>
                                            <option value="2">车位租赁资讯</option>
                                            <option value="0">新闻资讯</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                            <button type="submit" class="btn btn-primary">搜索 <i class="fa fa-search"
                                                                                    aria-hidden="true"></i></button>
                        </form>
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
                    <a href="rentcar.jsp" class="interestContent">
					<span>
						<i class="fa fa-car fa-3x"></i>
						租车分享
					</span>
                    </a>
                </div>
                <div class="col-sm-3 col-xs-12">
                    <a href="rentspace.jsp" class="interestContent">
					<span>
						<i class="fa fa-product-hunt fa-3x" aria-hidden="true"></i>
						车位预定
					</span>
                    </a>
                </div>
                <div class="col-sm-3 col-xs-12">
                    <a href="news.jsp" class="interestContent">
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

    <!-- THINGS SECTION -->
    <section class="clearfix thingsArea">
        <div class="container">
            <div class="page-header text-center">
                <h2>Popular Things Near You
                    <small>This are some of most popular listing</small>
                </h2>
            </div>
            <div class="row">
                <div class="col-xs-12">
                    <div id="thubmnailSlider" class="carousel slide thumbnailCarousel">

                        <ol class="carousel-indicators">
                            <li data-target="#thubmnailSlider" data-slide-to="0" class="active"></li>
                            <li data-target="#thubmnailSlider" data-slide-to="1"></li>
                            <li data-target="#thubmnailSlider" data-slide-to="2"></li>
                            <li data-target="#thubmnailSlider" data-slide-to="3"></li>
                            <li data-target="#thubmnailSlider" data-slide-to="4"></li>
                            <li data-target="#thubmnailSlider" data-slide-to="5"></li>
                            <li data-target="#thubmnailSlider" data-slide-to="6"></li>
                            <li data-target="#thubmnailSlider" data-slide-to="7"></li>
                        </ol>

                        <!-- Carousel items -->
                        <div class="carousel-inner">

                            <div class="item row active">
                                <div class="col-md-4 col-sm-6 col-xs-12">
                                    <div class="thingsBox">
                                        <div class="thingsImage">
                                            <img src="img/things/things-1.jpg" alt="Image things">
                                            <div class="thingsMask">
                                                <ul class="list-inline rating">
                                                    <li><i class="fa fa-star" aria-hidden="true"></i></li>
                                                    <li><i class="fa fa-star" aria-hidden="true"></i></li>
                                                    <li><i class="fa fa-star" aria-hidden="true"></i></li>
                                                    <li><i class="fa fa-star" aria-hidden="true"></i></li>
                                                    <li><i class="fa fa-star" aria-hidden="true"></i></li>
                                                </ul>
                                                <a href="blog-details.html"><h2>The City Theater <i
                                                        class="fa fa-check-circle" aria-hidden="true"></i></h2></a>
                                                <p>10 Bay Street Toronto Ontario Canada</p>
                                            </div>
                                        </div>
                                        <div class="thingsCaption ">
                                            <ul class="list-inline captionItem">
                                                <li><i class="fa fa-heart-o" aria-hidden="true"></i> 10 k</li>
                                                <li><a href="category-list-left.html">Hotel, Restaurant</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="item row">
                                <div class="col-md-4 col-sm-6 col-xs-12">
                                    <div class="thingsBox">
                                        <div class="thingsImage">
                                            <img src="img/things/things-2.jpg" alt="Image things">
                                            <div class="thingsMask">
                                                <ul class="list-inline rating">
                                                    <li><i class="fa fa-star" aria-hidden="true"></i></li>
                                                    <li><i class="fa fa-star" aria-hidden="true"></i></li>
                                                    <li><i class="fa fa-star" aria-hidden="true"></i></li>
                                                    <li><i class="fa fa-star" aria-hidden="true"></i></li>
                                                    <li><i class="fa fa-star" aria-hidden="true"></i></li>
                                                </ul>
                                                <a href="blog-details.html"><h2>The City Theater</h2></a>
                                                <p>10 Bay Street Toronto Ontario Canada</p>
                                            </div>
                                        </div>
                                        <div class="thingsCaption ">
                                            <ul class="list-inline captionItem">
                                                <li><i class="fa fa-heart-o" aria-hidden="true"></i> 10 k</li>
                                                <li><a href="category-grid-full.html">Hotel, Restaurant</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="item row">
                                <div class="col-md-4 col-sm-6 col-xs-12">
                                    <div class="thingsBox">
                                        <div class="thingsImage">
                                            <img src="img/things/things-3.jpg" alt="Image things">
                                            <div class="thingsMask">
                                                <ul class="list-inline rating">
                                                    <li><i class="fa fa-star" aria-hidden="true"></i></li>
                                                    <li><i class="fa fa-star" aria-hidden="true"></i></li>
                                                    <li><i class="fa fa-star" aria-hidden="true"></i></li>
                                                    <li><i class="fa fa-star" aria-hidden="true"></i></li>
                                                    <li><i class="fa fa-star" aria-hidden="true"></i></li>
                                                </ul>
                                                <a href="blog-details.html"><h2>The City Theater <i
                                                        class="fa fa-check-circle" aria-hidden="true"></i></h2></a>
                                                <p>10 Bay Street Toronto Ontario Canada</p>
                                            </div>
                                        </div>
                                        <div class="thingsCaption ">
                                            <ul class="list-inline captionItem">
                                                <li><i class="fa fa-heart-o" aria-hidden="true"></i> 10 k</li>
                                                <li><a href="category-grid.html">Hotel, Restaurant</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="item row">
                                <div class="col-md-4 col-sm-6 col-xs-12">
                                    <div class="thingsBox">
                                        <div class="thingsImage">
                                            <img src="img/things/things-1.jpg" alt="Image things">
                                            <div class="thingsMask">
                                                <ul class="list-inline rating">
                                                    <li><i class="fa fa-star" aria-hidden="true"></i></li>
                                                    <li><i class="fa fa-star" aria-hidden="true"></i></li>
                                                    <li><i class="fa fa-star" aria-hidden="true"></i></li>
                                                    <li><i class="fa fa-star" aria-hidden="true"></i></li>
                                                    <li><i class="fa fa-star" aria-hidden="true"></i></li>
                                                </ul>
                                                <a href="blog-details.html"><h2>The City Theater</h2></a>
                                                <p>10 Bay Street Toronto Ontario Canada</p>
                                            </div>
                                        </div>
                                        <div class="thingsCaption ">
                                            <ul class="list-inline captionItem">
                                                <li><i class="fa fa-heart-o" aria-hidden="true"></i> 10 k</li>
                                                <li><a href="category-grid-full.html">Hotel, Restaurant</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="item row">
                                <div class="col-md-4 col-sm-6 col-xs-12">
                                    <div class="thingsBox">
                                        <div class="thingsImage">
                                            <img src="img/things/things-2.jpg" alt="Image things">
                                            <div class="thingsMask">
                                                <ul class="list-inline rating">
                                                    <li><i class="fa fa-star" aria-hidden="true"></i></li>
                                                    <li><i class="fa fa-star" aria-hidden="true"></i></li>
                                                    <li><i class="fa fa-star" aria-hidden="true"></i></li>
                                                    <li><i class="fa fa-star" aria-hidden="true"></i></li>
                                                    <li><i class="fa fa-star" aria-hidden="true"></i></li>
                                                </ul>
                                                <a href="blog-details.html"><h2>The City Theater <i
                                                        class="fa fa-check-circle" aria-hidden="true"></i></h2></a>
                                                <p>10 Bay Street Toronto Ontario Canada</p>
                                            </div>
                                        </div>
                                        <div class="thingsCaption ">
                                            <ul class="list-inline captionItem">
                                                <li><i class="fa fa-heart-o" aria-hidden="true"></i> 10 k</li>
                                                <li><a href="category-list-right.html">Hotel, Restaurant</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="item row">
                                <div class="col-md-4 col-sm-6 col-xs-12">
                                    <div class="thingsBox">
                                        <div class="thingsImage">
                                            <img src="img/things/things-3.jpg" alt="Image things">
                                            <div class="thingsMask">
                                                <ul class="list-inline rating">
                                                    <li><i class="fa fa-star" aria-hidden="true"></i></li>
                                                    <li><i class="fa fa-star" aria-hidden="true"></i></li>
                                                    <li><i class="fa fa-star" aria-hidden="true"></i></li>
                                                    <li><i class="fa fa-star" aria-hidden="true"></i></li>
                                                    <li><i class="fa fa-star" aria-hidden="true"></i></li>
                                                </ul>
                                                <a href="blog-details.html"><h2>The City Theater</h2></a>
                                                <p>10 Bay Street Toronto Ontario Canada</p>
                                            </div>
                                        </div>
                                        <div class="thingsCaption ">
                                            <ul class="list-inline captionItem">
                                                <li><i class="fa fa-heart-o" aria-hidden="true"></i> 10 k</li>
                                                <li><a href="category-grid-full.html">Hotel, Restaurant</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="item row">
                                <div class="col-md-4 col-sm-6 col-xs-12">
                                    <div class="thingsBox">
                                        <div class="thingsImage">
                                            <img src="img/things/things-1.jpg" alt="Image things">
                                            <div class="thingsMask">
                                                <ul class="list-inline rating">
                                                    <li><i class="fa fa-star" aria-hidden="true"></i></li>
                                                    <li><i class="fa fa-star" aria-hidden="true"></i></li>
                                                    <li><i class="fa fa-star" aria-hidden="true"></i></li>
                                                    <li><i class="fa fa-star" aria-hidden="true"></i></li>
                                                    <li><i class="fa fa-star" aria-hidden="true"></i></li>
                                                </ul>
                                                <a href="blog-details.html"><h2>The City Theater <i
                                                        class="fa fa-check-circle" aria-hidden="true"></i></h2></a>
                                                <p>10 Bay Street Toronto Ontario Canada</p>
                                            </div>
                                        </div>
                                        <div class="thingsCaption ">
                                            <ul class="list-inline captionItem">
                                                <li><i class="fa fa-heart-o" aria-hidden="true"></i> 10 k</li>
                                                <li><a href="category-grid.html">Hotel, Restaurant</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="item row">
                                <div class="col-md-4 col-sm-6 col-xs-12">
                                    <div class="thingsBox">
                                        <div class="thingsImage">
                                            <img src="img/things/things-2.jpg" alt="Image things">
                                            <div class="thingsMask">
                                                <ul class="list-inline rating">
                                                    <li><i class="fa fa-star" aria-hidden="true"></i></li>
                                                    <li><i class="fa fa-star" aria-hidden="true"></i></li>
                                                    <li><i class="fa fa-star" aria-hidden="true"></i></li>
                                                    <li><i class="fa fa-star" aria-hidden="true"></i></li>
                                                    <li><i class="fa fa-star" aria-hidden="true"></i></li>
                                                </ul>
                                                <a href="blog-details.html"><h2>The City Theater</h2></a>
                                                <p>10 Bay Street Toronto Ontario Canada</p>
                                            </div>
                                        </div>
                                        <div class="thingsCaption ">
                                            <ul class="list-inline captionItem">
                                                <li><i class="fa fa-heart-o" aria-hidden="true"></i> 10 k</li>
                                                <li><a href="category-list-full.html">Hotel, Restaurant</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div>

                        <a class="left carousel-control" href="#thubmnailSlider" data-slide="prev"><i
                                class="fa fa-angle-left" aria-hidden="true"></i></a>
                        <a class="right carousel-control" href="#thubmnailSlider" data-slide="next"><i
                                class="fa fa-angle-right" aria-hidden="true"></i></a>
                    </div>
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
                        <div class="counter">140</div>
                        <div class="counterInfo bg-color-1">平台车辆数</div>
                    </div>
                </div>
                <div class="col-sm-3 col-xs-12">
                    <div class="text-center countItem">
                        <div class="counter">120</div>
                        <div class="counterInfo bg-color-2">平台车位数</div>
                    </div>
                </div>
                <div class="col-sm-3 col-xs-12">
                    <div class="text-center countItem">
                        <div class="counter">180</div>
                        <div class="counterInfo bg-color-3">达成交易单数</div>
                    </div>
                </div>
                <div class="col-sm-3 col-xs-12">
                    <div class="text-center countItem">
                        <div class="counter">220</div>
                        <div class="counterInfo bg-color-4">平台用户数</div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-xs-12">
                    <div class="btnArea text-center">
                        <a href="#" class="btn btn-primary">加入我们</a>
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
                <div class="col-sm-4 col-xs-12">
                    <div class="thumbnail articleContent">
                        <img src="img/articles/article-1.jpg" alt="Image articles" class="img-responsive">
                        <div class="caption">
                            <h4>Nov 22, 2016 by <a href="#">Admin</a></h4>
                            <h3><a href="blog-details.html">Donec id dolor in erat imperdiet.</a></h3>
                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed eiusmod tempor incididunt
                                labore et dolore magna aliqua.</p>
                        </div>
                    </div>
                </div>
                <div class="col-sm-4 col-xs-12">
                    <div class="thumbnail articleContent">
                        <img src="img/articles/article-2.jpg" alt="Image articles" class="img-responsive">
                        <div class="caption">
                            <h4>Nov 22, 2016 by <a href="#">Admin</a></h4>
                            <h3><a href="blog-details.html">Donec id dolor in erat imperdiet.</a></h3>
                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed eiusmod tempor incididunt
                                labore et dolore magna aliqua.</p>
                        </div>
                    </div>
                </div>
                <div class="col-sm-4 col-xs-12">
                    <div class="thumbnail articleContent">
                        <img src="img/articles/article-3.jpg" alt="Image articles" class="img-responsive">
                        <div class="caption">
                            <h4>Nov 22, 2016 by <a href="#">Admin</a></h4>
                            <h3><a href="blog-details.html">Donec id dolor in erat imperdiet.</a></h3>
                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed eiusmod tempor incididunt
                                labore et dolore magna aliqua.</p>
                        </div>
                    </div>
                </div>
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
