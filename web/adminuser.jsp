<%@ page import="java.util.List" %>
<%@ page import="bean.User" %>
<%@ page import="java.net.URLDecoder" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/12/4
  Time: 21:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<html>
<%@include file="templates/headers.jsp" %>

<header>
    <title>用户管理</title>
</header>

<body class="body-wrapper">
<div class="page-loader" style="background: url(img/preloader.gif) center no-repeat #fff;"></div>
<div class="main-wrapper">
    <header id="pageTop" class="header">
        <%@include file="templates/navbars.jsp" %>
        <%@include file="templates/adminnavbar.jsp" %>
    </header>


    <!-- DASHBOARD ORDERS SECTION -->
    <section class="clearfix bg-dark dashboardOrders">
        <div class="container">
            <div class="row">
                <div class="col-xs-12">
                    <div class="dashboardPageTitle text-center">
                        <h2>网站用户管理</h2>
                    </div>
                    <div class="dashboardBoxBg mb30">
                        <div class="profileIntro">
                            <form action="/UserController" method="POST" class="row" id="userSearchForm">
                                <input type="hidden" name="command" value="ADMIN_USER"/>
                                <div class="form-group col-md-4 col-sm-6 col-xs-12">
                                    <label for="userId">用户ID</label>
                                    <input type="text" class="form-control" id="userId" placeholder="请输入用户ID"
                                           name="user_id" value=<%=session.getAttribute("useradmin_user_id") == null ? "" : session.getAttribute("useradmin_user_id")%>>
                                </div>
                                <div class="form-group col-md-4 col-sm-6 col-xs-12">
                                    <label for="userStatus">用户状态</label>
                                    <div class="contactSelect">
                                        <select id="userStatus" class="select-drop" name="user_status">
                                            <option value="3">全部状态</option>
                                            <option value="1">已激活</option>
                                            <option value="2">待审核</option>
                                            <option value="0">已冻结</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group col-md-4 col-sm-6 col-xs-12">
                                    <label for="userName">用户名</label>
                                    <input type="text" class="form-control" id="userName" placeholder="请输入用户名"
                                    name="user_name" value=<%=session.getAttribute("useradmin_user_name") == null ? "" : session.getAttribute("useradmin_user_name")%>>
                                    <%--<%--%>
                                        <%--Cookie cookie = null;--%>
                                        <%--Cookie[] cookies = null;--%>
                                        <%--// 获取cookies的数据,是一个数组--%>
                                        <%--cookies = request.getCookies();--%>
                                        <%--boolean hasUserNameRec = false;--%>
                                        <%--if (cookies != null) {--%>
                                            <%--for (int i = 0; i < cookies.length; i++) {--%>
                                                <%--cookie = cookies[i];--%>
                                                <%--if (cookie.getName().equals("user_name")) {--%>
                                                    <%--String name = URLDecoder.decode(cookie.getValue(),"utf-8");--%>
                                                    <%--System.out.println("参数名 : " + name);--%>
                                    <%--%>--%>
                                    <%--<input type="text" class="form-control" id="userName" placeholder="请输入用户名"--%>
                                           <%--name="user_name" value=<%=name%>>--%>

                                    <%--<%--%>
                                                    <%--hasUserNameRec = true;--%>
                                                    <%--break;--%>
                                                <%--}--%>
                                            <%--}--%>
                                        <%--}--%>
                                        <%--if(!hasUserNameRec){--%>
                                    <%--%>--%>
                                    <%--<input type="text" class="form-control" id="userName" placeholder="请输入用户名"--%>
                                           <%--name="user_name">--%>
                                    <%--<%--%>
                                        <%--}--%>
                                    <%--%>--%>
                                </div>
                                <div class="form-group col-md-4 col-sm-6 col-xs-12">
                                    <label for="dateLastLogined">最后登录日期</label>
                                    <div class="dateSelect">
                                        <div class="input-group date ed-datepicker filterDate"
                                             data-provide="datepicker">
                                            <input type="text" class="form-control" placeholder="月/日/年"
                                                   id="dateLastLogined" name="date_last_logined" value="">
                                            <div class="input-group-addon">
                                                <i class="fa fa-calendar" aria-hidden="true"></i>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group col-md-4 col-sm-6 col-xs-12">
                                    <label for="dateRegister">用户注册日期</label>
                                    <div class="dateSelect">
                                        <div class="input-group date ed-datepicker filterDate"
                                             data-provide="datepicker">
                                            <input type="text" class="form-control" placeholder="月/日/年"
                                                   id="dateRegister" name="date_register" value="">
                                            <div class="input-group-addon">
                                                <i class="fa fa-calendar" aria-hidden="true"></i>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group col-md-4 col-sm-6 col-xs-12">
                                    <label for="dateDealed">最后订单成交日期</label>
                                    <div class="dateSelect">
                                        <div class="input-group date ed-datepicker filterDate"
                                             data-provide="datepicker">
                                            <input type="text" class="form-control" placeholder="月/日/年" id="dateDealed"
                                                   name="date_dealed" value="">
                                            <div class="input-group-addon">
                                                <i class="fa fa-calendar" aria-hidden="true"></i>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xs-6">
                                    <script type="text/javascript">
                                        function formReset() {

                                        }
                                    </script>
                                    <button type="button" class="btn btn-primary btn-lg">&nbsp;&nbsp;<i
                                            class="fa fa-search" aria-hidden="true" ></i>搜索&nbsp;&nbsp;
                                    </button>
                                    <button type="button" class="btn btn-primary btn-lg" onclick="formReset()">&nbsp;&nbsp;<i
                                            class="fa fa-circle-o" aria-hidden="true"></i>清空&nbsp;&nbsp;
                                    </button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>

                <div class="col-xs-12">
                    <div class="table-responsive bgAdd" data-pattern="priority-columns">
                        <table id="ordersTable" class="table table-small-font table-bordered table-striped"
                               cellspacing="0" width="100%">
                            <thead>
                            <tr>
                                <th>用户 ID</th>
                                <th data-priority="">用户名</th>
                                <th data-priority="6">用户注册日期</th>
                                <th data-priority="6">最后登录日期</th>
                                <th data-priority="6">最后成交日期</th>
                                <th data-priority="3">用户状态</th>
                                <th data-priority="2">操作</th>
                            </tr>
                            </thead>
                            <tfoot>
                            <tr>
                                <th>用户 ID</th>
                                <th>用户名</th>
                                <th>用户注册日期</th>
                                <th>最后登录日期</th>
                                <th>最后成交日期</th>
                                <th>用户状态</th>
                                <th>操作</th>
                            </tr>
                            </tfoot>
                            <tbody>
                            <%
                                Boolean empty = (Boolean) request.getAttribute("empty");
                                if (empty == null) {
                                    empty = true;
                                }
                                if (!empty) {
                                    List<User> result = (List<User>) request.getAttribute("user_list");
                                    for (User mUser : result) { %>
                            <tr>
                                <td><%=mUser.getUserId()%>
                                </td>
                                <td><%=mUser.getUserName()%>
                                </td>
                                <td><%=mUser.getUserRegisterDate()%>
                                </td>
                                <td><%=mUser.getUserLastSeen()%>
                                </td>
                                <td>
                                    <%
                                        if (mUser.getUserLastOrderDate() == null) {
                                            out.print("无最后下单时间");
                                        } else {
                                            out.print(mUser.getUserLastOrderDate());
                                        }
                                    %>
                                </td>
                                <%
                                    switch (mUser.getUserValid()) {
                                        case 0:%>
                                <td><span class="label label-danger">已冻结</span></td>
                                <%
                                        break;
                                    case 1:%>
                                <td><span class="label label-success">已激活</span></td>
                                <%
                                        break;
                                    case 2:%>
                                <td><span class="label label-warning">待审核</span></td>
                                <%
                                            break;
                                    }
                                %>
                                <td>
                                    <div class="btn-group">
                                        <button type="button" class="btn btn-primary">查看用户详情</button>
                                        <button type="button" class="btn btn-primary">审核通过</button>
                                        <button type="button" class="btn btn-primary">冻结账户</button>
                                    </div>
                                </td>
                            </tr>
                            <%
                                    }
                                }
                            %>

                            </tbody>
                        </table>
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