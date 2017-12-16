<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/12/4
  Time: 20:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<html>
<%@include file="templates/headers.jsp" %>

<head>
    <title>填写出租车辆信息表</title>
</head>

<body class="body-wrapper">
<div class="page-loader" style="background: url(img/preloader.gif) center no-repeat #fff;"></div>
<div class="main-wrapper">
    <header id="pageTop" class="header">
        <%@include file="templates/navbars.jsp" %>
    </header>

    <!-- DASHBOARD ORDERS SECTION -->
    <section class="clearfix bg-dark listingSection">
        <div class="container">
            <div class="row">
                <div class="col-xs-12">
                    <form action="" method="" class="listing__form">
                        <div class="dashboardPageTitle text-center">
                            <h2>出租车辆信息填写表</h2>
                        </div>
                        <div class="dashboardBoxBg mb30">
                            <div class="profileIntro paraMargin">
                                <h3>车辆基本信息</h3>
                                <p>HAPPY CHRISTMAS 不对意外产生的对您的车辆造成的伤害负责。</p>
                                <div class="row">
                                    <div class="form-group col-sm-6 col-xs-12">
                                        <label for="listingTitle">Listing Title</label>
                                        <input type="text" class="form-control" id="listingTitle"
                                               placeholder="Listing Title">
                                    </div>
                                    <div class="form-group col-sm-6 col-xs-12">
                                        <label for="listingTitle">Listing Title</label>
                                        <input type="text" class="form-control" id="listingTitle"
                                               placeholder="Listing Title">
                                    </div>
                                    <div class="form-group col-sm-6 col-xs-12">
                                        <label for="listingCategory">Category</label>
                                        <div class="contactSelect">
                                            <select name="guiest_id9" id="guiest_id9" class="select-drop">
                                                <option value="0">All Category</option>
                                                <option value="1">Restaurant</option>
                                                <option value="2">Bar</option>
                                                <option value="3">Cafe</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-group col-xs-12">
                                        <label for="addTags">Tags</label>
                                        <input type="text" class="form-control" id="addTags" placeholder="Add Tags">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="dashboardBoxBg mb30">
                            <div class="profileIntro paraMargin">
                                <h3>出租信息</h3>
                                <div class="row">
                                    <div class="form-group col-md-4 col-sm-6 col-xs-12">
                                        <label for="mondayTime">Monday</label>
                                        <input type="text" class="form-control" id="mondayTime"
                                               placeholder="10.00am - 5.00pm">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="form-footer text-center">
                            <button type="submit" class="btn-submit">Submit</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </section>

</div>
<%@include file="templates/loginModal.jsp" %>
<%@include file="templates/footers.jsp" %>


</body>

</html>

