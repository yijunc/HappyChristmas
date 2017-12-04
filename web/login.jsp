<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/11/30
  Time: 16:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" %>
<html>

<%@include file="templates/headers.jsp" %>

<head>
    <title>用户登录</title>
</head>

<body class="body-wrapper">
<div class="page-loader" style="background: url(/img/preloader.gif) center no-repeat #fff;"></div>
<div class="main-wrapper">
    <!-- HEADER -->
    <header id="pageTop" class="header">
        <%@include file="templates/navbars.jsp" %>
    </header>

    <!-- LOGIN SECTION -->

    <style type="text/css">
        .panel-body .fa {
            margin-left: 4%;
            margin-top: 7%;
        }
    </style>

    <section class="clearfix loginSection">
        <div class="container">
            <div class="row">
                <div class="center-block col-md-5 col-sm-6 col-xs-12">
                    <div class="panel panel-default loginPanel">
                        <div class="panel-heading text-center">用户登录</div>
                        <div class="panel-body">
                            <form class="loginForm" action="/UserController" method="post">
                                <input type="hidden" name="command" value="LOGIN"/>
                                <div class="form-group">
                                    <label for="user_name">用户名：</label>
                                    <i class="fa fa-user fa-lg" aria-hidden="true"></i>
                                    <input type="text" class="form-control" id="user_name" name="user_name">
                                    <p class="help-block">请输入你的用户名</p>
                                </div>
                                <div class="form-group">
                                    <label for="user_psw">密码：</label>
                                    <i class="fa fa-lock fa-lg" aria-hidden="true"></i>
                                    <input type="password" class="form-control" id="user_psw" name="user_psw">
                                    <p class="help-block">请输入当前用户名所对应的密码</p>
                                </div>

                                <div class="form-group">
                                    <button type="submit" class="btn btn-primary">登录</button>
                                    <a href="#" class="pull-right link">忘记密码?</a>
                                </div>
                            </form>
                        </div>
                        <div class="panel-footer text-center">
                            <p>还没有账号？<a href="/register.jsp" class="link">注册新用户</a></p>
                        </div>
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
