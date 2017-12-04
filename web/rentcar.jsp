<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/12/4
  Time: 20:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<html>
<%@include file="templates/headers.jsp" %>

<head>
    <title>租车信息查询</title>
</head>

<body class="body-wrapper">
<div class="page-loader" style="background: url(img/preloader.gif) center no-repeat #fff;"></div>
<div class="main-wrapper">
    <header id="pageTop" class="header">
        <%@include file="templates/navbars.jsp" %>
    </header>


    <!-- CATEGORY SEARCH SECTION -->
    <section class="clearfix searchArea banerInfo searchAreaGray">
        <form>
            <div class="container">
                <div class="row">
                    <div class="col-sm-4 col-xs-12">
                        <div class="form-group">
                            <div class="input-group">
                                <div class="input-group-addon">Find</div>
                                <input type="text" class="form-control" id="findItem"
                                       placeholder="What are you looking for?">
                                <div class="input-group-addon addon-right"></div>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-4 col-xs-12">
                        <div class="form-group">
                            <div class="input-group">
                                <div class="input-group-addon">Near</div>
                                <input type="text" class="form-control" id="nearLocation" placeholder="Location">
                                <div class="input-group-addon addon-right"><i class="icon-listy icon-target"
                                                                              aria-hidden="true"></i></div>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-4 col-xs-12">
                        <div class="searchPart">
                            <div class="searchPartInner">
                                <div class="searchPartTitle">Category</div>
                                <div class="searchSelectboxes">
                                    <select name="guiest_id32" id="guiest_id32" class="select-drop">
                                        <option value="0">All Categories</option>
                                        <option value="1">All Categories 1</option>
                                        <option value="2">All Categories 2</option>
                                        <option value="3">All Categories 3</option>
                                    </select>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </form>
    </section>

    <!-- CATEGORY LIST SECTION -->
    <section class="clerfix">
        <div class="container">
            <div class="row">
                <div class="col-sm-8 col-xs-12">
                    <div class="resultBar barSpaceAdjust">
                        <h2>We found <span>8</span> Results for you</h2>
                        <ul class="list-inline">
                            <li><a href="listing-sidebar-map-full.html"><i class="fa fa-th" aria-hidden="true"></i></a>
                            </li>
                            <li class="active"><a href="listing-sidebar-map-left.html"><i class="fa fa-th-list"
                                                                                          aria-hidden="true"></i></a>
                            </li>
                        </ul>
                    </div>
                    <div class="listContent">
                        <div class="row">
                            <div class="col-sm-5 col-xs-12">
                                <div class="categoryImage">
                                    <img src="img/things/things-1.jpg" alt="Image category"
                                         class="img-responsive img-rounded">
                                    <span class="label label-primary">Verified</span>
                                </div>
                            </div>
                            <div class="col-sm-7 col-xs-12">
                                <div class="categoryDetails">
                                    <ul class="list-inline rating">
                                        <li><i class="fa fa-star" aria-hidden="true"></i></li>
                                        <li><i class="fa fa-star" aria-hidden="true"></i></li>
                                        <li><i class="fa fa-star" aria-hidden="true"></i></li>
                                        <li><i class="fa fa-star" aria-hidden="true"></i></li>
                                        <li><i class="fa fa-star" aria-hidden="true"></i></li>
                                    </ul>
                                    <h2><a href="blog-details.html" style="color: #222222">Glory Hole Doughnuts</a>
                                        <span class="likeCount"><i class="fa fa-heart-o"
                                                                   aria-hidden="true"></i> 10 k</span></h2>
                                    <p>1569 Queen Street West <span class="placeName">Toronto</span></p>
                                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed eiusmod tempor
                                        incididunt labore et dolore magna aliqua. </p>
                                    <ul class="list-inline list-tag">
                                        <li><a href="category-list-full.html">Hotel,</a></li>
                                        <li><a href="category-list-full.html">Restaurant</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="listContent">
                        <div class="row">
                            <div class="col-sm-5 col-xs-12">
                                <div class="categoryImage">
                                    <img src="img/things/things-2.jpg" alt="Image category"
                                         class="img-responsive img-rounded">
                                    <span class="label label-primary">Verified</span>
                                </div>
                            </div>
                            <div class="col-sm-7 col-xs-12">
                                <div class="categoryDetails">
                                    <ul class="list-inline rating">
                                        <li><i class="fa fa-star" aria-hidden="true"></i></li>
                                        <li><i class="fa fa-star" aria-hidden="true"></i></li>
                                        <li><i class="fa fa-star" aria-hidden="true"></i></li>
                                        <li><i class="fa fa-star" aria-hidden="true"></i></li>
                                        <li><i class="fa fa-star" aria-hidden="true"></i></li>
                                    </ul>
                                    <h2><a href="blog-details.html" style="color: #222222">Glory Hole Doughnuts</a>
                                        <span class="likeCount"><i class="fa fa-heart-o"
                                                                   aria-hidden="true"></i> 10 k</span></h2>
                                    <p>1569 Queen Street West <span class="placeName">Toronto</span></p>
                                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed eiusmod tempor
                                        incididunt labore et dolore magna aliqua. </p>
                                    <ul class="list-inline list-tag">
                                        <li><a href="category-list-full.html">Hotel,</a></li>
                                        <li><a href="category-list-full.html">Restaurant</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="listContent">
                        <div class="row">
                            <div class="col-sm-5 col-xs-12">
                                <div class="categoryImage">
                                    <img src="img/things/things-3.jpg" alt="Image category"
                                         class="img-responsive img-rounded">
                                    <span class="label label-primary">Verified</span>
                                </div>
                            </div>
                            <div class="col-sm-7 col-xs-12">
                                <div class="categoryDetails">
                                    <ul class="list-inline rating">
                                        <li><i class="fa fa-star" aria-hidden="true"></i></li>
                                        <li><i class="fa fa-star" aria-hidden="true"></i></li>
                                        <li><i class="fa fa-star" aria-hidden="true"></i></li>
                                        <li><i class="fa fa-star" aria-hidden="true"></i></li>
                                        <li><i class="fa fa-star" aria-hidden="true"></i></li>
                                    </ul>
                                    <h2><a href="blog-details.html" style="color: #222222">Glory Hole Doughnuts</a>
                                        <span class="likeCount"><i class="fa fa-heart-o"
                                                                   aria-hidden="true"></i> 10 k</span></h2>
                                    <p>1569 Queen Street West <span class="placeName">Toronto</span></p>
                                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed eiusmod tempor
                                        incididunt labore et dolore magna aliqua. </p>
                                    <ul class="list-inline list-tag">
                                        <li><a href="category-list-full.html">Hotel,</a></li>
                                        <li><a href="category-list-full.html">Restaurant</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="listContent">
                        <div class="row">
                            <div class="col-sm-5 col-xs-12">
                                <div class="categoryImage">
                                    <img src="img/things/things-1.jpg" alt="Image category"
                                         class="img-responsive img-rounded">
                                </div>
                            </div>
                            <div class="col-sm-7 col-xs-12">
                                <div class="categoryDetails">
                                    <ul class="list-inline rating">
                                        <li><i class="fa fa-star" aria-hidden="true"></i></li>
                                        <li><i class="fa fa-star" aria-hidden="true"></i></li>
                                        <li><i class="fa fa-star" aria-hidden="true"></i></li>
                                        <li><i class="fa fa-star" aria-hidden="true"></i></li>
                                        <li><i class="fa fa-star" aria-hidden="true"></i></li>
                                    </ul>
                                    <h2><a href="blog-details.html" style="color: #222222">Glory Hole Doughnuts</a>
                                        <span class="likeCount"><i class="fa fa-heart-o"
                                                                   aria-hidden="true"></i> 10 k</span></h2>
                                    <p>1569 Queen Street West <span class="placeName">Toronto</span></p>
                                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed eiusmod tempor
                                        incididunt labore et dolore magna aliqua. </p>
                                    <ul class="list-inline list-tag">
                                        <li><a href="category-list-full.html">Hotel,</a></li>
                                        <li><a href="category-list-full.html">Restaurant</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="listContent">
                        <div class="row">
                            <div class="col-sm-5 col-xs-12">
                                <div class="categoryImage">
                                    <img src="img/things/things-2.jpg" alt="Image category"
                                         class="img-responsive img-rounded">
                                </div>
                            </div>
                            <div class="col-sm-7 col-xs-12">
                                <div class="categoryDetails">
                                    <ul class="list-inline rating">
                                        <li><i class="fa fa-star" aria-hidden="true"></i></li>
                                        <li><i class="fa fa-star" aria-hidden="true"></i></li>
                                        <li><i class="fa fa-star" aria-hidden="true"></i></li>
                                        <li><i class="fa fa-star" aria-hidden="true"></i></li>
                                        <li><i class="fa fa-star" aria-hidden="true"></i></li>
                                    </ul>
                                    <h2><a href="blog-details.html" style="color: #222222">Glory Hole Doughnuts</a>
                                        <span class="likeCount"><i class="fa fa-heart-o"
                                                                   aria-hidden="true"></i> 10 k</span></h2>
                                    <p>1569 Queen Street West <span class="placeName">Toronto</span></p>
                                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed eiusmod tempor
                                        incididunt labore et dolore magna aliqua. </p>
                                    <ul class="list-inline list-tag">
                                        <li><a href="category-list-full.html">Hotel,</a></li>
                                        <li><a href="category-list-full.html">Restaurant</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="listContent">
                        <div class="row">
                            <div class="col-sm-5 col-xs-12">
                                <div class="categoryImage">
                                    <img src="img/things/things-3.jpg" alt="Image category"
                                         class="img-responsive img-rounded">
                                </div>
                            </div>
                            <div class="col-sm-7 col-xs-12">
                                <div class="categoryDetails">
                                    <h2><a href="blog-details.html" style="color: #222222">Glory Hole Doughnuts</a>
                                        <span class="likeCount"><i class="fa fa-heart-o"
                                                                   aria-hidden="true"></i> 10 k</span></h2>
                                    <p>1569 Queen Street West <span class="placeName">Toronto</span></p>
                                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed eiusmod tempor
                                        incididunt labore et dolore magna aliqua. </p>
                                    <ul class="list-inline list-tag">
                                        <li><a href="category-list-full.html">Hotel,</a></li>
                                        <li><a href="category-list-full.html">Restaurant</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="listContent">
                        <div class="row">
                            <div class="col-sm-5 col-xs-12">
                                <div class="categoryImage">
                                    <img src="img/things/things-1.jpg" alt="Image category"
                                         class="img-responsive img-rounded">
                                </div>
                            </div>
                            <div class="col-sm-7 col-xs-12">
                                <div class="categoryDetails">
                                    <h2><a href="blog-details.html" style="color: #222222">Glory Hole Doughnuts</a>
                                        <span class="likeCount"><i class="fa fa-heart-o"
                                                                   aria-hidden="true"></i> 10 k</span></h2>
                                    <p>1569 Queen Street West <span class="placeName">Toronto</span></p>
                                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed eiusmod tempor
                                        incididunt labore et dolore magna aliqua. </p>
                                    <ul class="list-inline list-tag">
                                        <li><a href="category-list-full.html">Hotel,</a></li>
                                        <li><a href="category-list-full.html">Restaurant</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="listContent borderRemove">
                        <div class="row">
                            <div class="col-sm-5 col-xs-12">
                                <div class="categoryImage">
                                    <img src="img/things/things-2.jpg" alt="Image category"
                                         class="img-responsive img-rounded">
                                </div>
                            </div>
                            <div class="col-sm-7 col-xs-12">
                                <div class="categoryDetails">
                                    <h2><a href="blog-details.html" style="color: #222222">Glory Hole Doughnuts</a>
                                        <span class="likeCount"><i class="fa fa-heart-o"
                                                                   aria-hidden="true"></i> 10 k</span></h2>
                                    <p>1569 Queen Street West <span class="placeName">Toronto</span></p>
                                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed eiusmod tempor
                                        incididunt labore et dolore magna aliqua. </p>
                                    <ul class="list-inline list-tag">
                                        <li><a href="category-list-full.html">Hotel,</a></li>
                                        <li><a href="category-list-full.html">Restaurant</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="paginationCommon blogPagination categoryPagination">
                        <nav aria-label="Page navigation">
                            <ul class="pagination">
                                <li>
                                    <a href="#" aria-label="Previous">
                                        <span aria-hidden="true"><i class="fa fa-angle-left"
                                                                    aria-hidden="true"></i></span>
                                    </a>
                                </li>
                                <li class="active"><a href="#">1</a></li>
                                <li><a href="#">2</a></li>
                                <li><a href="#">3</a></li>
                                <li><a href="#">4</a></li>
                                <li><a href="#">5</a></li>
                                <li>
                                    <a href="#" aria-label="Next">
                                        <span aria-hidden="true"><i class="fa fa-angle-right"
                                                                    aria-hidden="true"></i></span>
                                    </a>
                                </li>
                            </ul>
                        </nav>
                    </div>
                </div>
                <div class="col-sm-4 col-xs-12">
                    <div class="clearfix map-sidebar map-right map-margin-btm">
                        <div id="map"
                             style="position:relative; margin: 0;padding: 0;height: 538px; max-width: none;"></div>
                    </div>
                    <div class="sidebarInner sidebarCategory">
                        <div class="panel panel-default">
                            <div class="panel-heading">Filter by Area</div>
                            <div class="panel-body">
                                <ul class="list-unstyle categoryList">
                                    <li><a href="#">Dhaka</a></li>
                                    <li><a href="#">Chittagong</a></li>
                                    <li><a href="#">Rajshahi</a></li>
                                    <li><a href="#">Khulna</a></li>
                                    <li><a href="#">Barisal</a></li>
                                    <li><a href="#">Sylhet</a></li>
                                    <li><a href="#">Rangpure</a></li>
                                    <li><a href="#">Gazipure</a></li>
                                    <li><a href="#">Pabna</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="sidebarInner sidebarCategory">
                        <div class="panel panel-default">
                            <div class="panel-heading">Related Categories</div>
                            <div class="panel-body">
                                <ul class="list-unstyle categoryList">
                                    <li><a href="#">Fast food</a></li>
                                    <li><a href="#">Chinese restaurants</a></li>
                                    <li><a href="#">Creole restaurants</a></li>
                                    <li><a href="#">Seafood</a></li>
                                    <li><a href="#">Thai restaurants</a></li>
                                    <li><a href="#">Street food</a></li>
                                    <li><a href="#">Japanese restaurants</a></li>
                                    <li><a href="#">Greek restaurants</a></li>
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


