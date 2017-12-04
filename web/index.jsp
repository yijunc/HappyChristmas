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
    <title>网站主页</title>
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
                        <h1>Explore. Discover. Share</h1>
                        <p>Listty helps to find out great things arround you</p>
                        <form class="form-inline" action="listing-sidebar-map-left.html" method="">
                            <div class="form-group">
                                <div class="input-group">
                                    <div class="input-group-addon">Find</div>
                                    <input type="text" class="form-control" id="findItem"
                                           placeholder="What are you looking for?">
                                    <div class="input-group-addon addon-right"></div>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="input-group">
                                    <div class="input-group-addon">Near</div>
                                    <input type="text" class="form-control" id="nearLocation" placeholder="Location">
                                    <div class="input-group-addon addon-right"><i class="icon-listy icon-target"
                                                                                  aria-hidden="true"></i></div>
                                </div>
                            </div>
                            <button type="submit" class="btn btn-primary">Search <i class="fa fa-search"
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
                <h2>What are You Interested in?
                    <small>Explore and connect with great local businesses</small>
                </h2>
            </div>
            <div class="row">
                <div class="col-sm-3 col-xs-12">
                    <a href="category-grid-full.html" class="interestContent">
					<span>
						<i class="icon-listy icon-tea-cup-1"></i>
						Restaurant
					</span>
                    </a>
                </div>
                <div class="col-sm-3 col-xs-12">
                    <a href="category-list-full.html" class="interestContent">
					<span>
						<i class="icon-listy icon-building"></i>
						Hotels
					</span>
                    </a>
                </div>
                <div class="col-sm-3 col-xs-12">
                    <a href="category-grid.html" class="interestContent">
					<span>
						<i class="icon-listy icon-martini"></i>
						Nightclubs
					</span>
                    </a>
                </div>
                <div class="col-sm-3 col-xs-12">
                    <a href="category-list-left.html" class="interestContent">
					<span>
						<i class="icon-listy icon-car-1"></i>
						Auto Motive
					</span>
                    </a>
                </div>
                <div class="col-sm-3 col-xs-12">
                    <a href="category-grid-right.html" class="interestContent">
					<span>
						<i class="icon-listy icon-castle"></i>
						Museums
					</span>
                    </a>
                </div>
                <div class="col-sm-3 col-xs-12">
                    <a href="category-list-right.html" class="interestContent">
					<span>
						<i class="icon-listy icon-television"></i>
						Movie Theaters
					</span>
                    </a>
                </div>
                <div class="col-sm-3 col-xs-12">
                    <a href="category-grid-full.html" class="interestContent">
					<span>
						<i class="icon-listy icon-mall-1"></i>
						Shopping
					</span>
                    </a>
                </div>
                <div class="col-sm-3 col-xs-12">
                    <a href="all-business.html" class="interestContent">
					<span>
						<i class="icon-listy icon-more"></i>
						View All
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
                <h2>Why Listy?</h2>
            </div>
            <div class="row">
                <div class="col-sm-3 col-xs-12">
                    <div class="text-center countItem">
                        <div class="counter">140</div>
                        <div class="counterInfo bg-color-1">Color Variations</div>
                    </div>
                </div>
                <div class="col-sm-3 col-xs-12">
                    <div class="text-center countItem">
                        <div class="counter">120</div>
                        <div class="counterInfo bg-color-2">Layouts</div>
                    </div>
                </div>
                <div class="col-sm-3 col-xs-12">
                    <div class="text-center countItem">
                        <div class="counter">180</div>
                        <div class="counterInfo bg-color-3">Inner Pages</div>
                    </div>
                </div>
                <div class="col-sm-3 col-xs-12">
                    <div class="text-center countItem">
                        <div class="counter">220</div>
                        <div class="counterInfo bg-color-4">Admin Pages</div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-xs-12">
                    <div class="btnArea text-center">
                        <a href="#" class="btn btn-primary">Get it now</a>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- WORKS SECTION -->
    <section class="clearfix worksArea">
        <div class="container">
            <div class="page-header text-center">
                <h2>How it Works?
                    <small>This are some of most popular listing</small>
                </h2>
            </div>
            <div class="row">
                <div class="col-sm-4 col-xs-12">
                    <div class="thumbnail text-center worksContent">
                        <img src="img/works/works-1.png" alt="Image works">
                        <div class="caption">
                            <a href="how-it-works.html"><h3>Find what you want</h3></a>
                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed eiusmod tempor incididunt
                                labore et dolore magna aliqua.</p>
                        </div>
                    </div>
                </div>
                <div class="col-sm-4 col-xs-12">
                    <div class="thumbnail text-center worksContent">
                        <img src="img/works/works-2.png" alt="Image works">
                        <div class="caption">
                            <a href="how-it-works.html"><h3>Review & Plan your day</h3></a>
                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed eiusmod tempor incididunt
                                labore et dolore magna aliqua.</p>
                        </div>
                    </div>
                </div>
                <div class="col-sm-4 col-xs-12">
                    <div class="thumbnail text-center worksContent">
                        <img src="img/works/works-3.png" alt="Image works">
                        <div class="caption">
                            <a href="how-it-works.html"><h3>Explore Location</h3></a>
                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed eiusmod tempor incididunt
                                labore et dolore magna aliqua.</p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-xs-12">
                    <div class="btnArea text-center"><a href="#" class="btn btn-primary">Watch it now <i
                            class="fa fa-play-circle" aria-hidden="true"></i></a></div>
                </div>
            </div>
        </div>
    </section>

    <!-- ARTICLES SECTION-->
    <section class="clearfix articlesArea">
        <div class="container">
            <div class="page-header text-center">
                <h2>Articles
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
                        <h4><span>Listty</span> is the <span>best way</span> <br>to find great local business</h4>
                    </div>
                </div>
                <div class="col-md-2 col-sm-3 col-xs-12">
                    <div class="btnArea">
                        <a href="sign-up.html" class="btn btn-primary btn-block">Get Started</a>
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
