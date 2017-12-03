<%--
  Created by IntelliJ IDEA.
  User: zhaoning
  Date: 2017/12/2
  Time: 下午6:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"
         pageEncoding="utf-8" %>

<html>

<%@include file="/templates/headers.jsp" %>

<head>
    <title>用户个人中心</title>
</head>

<body class="body-wrapper">
<div class="page-loader" style="background: url(img/preloader.gif) center no-repeat #fff;"></div>
<div class="main-wrapper">

    <%@include file="/templates/navbars.jsp" %>

    <!-- DASHBOARD PROFILE SECTION -->
    <section class="clearfix bg-dark profileSection">
        <div class="container">
            <div class="row">

                <div class="col-md-4 col-sm-5 col-xs-12">  <!--left-->
                    <div class="dashboardBoxBg mb30">
                        <div class="profileImage">
                            <img src="img/dashboard/user-2.jpg" alt="Image User" class="img-circle">
                            <div class="file-upload profileImageUpload">
                                <div class="upload-area">
                                    <input type="file" name="img[]" class="file">
                                    <button class="browse" type="button">上传头像<i class="icon-listy icon-upload"></i>
                                    </button>
                                </div>
                            </div>
                        </div>
                        <div class="profileUserInfo bt profileName">
                            <p>普通会员</p>
                            <h2>Nora</h2>
                            <h5>Email:<span>1379026619@qq.com</span></h5>
                            <a href="#" class="btn btn-primary">修改</a>
                        </div>
                    </div>
                </div>

                <div class="col-md-8 col-sm-7 col-xs-12">  <!--right-->

                    <!-- <div class="dashboardBoxBg "> -->
                    <ul class="nav nav-tabs" id="userNavBar">
                        <li role="presentation" class="active" id="carRentalOrders" onclick="changeCarRentalOrders()"><a
                                href="#">我的租车订单</a></li>
                        <li role="presentation" id="parkingOrders" onclick="changeParkingOrders()"><a
                                href="#">我的停车位订单</a></li>
                        <li role="presentation" id="loadOrders" onclick="changeLoadOrdrt()"><a href="#">我的出租订单</a></li>
                        <li role="presentation" id="payment" onclick="changePayment()"><a href="#">我的收支</a></li>
                    </ul>
                    <!-- </div> -->


                    <div id="carRentalOrdersList">
                        <div class="dashboardBoxBg mt30">
                            <div class="profileIntro">
                                <h2>Your CarRentalOrdersList</h2>
                                <p>There are many variations of passages of Lorem Ipsum available, but the majority have
                                    suffered alteration in some form Ipsum available.</p>
                            </div>
                        </div>
                    </div>

                    <div id="parkingOrdersList">
                        <div class="dashboardBoxBg mt30">
                            <div class="profileIntro">
                                <h2>Your ParkingOrdersList</h2>
                                <p>There are many variations of passages of Lorem Ipsum available, but the majority have
                                    suffered alteration in some form Ipsum available.</p>
                            </div>
                        </div>
                    </div>

                    <div id="loadOrdersList">
                        <div class="dashboardBoxBg mt30">
                            <div class="profileIntro">
                                <h2>Your LoadOrdersList</h2>
                                <p>There are many variations of passages of Lorem Ipsum available, but the majority have
                                    suffered alteration in some form Ipsum available.</p>
                            </div>
                        </div>
                    </div>

                    <div id="paymentList">
                        <div class="dashboardBoxBg mt30">
                            <div class="profileIntro">
                                <h2>Your PaymentList</h2>
                                <p>There are many variations of passages of Lorem Ipsum available, but the majority have
                                    suffered alteration in some form Ipsum available.</p>
                            </div>
                        </div>
                    </div>


                    <form>
                        <div class="dashboardBoxBg mt30">
                            <div class="profileIntro">
                                <h2>Your Profile</h2>
                                <p>There are many variations of passages of Lorem Ipsum available, but the majority have
                                    suffered alteration in some form Ipsum available.</p>
                            </div>
                        </div>
                        <div class="dashboardBoxBg mt30">
                            <div class="profileIntro">
                                <h3>About You</h3>
                                <div class="row">
                                    <div class="form-group col-sm-6 col-xs-12">
                                        <label for="firstNameProfile">Fast Name</label>
                                        <input type="text" class="form-control" id="firstNameProfile"
                                               placeholder="Jane">
                                    </div>
                                    <div class="form-group col-sm-6 col-xs-12">
                                        <label for="lastNameProfile">Last Name</label>
                                        <input type="text" class="form-control" id="lastNameProfile" placeholder="Doe">
                                    </div>
                                    <div class="form-group col-sm-6 col-xs-12">
                                        <label for="emailProfile">Email</label>
                                        <input type="text" class="form-control" id="emailProfile"
                                               placeholder="Jane@example.com">
                                    </div>
                                    <div class="form-group col-sm-6 col-xs-12">
                                        <label for="phoneProfile">Phone</label>
                                        <input type="text" class="form-control" id="phoneProfile"
                                               placeholder="254 - 265 - 3265">
                                    </div>
                                    <div class="form-group col-xs-12">
                                        <label for="aboutYou">About You</label>
                                        <textarea class="form-control" rows="5" id="aboutYou"
                                                  placeholder="About You"></textarea>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="dashboardBoxBg mt30">
                            <div class="profileIntro">
                                <h3>Social Network</h3>
                                <div class="row">
                                    <div class="form-group col-sm-6 col-xs-12">
                                        <label for="linkedInUrl">Linked in URL</label>
                                        <input type="text" class="form-control" id="linkedInUrl"
                                               placeholder="http://linkedin.com/listty">
                                    </div>
                                    <div class="form-group col-sm-6 col-xs-12">
                                        <label for="facebookUrl">Facebook URL</label>
                                        <input type="text" class="form-control" id="facebookUrl"
                                               placeholder="http://facebook.com/listty">
                                    </div>
                                    <div class="form-group col-sm-6 col-xs-12">
                                        <label for="twitterUrl">Twitter URL</label>
                                        <input type="text" class="form-control" id="twitterUrl"
                                               placeholder="http://twitter.com/listty">
                                    </div>
                                    <div class="form-group col-sm-6 col-xs-12">
                                        <label for="youTubeUrl">You Tube URL</label>
                                        <input type="text" class="form-control" id="youTubeUrl"
                                               placeholder="http://youtube.com/listty">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="btn-area mt30">
                            <button class="btn btn-primary" type="button">Save Change</button>
                        </div>
                        <div class="dashboardBoxBg mt30">
                            <div class="profileIntro">
                                <h3>Update password</h3>
                                <div class="row">
                                    <div class="form-group col-xs-12">
                                        <label for="currentPassword">Current Password</label>
                                        <input type="password" class="form-control" id="currentPassword"
                                               placeholder="********">
                                    </div>
                                    <div class="form-group col-xs-12">
                                        <label for="newPassword">New Password</label>
                                        <input type="password" class="form-control" id="newPassword"
                                               placeholder="New Password">
                                    </div>
                                    <div class="form-group col-xs-12">
                                        <label for="confirmPassword">Confirm Password</label>
                                        <input type="password" class="form-control" id="confirmPassword"
                                               placeholder="Confirm Password">
                                    </div>
                                    <div class="form-group col-xs-12">
                                        <button class="btn btn-primary" type="button">Change Password</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </section>
</div>

<%@include file="/templates/loginModal.jsp" %>
<%@include file="/templates/footers.jsp" %>
<script>
    $(document).ready(function () {
        document.getElementById("carRentalOrdersList").style.display = 'block';
        document.getElementById("parkingOrdersList").style.display = 'none';
        document.getElementById("loadOrdersList").style.display = 'none';
        document.getElementById("paymentList").style.display = 'none';
    });

    function changeCarRentalOrders() {
        $("#carRentalOrders").addClass("active");
        $("#parkingOrders").removeClass("active");
        $("#loadOrders").removeClass("active");
        $("#payment").removeClass("active");
        document.getElementById("carRentalOrdersList").style.display = 'block';
        document.getElementById("parkingOrdersList").style.display = 'none';
        document.getElementById("loadOrdersList").style.display = 'none';
        document.getElementById("paymentList").style.display = 'none';

        // $("#userNavBar li").each(function(){
        // if ($this().attr("class") == "active")
        //   alert($(this).attr("id"));
        //  });
    }

    function changeParkingOrders() {
        $("#carRentalOrders").removeClass("active");
        $("#parkingOrders").addClass("active");
        $("#loadOrders").removeClass("active");
        $("#payment").removeClass("active");
        document.getElementById("carRentalOrdersList").style.display = 'none';
        document.getElementById("parkingOrdersList").style.display = 'block';
        document.getElementById("loadOrdersList").style.display = 'none';
        document.getElementById("paymentList").style.display = 'none';
    }

    function changeLoadOrdrt() {
        $("#carRentalOrders").removeClass("active");
        $("#parkingOrders").removeClass("active");
        $("#loadOrders").addClass("active");
        $("#payment").removeClass("active");
        document.getElementById("carRentalOrdersList").style.display = 'none';
        document.getElementById("parkingOrdersList").style.display = 'none';
        document.getElementById("loadOrdersList").style.display = 'block';
        document.getElementById("paymentList").style.display = 'none';
    }

    function changePayment() {
        $("#carRentalOrders").removeClass("active");
        $("#parkingOrders").removeClass("active");
        $("#loadOrders").removeClass("active");
        $("#payment").addClass("active");
        document.getElementById("carRentalOrdersList").style.display = 'none';
        document.getElementById("parkingOrdersList").style.display = 'none';
        document.getElementById("loadOrdersList").style.display = 'none';
        document.getElementById("paymentList").style.display = 'block';
    }

</script>
</body>
</html>
