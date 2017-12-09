<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/12/4
  Time: 21:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<html>
<%@include file="templates/headers.jsp" %>

<header>
    <title>管理主页</title>
</header>

<body class="body-wrapper">
<div class="page-loader" style="background: url(img/preloader.gif) center no-repeat #fff;"></div>
<div class="main-wrapper">
    <!-- HEADER -->

    <header id="pageTop" class="header">
        <%@include file="templates/navbars.jsp" %>
        <%@include file="templates/adminNavbar.jsp" %>
    </header>


    <!-- DASHBOARD SECTION -->
    <section class="clearfix bg-dark equalHeight dashboardSection">
        <div class="container">
            <div class="row">
                <div class="col-sm-4 col-xs-12">
                    <div class="panel panel-default panel-card">
                        <div class="panel-heading">
                            Listings <span class="label label-primary">Monthly</span>
                        </div>
                        <div class="panel-body">
                            <h2>71,503</h2>
                            <p>Compare to last month <span class="resultInfo resultUp">10% <i class="fa fa-level-up"
                                                                                              aria-hidden="true"></i></span>
                            </p>
                        </div>
                    </div>
                </div>
                <div class="col-sm-4 col-xs-12">
                    <div class="panel panel-default panel-card">
                        <div class="panel-heading">
                            Visits <span class="label label-primary">Today</span>
                        </div>
                        <div class="panel-body">
                            <h2>5,00,103</h2>
                            <p>Compare to yesterday <span class="resultInfo resultDown">5% <i class="fa fa-level-down"
                                                                                              aria-hidden="true"></i></span>
                            </p>
                        </div>
                    </div>
                </div>
                <div class="col-sm-4 col-xs-12">
                    <div class="panel panel-default panel-card">
                        <div class="panel-heading">
                            Search <span class="label label-primary">Today</span>
                        </div>
                        <div class="panel-body">
                            <h2>31,200</h2>
                            <p>Compare to yesterday <span class="resultInfo resultUp">10% <i class="fa fa-level-up"></i></span>
                            </p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-xs-12">
                    <div class="panel panel-default panel-card">
                        <div class="panel-heading">
                            Orders
                            <span class="rightContent">
							<span class="dateRange">
								<label>From:</label>
								<div class="dateSelect">
									<div class="input-group date ed-datepicker filterDate" data-provide="datepicker">
										<input type="text" class="form-control" placeholder="mm/dd/yyyy">
										<div class="input-group-addon">
											<i class="fa fa-calendar" aria-hidden="true"></i>
										</div>
									</div>
								</div>
							</span>
							<span class="dateRange">
								<label>To:</label>
								<div class="dateSelect">
									<div class="input-group date ed-datepicker filterDate" data-provide="datepicker">
										<input type="text" class="form-control" placeholder="mm/dd/yyyy">
										<div class="input-group-addon">
											<i class="fa fa-calendar" aria-hidden="true"></i>
										</div>
									</div>
								</div>
							</span>
							<span class="btn-group btn-panel">
								<button type="button" class="btn btn-primary active">Daily</button>
								<button type="button" class="btn btn-primary">Weekly</button>
								<button type="button" class="btn btn-primary">Monthly</button>
							</span>
						</span>
                        </div>
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-sm-3 col-xs-12">
                                    <div class="chartInfo">
                                        <h2>2,450</h2>
                                        <p>Total Orders</p>
                                    </div>
                                    <div class="chartInfo">
                                        <h2>$50,500</h2>
                                        <p>Total Payments</p>
                                    </div>
                                </div>
                                <div class="col-sm-9 col-xs-12">
                                    <div class="flot-chart">
                                        <div class="flot-chart-content" id="flot-dashboard-chart"></div>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-4 col-xs-12">
                    <div class="panel panel-default panel-card">
                        <div class="panel-heading">
                            Popular Listings <span class="label label-primary">Monthly</span>
                        </div>
                        <div class="panel-body plr">
                            <ul class="list-unstyled panel-list">
                                <li>
                                    <div class="listWrapper">
                                        <div class="listName">
                                            <h3>Miku Toronto
                                                <small>by Adam Smith</small>
                                            </h3>
                                        </div>
                                        <div class="listResult">
                                            <ul class="list-inline rating">
                                                <li><i class="fa fa-star" aria-hidden="true"></i></li>
                                                <li><i class="fa fa-star" aria-hidden="true"></i></li>
                                                <li><i class="fa fa-star" aria-hidden="true"></i></li>
                                                <li><i class="fa fa-star" aria-hidden="true"></i></li>
                                                <li><i class="fa fa-star" aria-hidden="true"></i></li>
                                            </ul>
                                            <span class="likePart"><i class="fa fa-heart-o primaryColor"
                                                                      aria-hidden="true"></i>10k</span>
                                            <span class="likeResult">Visits: <strong>20,500</strong></span>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="listWrapper">
                                        <div class="listName">
                                            <h3>Miku Toronto
                                                <small>by Adam Smith</small>
                                            </h3>
                                        </div>
                                        <div class="listResult">
                                            <ul class="list-inline rating">
                                                <li><i class="fa fa-star" aria-hidden="true"></i></li>
                                                <li><i class="fa fa-star" aria-hidden="true"></i></li>
                                                <li><i class="fa fa-star" aria-hidden="true"></i></li>
                                                <li><i class="fa fa-star" aria-hidden="true"></i></li>
                                                <li><i class="fa fa-star" aria-hidden="true"></i></li>
                                            </ul>
                                            <span class="likePart"><i class="fa fa-heart-o primaryColor"
                                                                      aria-hidden="true"></i>10k</span>
                                            <span class="likeResult">Visits: <strong>20,500</strong></span>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="listWrapper">
                                        <div class="listName">
                                            <h3>Miku Toronto
                                                <small>by Adam Smith</small>
                                            </h3>
                                        </div>
                                        <div class="listResult">
                                            <ul class="list-inline rating">
                                                <li><i class="fa fa-star" aria-hidden="true"></i></li>
                                                <li><i class="fa fa-star" aria-hidden="true"></i></li>
                                                <li><i class="fa fa-star" aria-hidden="true"></i></li>
                                                <li><i class="fa fa-star" aria-hidden="true"></i></li>
                                                <li><i class="fa fa-star" aria-hidden="true"></i></li>
                                            </ul>
                                            <span class="likePart"><i class="fa fa-heart-o primaryColor"
                                                                      aria-hidden="true"></i>10k</span>
                                            <span class="likeResult">Visits: <strong>20,500</strong></span>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="listWrapper">
                                        <div class="listName">
                                            <h3>Miku Toronto
                                                <small>by Adam Smith</small>
                                            </h3>
                                        </div>
                                        <div class="listResult">
                                            <ul class="list-inline rating">
                                                <li><i class="fa fa-star" aria-hidden="true"></i></li>
                                                <li><i class="fa fa-star" aria-hidden="true"></i></li>
                                                <li><i class="fa fa-star" aria-hidden="true"></i></li>
                                                <li><i class="fa fa-star" aria-hidden="true"></i></li>
                                                <li><i class="fa fa-star" aria-hidden="true"></i></li>
                                            </ul>
                                            <span class="likePart"><i class="fa fa-heart-o primaryColor"
                                                                      aria-hidden="true"></i>10k</span>
                                            <span class="likeResult">Visits: <strong>20,500</strong></span>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="listWrapper">
                                        <div class="listName">
                                            <h3>Miku Toronto
                                                <small>by Adam Smith</small>
                                            </h3>
                                        </div>
                                        <div class="listResult">
                                            <ul class="list-inline rating">
                                                <li><i class="fa fa-star" aria-hidden="true"></i></li>
                                                <li><i class="fa fa-star" aria-hidden="true"></i></li>
                                                <li><i class="fa fa-star" aria-hidden="true"></i></li>
                                                <li><i class="fa fa-star" aria-hidden="true"></i></li>
                                                <li><i class="fa fa-star" aria-hidden="true"></i></li>
                                            </ul>
                                            <span class="likePart"><i class="fa fa-heart-o primaryColor"
                                                                      aria-hidden="true"></i>10k</span>
                                            <span class="likeResult">Visits: <strong>20,500</strong></span>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="listWrapper">
                                        <div class="listName">
                                            <h3>Miku Toronto
                                                <small>by Adam Smith</small>
                                            </h3>
                                        </div>
                                        <div class="listResult">
                                            <ul class="list-inline rating">
                                                <li><i class="fa fa-star" aria-hidden="true"></i></li>
                                                <li><i class="fa fa-star" aria-hidden="true"></i></li>
                                                <li><i class="fa fa-star" aria-hidden="true"></i></li>
                                                <li><i class="fa fa-star" aria-hidden="true"></i></li>
                                                <li><i class="fa fa-star" aria-hidden="true"></i></li>
                                            </ul>
                                            <span class="likePart"><i class="fa fa-heart-o primaryColor"
                                                                      aria-hidden="true"></i>10k</span>
                                            <span class="likeResult">Visits: <strong>20,500</strong></span>
                                        </div>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-sm-4 col-xs-12">
                    <div class="panel panel-default panel-card">
                        <div class="panel-heading" id="categories">
                            Popular Categories <span class="label label-primary">Monthly</span>
                        </div>
                        <div class="panel-body plr">
                            <ul class="list-styled panel-list list-padding">
                                <li class="listWrapper"><span class="itmeName"><i
                                        class="icon-listy icon-tea-cup-1 iconBox"></i>Restaurants</span> <span
                                        class="itemSubmit">Submited List: <strong>250</strong></span></li>
                                <li class="listWrapper"><span class="itmeName"><i
                                        class="icon-listy icon-building iconBox"></i>Hotels</span> <span
                                        class="itemSubmit">Submited List: <strong>90</strong></span></li>
                                <li class="listWrapper"><span class="itmeName"><i
                                        class="icon-listy icon-juice iconBox"></i>Nightclubs</span> <span
                                        class="itemSubmit">Submited List: <strong>260</strong></span></li>
                                <li class="listWrapper"><span class="itmeName"><i
                                        class="icon-listy icon-car-1 iconBox"></i>Auto Motive</span> <span
                                        class="itemSubmit">Submited List: <strong>900</strong></span></li>
                                <li class="listWrapper"><span class="itmeName"><i
                                        class="icon-listy icon-castle iconBox"></i>Museums</span> <span
                                        class="itemSubmit">Submited List: <strong>20</strong></span></li>
                                <li class="listWrapper"><span class="itmeName"><i
                                        class="icon-listy icon-television iconBox"></i>Movie Theaters</span> <span
                                        class="itemSubmit">Submited List: <strong>150</strong></span></li>
                                <li class="listWrapper"><span class="itmeName"><i
                                        class="icon-listy icon-mall-1 iconBox"></i>Shopping</span> <span
                                        class="itemSubmit">Submited List: <strong>300</strong></span></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-sm-4 col-xs-12">
                    <div class="panel panel-default panel-card">
                        <div class="panel-heading">
                            Recent Users <span class="label label-primary">Daily</span>
                        </div>
                        <div class="panel-body plr">
                            <ul class="list-styled panel-list list-padding-sm">
                                <li class="listWrapper"><span class="recentUserInfo"><img
                                        src="img/dashboard/recent-user-1.jpg" alt="Image User" class="img-circle">Adam Smith</span>
                                    <span class="userTime">Active 10m ago</span></li>
                                <li class="listWrapper"><span class="recentUserInfo"><img
                                        src="img/dashboard/recent-user-2.jpg" alt="Image User" class="img-circle">Adam Smith</span>
                                    <span class="userTime">Active 12m ago</span></li>
                                <li class="listWrapper"><span class="recentUserInfo"><img
                                        src="img/dashboard/recent-user-3.jpg" alt="Image User" class="img-circle">Adam Smith</span>
                                    <span class="userTime">Active 15m ago</span></li>
                                <li class="listWrapper"><span class="recentUserInfo"><img
                                        src="img/dashboard/recent-user-4.jpg" alt="Image User" class="img-circle">Adam Smith</span>
                                    <span class="userTime">Active 17m ago</span></li>
                                <li class="listWrapper"><span class="recentUserInfo"><img
                                        src="img/dashboard/recent-user-1.jpg" alt="Image User" class="img-circle">Adam Smith</span>
                                    <span class="userTime">Active 19m ago</span></li>
                                <li class="listWrapper"><span class="recentUserInfo"><img
                                        src="img/dashboard/recent-user-2.jpg" alt="Image User" class="img-circle">Adam Smith</span>
                                    <span class="userTime">Active 14m ago</span></li>
                                <li class="listWrapper"><span class="recentUserInfo"><img
                                        src="img/dashboard/recent-user-3.jpg" alt="Image User" class="img-circle">Adam Smith</span>
                                    <span class="userTime">Active 1h ago</span></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-xs-12">
                    <div class="panel panel-default panel-card">
                        <div class="panel-heading" id="message">
                            Messages <span class="label label-default label-sm">3 New</span> <a href=""
                                                                                                class="btn label label-primary">Send
                            Message</a>
                        </div>
                        <div class="panel-body panel-message">
                            <ul class="list-unstyled panel-list">
                                <li class="messageCommon recentMessage listWrapper">
								<span class="messageInfo">
									<h5>Rifat Abeer, <small>Today <span class="dayTime">11.08 AM</span></small></h5>
									<p>Dear Sir, Confirming the order for the following items: LC Latex Classy Gents: 24 x 1200 = 28800, Suede Convers 02: 6 x 1200 = 7200</p>
								</span>
                                    <span class="messageTime">5m ago</span>
                                </li>
                                <li class="messageCommon recentMessage listWrapper">
								<span class="messageInfo">
									<h5>Rifat Abeer, <small>Today <span class="dayTime">11.08 AM</span></small></h5>
									<p>Dear Sir, Confirming the order for the following items: LC Latex Classy Gents: 24 x 1200 = 28800, Suede Convers 02: 6 x 1200 = 7200</p>
								</span>
                                    <span class="messageTime">5m ago</span>
                                </li>
                                <li class="messageCommon recentMessage listWrapper">
								<span class="messageInfo">
									<h5>Rifat Abeer, <small>Today <span class="dayTime">11.08 AM</span></small></h5>
									<p>Dear Sir, Confirming the order for the following items: LC Latex Classy Gents: 24 x 1200 = 28800, Suede Convers 02: 6 x 1200 = 7200</p>
								</span>
                                    <span class="messageTime">5m ago</span>
                                </li>
                                <li class="messageCommon oldMessage listWrapper">
								<span class="messageInfo">
									<h5>Rifat Abeer, <small>Today <span class="dayTime">11.08 AM</span></small></h5>
									<p>Dear Sir, Confirming the order for the following items: LC Latex Classy Gents: 24 x 1200 = 28800, Suede Convers 02: 6 x 1200 = 7200</p>
								</span>
                                    <span class="messageTime">5m ago</span>
                                </li>
                                <li class="messageCommon oldMessage listWrapper">
								<span class="messageInfo">
									<h5>Rifat Abeer, <small>Today <span class="dayTime">11.08 AM</span></small></h5>
									<p>Dear Sir, Confirming the order for the following items: LC Latex Classy Gents: 24 x 1200 = 28800, Suede Convers 02: 6 x 1200 = 7200</p>
								</span>
                                    <span class="messageTime">5m ago</span>
                                </li>
                                <li class="messageCommon oldMessage listWrapper">
								<span class="messageInfo">
									<h5>Rifat Abeer, <small>Today <span class="dayTime">11.08 AM</span></small></h5>
									<p>Dear Sir, Confirming the order for the following items: LC Latex Classy Gents: 24 x 1200 = 28800, Suede Convers 02: 6 x 1200 = 7200</p>
								</span>
                                    <span class="messageTime">5m ago</span>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</div>

<%@include file="templates/loginModal.jsp" %>
<%@include file="templates/footers.jsp" %>

<!-- Flot -->
<script src="plugins/flot/jquery.flot.js"></script>
<script src="plugins/flot/jquery.flot.time.js"></script>
<script src="js/chart.js"></script>


</body>

</html>
