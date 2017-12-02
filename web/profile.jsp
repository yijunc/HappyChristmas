<%--
  Created by IntelliJ IDEA.
  User: zhaoning
  Date: 2017/12/2
  Time: 下午6:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

    <!-- SITE TITTLE -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Title</title>

    <!-- PLUGINS CSS STYLE -->
    <link href="plugins/jquery-ui/jquery-ui.min.css" rel="stylesheet">
    <link href="plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <link href="plugins/listtyicons/style.css" rel="stylesheet">
    <link href="plugins/bootstrapthumbnail/bootstrap-thumbnail.css" rel="stylesheet">
    <link href="plugins/datepicker/datepicker.min.css" rel="stylesheet">
    <link href="plugins/selectbox/select_option1.css" rel="stylesheet">
    <link href="plugins/rwdtable/css/rwd-table.css" rel="stylesheet">
    <link href="plugins/owl-carousel/owl.carousel.min.css" rel="stylesheet">
    <link href="plugins/fancybox/jquery.fancybox.pack.css" rel="stylesheet">
    <link href="plugins/isotope/isotope.min.css" rel="stylesheet">
    <link href="plugins/map/css/map.css" rel="stylesheet">

    <!-- GOOGLE FONT -->
    <link href="https://fonts.googleapis.com/css?family=Muli:200,300,400,600,700,800,900" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Herr+Von+Muellerhoff" rel="stylesheet">

    <!-- CUSTOM CSS -->
    <link href="css/style.css" rel="stylesheet">

    <!-- FAVICON -->
    <link href="img/favicon.png" rel="shortcut icon">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>
<body class="body-wrapper">
    <div class="page-loader" style="background: url(img/preloader.gif) center no-repeat #fff;"></div>
    <div class="main-wrapper">
        <!-- HEADER -->

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
                                        <button class="browse" type="button">上传头像<i class="icon-listy icon-upload"></i></button>
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
                        <ul class="nav nav-tabs">
                            <li role="presentation" class="active"><a href="#">我的租车订单</a></li>
                            <li role="presentation"><a href="#">我的停车位订单</a></li>
                            <li role="presentation"><a href="#">我的收支</a></li>
                        </ul>
                        <!-- </div> -->

                        <form>
                            <div class="dashboardBoxBg mt30">
                                <div class="profileIntro">
                                    <h2>Your Profile</h2>
                                    <p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form Ipsum available.</p>
                                </div>
                            </div>
                            <div class="dashboardBoxBg mt30">
                                <div class="profileIntro">
                                    <h3>About You</h3>
                                    <div class="row">
                                        <div class="form-group col-sm-6 col-xs-12">
                                            <label for="firstNameProfile">Fast Name</label>
                                            <input type="text" class="form-control" id="firstNameProfile" placeholder="Jane">
                                        </div>
                                        <div class="form-group col-sm-6 col-xs-12">
                                            <label for="lastNameProfile">Last Name</label>
                                            <input type="text" class="form-control" id="lastNameProfile" placeholder="Doe">
                                        </div>
                                        <div class="form-group col-sm-6 col-xs-12">
                                            <label for="emailProfile">Email</label>
                                            <input type="text" class="form-control" id="emailProfile" placeholder="Jane@example.com">
                                        </div>
                                        <div class="form-group col-sm-6 col-xs-12">
                                            <label for="phoneProfile">Phone</label>
                                            <input type="text" class="form-control" id="phoneProfile" placeholder="254 - 265 - 3265">
                                        </div>
                                        <div class="form-group col-xs-12">
                                            <label for="aboutYou">About You</label>
                                            <textarea class="form-control" rows="5" id="aboutYou" placeholder="About You"></textarea>
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
                                            <input type="text" class="form-control" id="linkedInUrl" placeholder="http://linkedin.com/listty">
                                        </div>
                                        <div class="form-group col-sm-6 col-xs-12">
                                            <label for="facebookUrl">Facebook URL</label>
                                            <input type="text" class="form-control" id="facebookUrl" placeholder="http://facebook.com/listty">
                                        </div>
                                        <div class="form-group col-sm-6 col-xs-12">
                                            <label for="twitterUrl">Twitter URL</label>
                                            <input type="text" class="form-control" id="twitterUrl" placeholder="http://twitter.com/listty">
                                        </div>
                                        <div class="form-group col-sm-6 col-xs-12">
                                            <label for="youTubeUrl">You Tube URL</label>
                                            <input type="text" class="form-control" id="youTubeUrl" placeholder="http://youtube.com/listty">
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
                                            <input type="password" class="form-control" id="currentPassword" placeholder="********">
                                        </div>
                                        <div class="form-group col-xs-12">
                                            <label for="newPassword">New Password</label>
                                            <input type="password" class="form-control" id="newPassword" placeholder="New Password">
                                        </div>
                                        <div class="form-group col-xs-12">
                                            <label for="confirmPassword">Confirm Password</label>
                                            <input type="password" class="form-control" id="confirmPassword" placeholder="Confirm Password">
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

        <!-- FOOTER -->
        <footer class="copyRightDashboard">
            <div class="container">
                <div class="row">
                    <div class="col-xs-12">
                        <p>Copyright © 2016. All Rights Reserved</p>
                    </div>
                </div>
            </div>
        </footer>
    </div>

    <!-- JAVASCRIPTS -->
    <script src="plugins/jquery/jquery.min.js"></script>
    <script src="plugins/jquery-ui/jquery-ui.min.js"></script>
    <script src="plugins/bootstrap/js/bootstrap.min.js"></script>
    <script src="plugins/smoothscroll/SmoothScroll.min.js"></script>
    <script src="plugins/waypoints/waypoints.min.js"></script>
    <script src="plugins/counter-up/jquery.counterup.min.js"></script>
    <script src="plugins/datepicker/bootstrap-datepicker.min.js"></script>
    <script src="plugins/selectbox/jquery.selectbox-0.1.3.min.js"></script>
    <script src="plugins/rwdtable/js/rwd-table.min.js"></script>
    <script src="plugins/owl-carousel/owl.carousel.min.js"></script>
    <script src="plugins/isotope/isotope.min.js"></script>
    <script src="plugins/fancybox/jquery.fancybox.pack.js"></script>
    <script src="plugins/isotope/isotope-triger.min.js"></script>
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBEDfNcQRmKQEyulDN8nGWjLYPm8s4YB58"></script>
    <script src="js/map.js"></script>

    <script src="js/custom.js"></script>
</body>
</html>
