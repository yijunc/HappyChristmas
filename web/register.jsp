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
                            <form action="/UserController?command=USER_REGISTER" method="post" id="registerForm">
                                <div class="formSection">
                                    <h3>基本信息与联络方式</h3>
                                    <div class="row">
                                        <div class="form-group col-xs-12">
                                            <label for="name" class="control-label">真实姓名*
                                                <span style="color: red;" id="tip1" hidden="hidden"><i
                                                        class="fa fa-times" aria-hidden="true"> </i>用户名长度不合法 </span>
                                                <span style="color: red;" id="tip2" hidden="hidden"><i
                                                        class="fa fa-times" aria-hidden="true"> </i>用户名已经被注册</span>
                                            </label>
                                            <input type="text" class="form-control" id="name" name="user_name"
                                                   placeholder="长度小于6字符">
                                        </div>
                                        <div class="form-group col-xs-6">
                                            <label for="email" class="control-label">电子邮件信箱</label>
                                            <input type="email" class="form-control" id="email" name="user_email" placeholder="可选，非强制">
                                        </div>
                                        <div class="form-group col-xs-6">
                                            <label for="cell" class="control-label">手机号*
                                                <span style="color: red;" id="tip3" hidden="hidden"><i
                                                        class="fa fa-times" aria-hidden="true"> </i>手机号长度不合法 </span>
                                                <span style="color: red;" id="tip4" hidden="hidden"><i
                                                        class="fa fa-times" aria-hidden="true"> </i>手机号已经被注册</span>
                                            </label>

                                            <input type="text" class="form-control" id="cell" name="user_cell"
                                                   placeholder="请输入长度为11的手机号">
                                        </div>
                                    </div>
                                </div>
                                <div class="formSection">
                                    <h3>账号信息</h3>
                                    <div class="row">
                                        <div class="form-group col-sm-6 col-xs-12">
                                            <label for="passwordFirst" class="control-label">请输入密码*
                                                <span style="color: red;" id="tip5" hidden="hidden"><i
                                                        class="fa fa-times" aria-hidden="true"></i>密码长度不合法</span>
                                            </label>

                                            <input type="password" class="form-control" id="passwordFirst"
                                                   name="user_psw" placeholder="长度大于6字符，小于18字符">
                                        </div>
                                        <div class="form-group col-sm-6 col-xs-12">
                                            <label for="passwordAgain" class="control-label">请再次输入密码*
                                                <span style="color: red;" id="tip6" hidden="hidden"><i
                                                        class="fa fa-times" aria-hidden="true"></i>两次输入密码不一致 </span>
                                            </label>
                                            <input type="password" class="form-control" id="passwordAgain">
                                        </div>
                                    </div>
                                </div>
                                <div class="formSection">
                                    <div class="row">
                                        <div class="form-group col-xs-12">
                                            <div class="checkbox">
                                                <label>
                                                    <input type="checkbox" id="checkInfo">
                                                    我同意网站的使用条款，并保证上述提供的信息均为真实信息。
                                                </label>
                                            </div>
                                        </div>
                                        <div class="form-group col-xs-12">
                                            <button type="button" class="btn btn-primary" id="sub_mit" disabled="disabled">立刻创建新账号</button>
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

<script>
    var cb = $("#checkInfo");
    cb.change(function () {
        var sbtn = $("#sub_mit");
        if(cb.prop('checked')){
            sbtn.removeAttr("disabled");
        }
        else {
            sbtn.attr("disabled","disabled");
        }
    });

    $("#sub_mit").click(
        function () {
            var userName = $("#name").val();
            var userCell = $("#cell").val();
            var pswFirst = $("#passwordFirst").val();
            var pswAgain = $("#passwordAgain").val();
            var ok = true;
            if (userName.length > 6 || userName < 1) {
                ok = false;
                $("#tip1").removeAttr("hidden");
            }
            if (ok) {
                $.get("UserController?command=CHECK_NAME",
                    {
                        user_name: userName
                    },
                    function (data, textStatus) {
                        if (data == "true") {
                            $("#tip2").removeAttr("hidden");
                            ok = false;
                        }
                        if (ok) {
                            if (isNaN(userCell) || userCell.length != 11) {
                                $("#tip3").removeAttr("hidden");
                                ok = false;
                            }
                        }
                        if (ok) {
                            $.get("UserController?command=CHECK_CELL",
                                {
                                    user_cell: userCell
                                },
                                function (data, textStatus) {
                                    if (data == "true") {
                                        $("#tip4").removeAttr("hidden");
                                        ok = false;
                                    }
                                    if (ok) {
                                        if (pswFirst.length < 6 || pswFirst.length > 20) {
                                            $("#tip5").removeAttr("hidden");
                                            ok = false;
                                        }
                                    }
                                    if (ok) {
                                        if (pswAgain != pswFirst) {
                                            $("#tip6").removeAttr("hidden");
                                            ok = false;
                                        }
                                    }
                                    if (ok) {
                                        $("#registerForm").submit();
                                    }
                                }
                            )
                        }
                    }
                )
            }
        }
    );

    $("#name").focus(
        function () {
            $("#tip1").attr("hidden", "hidden");
            $("#tip2").attr('hidden', 'hidden');
        }
    );

    $("#cell").focus(
        function () {
            $("#tip3").attr("hidden", "hidden");
            $("#tip4").attr('hidden', 'hidden');
        }
    );

    $("#passwordFirst").focus(
        function () {
            $("#tip5").attr("hidden", "hidden");
        }
    );

    $("#passwordAgain").focus(
        function () {
            $("#tip6").attr("hidden", "hidden");
        }
    );
</script>
</body>
</html>
