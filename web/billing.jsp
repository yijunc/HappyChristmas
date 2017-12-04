<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/12/4
  Time: 22:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<html>
<%@include file="templates/headers.jsp" %>

<body class="body-wrapper">
<div class="page-loader" style="background: url(img/preloader.gif) center no-repeat #fff;"></div>
<div class="main-wrapper">
    <header>
        <%@include file="templates/navbars.jsp" %>
    </header>


    <!-- PROCESS SECTION -->
    <section class="clearfix processSection">
        <div class="container">
            <div class="row">
                <div class="col-xs-12">
                    <div class="processArea">
                        <ul class="list-inline">
                            <li>
                                <h2>Your Billing Information</h2>
                                <form class="loginForm">
                                    <div class="form-group">
                                        <input type="text" class="form-control" id="cardHOlderName"
                                               placeholder="Cardholder Name">
                                    </div>
                                    <div class="form-group">
                                        <i class="fa fa-credit-card" aria-hidden="true"></i>
                                        <input type="text" class="form-control" id="cardNumber"
                                               placeholder="Card Number">
                                    </div>
                                    <div class="row">
                                        <div class="col-sm-6 col-xs-12">
                                            <div class="dateSelect">
                                                <div class="input-group date ed-datepicker filterDate"
                                                     data-provide="datepicker">
                                                    <input type="text" class="form-control" placeholder="mm/dd/yyyy">
                                                    <div class="input-group-addon">
                                                        <i class="fa fa-calendar" aria-hidden="true"></i>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-6 col-xs-12">
                                            <div class="form-group">
                                                <i class="fa fa-question-circle-o" aria-hidden="true"></i>
                                                <input type="text" class="form-control" id="cvc" placeholder="CVC">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="checkbox">
                                        <label>
                                            <input type="checkbox"> By confirming you agree to Listty <a
                                                href="terms-of-services.html">Terms of Service</a>
                                        </label>
                                    </div>
                                    <div class="form-group mgnBtm0">
                                        <button type="submit" class="btn btn-primary">Confirm Purchase</button>
                                    </div>
                                </form>
                            </li>
                            <li>
                                <h2>Your Purchase</h2>
                                <h3>predictive Analytics for business Nanodegree </h3>
                                <p>$1550.00</p>
                            </li>
                        </ul>
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

