<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/12/1
  Time: 13:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" %>
<html>
<%@include file="/templates/headers.jsp" %>

<head>
    <title>用户注册</title>
</head>
<body class="body-wrapper">
<div class="page-loader" style="background: url(img/preloader.gif) center no-repeat #fff;"></div>
<div class="main-wrapper">
    <header id="pageTop" class="header">
        <%@include file="templates/navbars.jsp" %>
    </header>

    <!-- PAGE TITLE SECTION -->
    <section class="clearfix pageTitleSection">
        <div class="container">
            <div class="row">
                <div class="col-xs-12">
                    <div class="pageTitle">
                        <h2>HAPPY CHRISTMAS 用户注册</h2>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- SIGN UP SECTION -->
    <section class="clearfix signUpSection">
        <div class="container">
            <div class="row">
                <div class="col-xs-12">
                    <div class="signUpFormArea">
                        <div class="priceTableTitle">
                            <h2>新用户注册</h2>
                            <p>请填写以下表格以注册一个新账号。当管理员同意后，您将成为网站的新用户。如果你已经拥有了网站账号，请<a
                                        href="login.jsp">登录</a>.</p>
                        </div>
                        <div class="signUpForm">
                            <form action="/UserController?command=USER_REGISTER">
                                <div class="formSection">
                                    <h3>基本信息与联络方式</h3>
                                    <div class="row">
                                        <div class="form-group col-xs-12">
                                            <label for="firstName" class="control-label">真实姓名*</label>
                                            <input type="text" class="form-control" id="firstName" name="user_name">
                                        </div>
                                        <div class="form-group col-xs-6">
                                            <label for="emailAdress" class="control-label">电子邮件信箱*</label>
                                            <input type="email" class="form-control" id="emailAdress" name="user_email">
                                        </div>
                                        <div class="form-group col-xs-6">
                                            <label for="cell" class="control-label">手机号*</label>
                                            <input type="email" class="form-control" id="cell" name="user_cell">
                                        </div>
                                    </div>
                                </div>
                                <div class="formSection">
                                    <h3>账号信息</h3>
                                    <div class="row">
                                        <div class="form-group col-sm-6 col-xs-12">
                                            <label for="passwordFirst" class="control-label">请输入密码*</label>
                                            <input type="password" class="form-control" id="passwordFirst" name="user_psw">
                                        </div>
                                        <div class="form-group col-sm-6 col-xs-12">
                                            <label for="passwordAgain" class="control-label">请再次输入密码*</label>
                                            <input type="password" class="form-control" id="passwordAgain">
                                        </div>
                                    </div>
                                </div>
                                <div class="formSection">
                                    <div class="row">
                                        <div class="form-group col-xs-12">
                                            <div class="checkbox">
                                                <label>
                                                    <input type="checkbox">
                                                    我同意网站的使用条款，并保证上述提供的信息均为真实信息。
                                                </label>
                                            </div>
                                        </div>
                                        <div class="form-group col-xs-12 mb0">
                                            <button type="submit" class="btn btn-primary">立刻创建新账号</button>
                                        </div>
                                    </div>
                                </div>
                            </form>
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
