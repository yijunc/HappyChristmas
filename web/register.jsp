<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/12/1
  Time: 13:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<head>

    <!-- SITE TITTLE -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>All business - Listty</title>

    <!-- PLUGINS CSS STYLE -->
    <link href="plugins/jquery-ui/jquery-ui.min.css" rel="stylesheet">
    <link href="plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <link href="plugins/listtyicons/style.css" rel="stylesheet">
    <link href="plugins/bootstrapthumbnail/bootstrap-thumbnail.css" rel="stylesheet">
    <link href="plugins/datepicker/datepicker.min.css" rel="stylesheet">
    <link href="plugins/selectbox/select_option1.css" rel="stylesheet">
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
    <header id="pageTop" class="header">

        <!-- TOP INFO BAR -->

        <div class="nav-wrapper navbarWhite">

            <div class="container-fluid header-bg">
                <div class="row">
                    <div class="col-lg-4 col-sm-4 col-xs-6 header-left empty">empty
                    </div>
                    <div class="col-lg-8 col-sm-8 col-xs-6 header-right empty">empty
                    </div>
                </div>
            </div>

            <!-- NAVBAR -->
            <nav id="menuBar" class="navbar navbar-default lightHeader" role="navigation">
                <div class="container">

                    <!-- Brand and toggle get grouped for better mobile display -->
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle" data-toggle="collapse"
                                data-target=".navbar-ex1-collapse">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <a class="navbar-brand" href="index.html"><img src="img/logo-blue.png" alt="logo"></a>
                    </div>

                    <!-- Collect the nav links, forms, and other content for toggling -->
                    <div class="collapse navbar-collapse navbar-ex1-collapse">
                        <ul class="nav navbar-nav navbar-right">
                            <li class=" dropdown singleDrop">
                                <a href="" class="dropdown-toggle" data-toggle="dropdown" role="button"
                                   aria-haspopup="true" aria-expanded="false">home <i class="fa fa-angle-down"
                                                                                      aria-hidden="true"></i></a>
                                <ul class="dropdown-menu dropdown-menu-right">
                                    <li><a href="index.html">Map Version</a></li>
                                    <li><a href="index-2.html">Travel Version</a></li>
                                    <li><a href="index-3.html">Automobile Version</a></li>
                                </ul>
                            </li>
                            <li class=" dropdown megaDropMenu">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button"
                                   aria-haspopup="true" aria-expanded="false">Listing <i class="fa fa-angle-down"
                                                                                         aria-hidden="true"></i></a>
                                <ul class="row dropdown-menu">
                                    <li class="col-sm-4 col-xs-12">
                                        <ul class="list-unstyled">
                                            <li><h5>listing Grids</h5></li>
                                            <li><a href="category-grid.html">Listing Grid Left</a></li>
                                            <li><a href="category-grid-right.html">Listing Grid Right</a></li>
                                            <li><a href="category-grid-full.html">Listing Grid Fullwidth</a></li>
                                            <li><h5>listing lists</h5></li>
                                            <li><a href="category-list-left.html">Listing list Left</a></li>
                                            <li><a href="category-list-right.html">Listing list Right</a></li>
                                            <li><a href="category-list-full.html">Listing list Full</a></li>
                                        </ul>
                                    </li>
                                    <li class="col-sm-4 col-xs-12">
                                        <ul class="list-unstyled">
                                            <li><h5>listing Sidebar Map</h5></li>
                                            <li><a href="listing-sidebar-map-left.html">Listing Sidebar Map left</a>
                                            </li>
                                            <li><a href="listing-sidebar-map-right.html">Listing Sidebar Map right</a>
                                            </li>
                                            <li><a href="listing-sidebar-map-full.html">Listing Sidebar Map Full</a>
                                            </li>
                                            <li><h5>listing Details</h5></li>
                                            <li><a href="listing-details-left.html">Listing Details Left</a></li>
                                            <li><a href="listing-details-right.html">Listing Details Right</a></li>
                                            <li><a href="listing-details-full.html">Listing Details Full</a></li>
                                        </ul>
                                    </li>
                                    <li class="col-sm-4 col-xs-12">
                                        <ul class="list-unstyled">
                                            <li class="mega-img">
                                                <a href=""><img src="img/works/works-big-3.png" alt=""></a>
                                            </li>
                                        </ul>
                                    </li>
                                </ul>
                            </li>
                            <li class="active dropdown singleDrop">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button"
                                   aria-haspopup="true" aria-expanded="false">pages <i class="fa fa-angle-down"
                                                                                       aria-hidden="true"></i></a>
                                <ul class="dropdown-menu dropdown-menu-left">
                                    <li><a href="contact-us.html">Contact Us</a></li>
                                    <li><a href="terms-of-services.html">Terms and Conditions</a></li>
                                    <li><a href="sign-up.html">Create Account</a></li>
                                    <li><a href="login.html">Login</a></li>
                                    <li><a href="pricing-table.html">Pricing</a></li>
                                    <li><a href="payment-process.html">Payment</a></li>
                                    <li><a href="how-it-works.html">How It Works</a></li>
                                </ul>
                            </li>
                            <li class=""><a href="blog.html">blog </a></li>
                            <li class=" dropdown singleDrop">
                                <a href="javascript:void(0)" class="dropdown-toggle" data-toggle="dropdown"
                                   role="button" aria-haspopup="true" aria-expanded="false">admin <i
                                        class="fa fa-angle-down" aria-hidden="true"></i></a>
                                <ul class="dropdown-menu dropdown-menu-right">
                                    <li><a href="dashboard.html">Dashboard</a></li>
                                    <li><a href="add-listings.html">Add Listing</a></li>
                                    <li><a href="edit-listings.html">Edit Listing</a></li>
                                    <li><a href="listings.html">My Listings</a></li>
                                    <li><a href="profile.html">My Profile</a></li>
                                    <li><a href="oders.html">My Orders</a></li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                    <button class="btn btn-default navbar-btn" type="button" data-toggle="modal"
                            data-target="#loginModal"> + <span>Add Listing</span></button>
                </div>
            </nav>
        </div>
    </header>


    <!-- PAGE TITLE SECTION -->
    <section class="clearfix pageTitleSection" style="background-image: url();">
        <div class="container">
            <div class="row">
                <div class="col-xs-12">
                    <div class="pageTitle">
                        <h2>Sign Up Page</h2>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- SIGN UP SECTION -->
    <section class="clearfix signUpSection">
        <div class="container">
            <div class="row">
                <div class="col-sm-4 col-xs-12">
                    <div class="priceTableWrapper">
                        <div class="priceTableTitle">
                            <h2>Free
                                <small>Need Free Support</small>
                            </h2>
                        </div>
                        <div class="priceAmount">
                            <h2>0
                                <small>USD/Year</small>
                            </h2>
                        </div>
                        <div class="priceInfo">
                            <div class="priceShorting">
                                <div class="checkbox-radio">
                                    <input id="checkbox41" type="checkbox" name="checkbox" value="41">
                                    <label for="checkbox41">
                                        <span></span>Not Highlighted listing
                                    </label>
                                </div>
                                <div class="checkbox-radio">
                                    <input id="checkbox42" type="checkbox" name="checkbox" value="42">
                                    <label for="checkbox42">
                                        <span></span>Low listing placement on:
                                    </label>
                                </div>
                                <div class="checkbox-radio marginCheck">
                                    <input id="radio41" type="radio" name="radio" value="41">
                                    <label for="radio41">
                                        <span><span></span></span>Search results
                                    </label>
                                </div>
                                <div class="checkbox-radio marginCheck">
                                    <input id="radio42" type="radio" name="radio" value="42">
                                    <label for="radio42">
                                        <span><span></span></span>Selected categories
                                    </label>
                                </div>
                                <div class="checkbox-radio marginCheck">
                                    <input id="radio43" type="radio" name="radio" value="43">
                                    <label for="radio43">
                                        <span><span></span></span>Added keywords
                                    </label>
                                </div>
                            </div>
                            <ul class="list-unstyled">
                                <li>6 Products</li>
                                <li>8 Photos</li>
                                <li>5 Keywords</li>
                                <li>6 Categories</li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-sm-8 col-xs-12">
                    <div class="signUpFormArea">
                        <div class="priceTableTitle">
                            <h2>Account Registration</h2>
                            <p>Please fill out the fields below to create your account. We will send your account
                                information to the email address you enter. Your email address and information will NOT
                                be sold or shared with any 3rd party. If you already have an account, please, <a
                                        href="login.html">click here</a>.</p>
                        </div>
                        <div class="signUpForm">
                            <form action="#">
                                <div class="formSection">
                                    <h3>Contact Information</h3>
                                    <div class="row">
                                        <div class="form-group col-sm-6 col-xs-12">
                                            <label for="firstName" class="control-label">First Name*</label>
                                            <input type="text" class="form-control" id="firstName">
                                        </div>
                                        <div class="form-group col-sm-6 col-xs-12">
                                            <label for="lastName" class="control-label">Last Name*</label>
                                            <input type="text" class="form-control" id="lastName">
                                        </div>
                                        <div class="form-group col-xs-12">
                                            <label for="emailAdress" class="control-label">Email Address*</label>
                                            <input type="email" class="form-control" id="emailAdress">
                                        </div>
                                    </div>
                                </div>
                                <div class="formSection">
                                    <h3>Account Information</h3>
                                    <div class="row">
                                        <div class="form-group col-xs-12">
                                            <label for="usernames" class="control-label">Username*</label>
                                            <input type="text" class="form-control" id="usernames">
                                        </div>
                                        <div class="form-group col-sm-6 col-xs-12">
                                            <label for="passwordFirst" class="control-label">Password*</label>
                                            <input type="password" class="form-control" id="password">
                                        </div>
                                        <div class="form-group col-sm-6 col-xs-12">
                                            <label for="passwordAgain" class="control-label">Password (re-type)*</label>
                                            <input type="password" class="form-control" id="passwordAgain">
                                        </div>
                                    </div>
                                </div>
                                <div class="formSection">
                                    <h3>Security Control</h3>
                                    <div class="row">
                                        <div class="form-group col-xs-12">
                                            <label for="usernames" class="control-label">Confirm that you are
                                                human*</label>
                                            <img src="img/business/recaptcha.jpg" alt="Image captcha"
                                                 class="img-responsive img-rtl">
                                        </div>
                                        <div class="form-group col-xs-12">
                                            <div class="checkbox">
                                                <label>
                                                    <input type="checkbox">
                                                    I agree to the <a href="terms-of-services.html">Terms of Use</a> &
                                                    <a href="#">Privacy Policy</a>. Your business listing is fully
                                                    backed by our 100% money back guarantee.
                                                </label>
                                            </div>
                                        </div>
                                        <div class="form-group col-xs-12 mb0">
                                            <button type="submit" class="btn btn-primary">Create Account</button>
                                        </div>
                                    </div>
                                </div>
                                <div class="formSection">
                                    <div class="cardBox">
                                        <div class="paymentMethod">
                                            <img src="img/business/paypal.png" alt="Image paypal">
                                        </div>
                                        <ul class="list-inline">
                                            <li><a href="#"><img src="img/business/visa.jpg" alt="Image card"></a></li>
                                            <li><a href="#"><img src="img/business/master-card.jpg"
                                                                 alt="Image card"></a></li>
                                            <li><a href="#"><img src="img/business/american-express.jpg"
                                                                 alt="Image card"></a></li>
                                            <li><a href="#"><img src="img/business/discover.jpg" alt="Image card"></a>
                                            </li>
                                        </ul>
                                    </div>
                                    <p>We use <span>PayPal</span> to process all transactions securely. <span>Payments can be made using any major credit card, without the need for a PayPal account</span>.
                                        If you already have a PayPal account, you can also pay with PayPal funds or
                                        through your bank account. We don't keep any credit card information stored on
                                        our site. No tax is added to your order. For more information <a
                                                href="https://www.paypal.com">www.paypal.com</a></p>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- FOOTER -->
    <footer style="background-image: url(img/background/bg-footer.jpg);">
        <!-- FOOTER INFO -->
        <div class="clearfix footerInfo">
            <div class="container">
                <div class="row">
                    <div class="col-sm-7 col-xs-12">
                        <div class="footerText">
                            <a href="index.html" class="footerLogo"><img src="img/logo-footer.png"
                                                                         alt="Footer Logo"></a>
                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor
                                incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud
                                exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure
                                dolor</p>
                            <ul class="list-styled list-contact">
                                <li><i class="fa fa-phone" aria-hidden="true"></i>[88] 657 524 332</li>
                                <li><i class="fa fa-envelope" aria-hidden="true"></i><a href="#">info@listy.com</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-sm-3 col-xs-12">
                        <div class="footerInfoTitle">
                            <h4>Links</h4>
                        </div>
                        <div class="useLink">
                            <ul class="list-unstyled">
                                <li><a href="dashboard.html">Dashboard</a></li>
                                <li><a href="sign-up.html">Create Account</a></li>
                                <li><a href="login.html">Login</a></li>
                                <li><a href="add-listings.html">Add Listing</a></li>
                                <li><a href="edit-listings.html">Edit Listing</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-sm-2 col-xs-12">
                        <div class="footerInfoTitle">
                            <h4>Company</h4>
                        </div>
                        <div class="useLink">
                            <ul class="list-unstyled">
                                <li><a href="contact-us.html">Contact Us</a></li>
                                <li><a href="terms-of-services.html">Terms and Conditions</a></li>
                                <li><a href="how-it-works.html">How It Works</a></li>
                                <li><a href="payment-process.html">Payment</a></li>
                                <li><a href="pricing-table.html">Pricing</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- COPY RIGHT -->
        <div class="clearfix copyRight">
            <div class="container">
                <div class="row">
                    <div class="col-xs-12">
                        <div class="copyRightWrapper">
                            <div class="row">
                                <div class="col-sm-5 col-sm-push-7 col-xs-12">
                                    <ul class="list-inline socialLink">
                                        <li><a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
                                        <li><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
                                        <li><a href="#"><i class="fa fa-pinterest-p" aria-hidden="true"></i></a></li>
                                        <li><a href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a></li>
                                    </ul>
                                </div>
                                <div class="col-sm-7 col-sm-pull-5 col-xs-12">
                                    <div class="copyRightText">
                                        <p>Copyright &copy; 2017. All Rights Reserved by <a href="#">Abdus</a></p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </footer>
</div>

<!-- LOGIN  MODAL -->
<div id="loginModal" tabindex="-1" class="modal fade" role="dialog">
    <div class="modal-dialog">

        <!-- Modal content-->
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title">Log In to your Account</h4>
            </div>
            <div class="modal-body">
                <form class="loginForm">
                    <div class="form-group">
                        <i class="fa fa-envelope" aria-hidden="true"></i>
                        <input type="email" class="form-control" id="email" placeholder="Email">
                    </div>
                    <div class="form-group">
                        <i class="fa fa-lock" aria-hidden="true"></i>
                        <input type="password" class="form-control" id="pwd" placeholder="Password">
                    </div>
                    <div class="form-group">
                        <button type="submit" class="btn btn-primary btn-block">Log In</button>
                    </div>
                    <div class="checkbox">
                        <label><input type="checkbox"> Remember me</label>
                        <a href="#" class="pull-right link">Fogot Password?</a>
                    </div>

                </form>
            </div>
            <div class="modal-footer">
                <p>Don’t have an Account? <a href="#" class="link">Sign up</a></p>
            </div>
        </div>

    </div>
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
<script src="plugins/owl-carousel/owl.carousel.min.js"></script>
<script src="plugins/isotope/isotope.min.js"></script>
<script src="plugins/fancybox/jquery.fancybox.pack.js"></script>
<script src="plugins/isotope/isotope-triger.min.js"></script>
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBEDfNcQRmKQEyulDN8nGWjLYPm8s4YB58"></script>
<script src="plugins/map/js/rich-marker.js"></script>
<script src="plugins/map/js/infobox_packed.js"></script>
<script src="js/single-map.js"></script>
<script src="js/map.js"></script>
<script src="js/custom.js"></script>

</body>
</html>