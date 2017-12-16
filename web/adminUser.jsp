<%@ page import="java.util.List" %>
<%@ page import="bean.User" %>
<%@ page import="bean.UserSearch" %>
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
        <%@include file="templates/adminNavbar.jsp" %>
    </header>


    <!-- DASHBOARD ORDERS SECTION -->
    <section class="clearfix bg-dark dashboardOrders">
        <div class="container">
            <div class="row">
                <div class="col-xs-12">
                    <div class="dashboardPageTitle text-center">
                        <h2><b>HC</b>用户管理</h2>
                    </div>
                    <div class="dashboardBoxBg mb30">
                        <div class="profileIntro">
                            <%
                                Boolean empty = (Boolean) request.getAttribute("empty");
                                if (empty == null) {
                                    empty = true;
                                }
                                if (!empty) {
                                    UserSearch userSearchInput = (UserSearch) request.getAttribute("search_input");
                            %>
                            <form action="/UserController" method="POST" class="row" id="userSearchForm">
                                <input type="hidden" name="command" value="ADMIN_USER"/>
                                <div class="form-group col-md-4 col-sm-6 col-xs-12">
                                    <label for="userId">用户ID</label>
                                    <input type="text" class="form-control" id="userId" placeholder="请输入用户ID"
                                           name="user_id"
                                        <%if(0!=userSearchInput.getSearchId()){%>
                                           value=<%=userSearchInput.getSearchId()%>
                                        <%}%>>
                                </div>
                                <div class="form-group col-md-4 col-sm-6 col-xs-12">
                                    <label for="userName">用户名</label>
                                    <input type="text" class="form-control" id="userName" placeholder="请输入用户名"
                                           name="user_name"
                                        <%if(null!=userSearchInput.getSearchName()){%>
                                           value=<%=userSearchInput.getSearchName()%>
                                        <%}%>>
                                </div>
                                <div class="form-group col-md-4 col-sm-6 col-xs-12">
                                    <label for="userCell">用户预留手机</label>
                                    <input type="text" class="form-control" id="userCell" placeholder="请输入用户预留手机"
                                           name="user_cell"
                                        <%if(0!=userSearchInput.getSearchCell()){%>
                                           value=<%=userSearchInput.getSearchCell()%>
                                        <%}%>>
                                </div>
                                <div class="form-group col-md-4 col-sm-6 col-xs-12">
                                    <label for="userStatus">用户状态</label>
                                    <div class="contactSelect">
                                        <select id="userStatus" class="select-drop" name="user_status" size="1"
                                                multiple="false">
                                            <option value="3">不限</option>
                                            <option value="1">已激活</option>
                                            <option value="2">待审核</option>
                                            <option value="0">已冻结</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group col-md-4 col-sm-6 col-xs-12">
                                    <label for="dateLastLogined">最后登录日期</label>
                                    <div class="dateSelect">
                                        <div class="input-group date ed-datepicker filterDate"
                                             data-provide="datepicker">
                                            <input type="text" class="form-control" placeholder="月/日/年"
                                                   id="dateLastLogined" name="date_last_logined"
                                                <%if(userSearchInput.getDateLastLogined()!=null){%>
                                                   value=<%=userSearchInput.getDateLastLogined()%>
                                                <%}%>>
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
                                                   id="dateRegister" name="date_register"
                                                <%if(userSearchInput.getSearchStartDate()!=null){%>
                                                   value=<%=userSearchInput.getSearchStartDate()%>
                                                <%}%>>
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
                                                   name="date_dealed"
                                                <%if(userSearchInput.getSearchOrderDate()!=null){%>
                                                   value=<%=userSearchInput.getSearchOrderDate()%>
                                                <%}%>>
                                            <div class="input-group-addon">
                                                <i class="fa fa-calendar" aria-hidden="true"></i>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group col-md-4 col-sm-6 col-xs-12" style="padding-top: 2.3%;">
                                    <button type="button" class="btn btn-primary btn-lg" onclick="user_submit()"><i
                                            class="fa fa-search" aria-hidden="true"></i>搜索
                                    </button>
                                    <script>
                                        function user_submit() {
                                            var ok = true;
                                            if (isNaN($("input#userId").val()))//是数字返回false
                                            {
                                                alert("用户ID请输入数字哦(￣^￣)ゞ");
                                                ok = false;
                                            }
                                            if (isNaN($("input#userCell").val())) {
                                                alert("用户手机号请输入数字哦(￣^￣)ゞ");
                                                ok = false;
                                            }
                                            if (ok) {
                                                $("form#userSearchForm").submit();
                                            }
                                        }
                                    </script>
                                    <button type="button" class="btn btn-primary btn-lg" onclick="re_set()"><i
                                            class="fa fa-circle-o" aria-hidden="true"></i>清空
                                    </button>
                                    <script>
                                        function re_set() {
                                            $("input#userId").val("");
                                            // $("#userStatus").val("2");
                                            $("#userStatus").find("option:selected").attr("selected", false);
                                            $("#userStatus option[value='3']").attr("selected", true);
                                            // $("#userStatus").find("option:selected").text="hehe";
                                            // parent.$("#userStatus").load(location.href+"#userStatus");
                                            // $("#userStatus").attr("value",'3');
                                            // $("#userStatus").get(0).selectedIndex=0; //设置Select索引值为0的项选中
                                            console.log("select: " + $("#userStatus").val());
                                            console.log("select option: " + $("#userStatus").find("option:selected").text());
                                            $("input#userName").val("");
                                            $("input#dateLastLogined").val("");
                                            $("input#dateRegister").val("");
                                            $("input#dateDealed").val("");
                                            $("input#userCell").val("");
                                        }
                                    </script>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>


                <p style="height: 0px; padding-top: 10px; padding-left: 2%">共搜索到了<span style="font-weight: bold;">
                    <%
                        List<User> result = null;
                        if (!empty) {
                            result = (List<User>) request.getAttribute("user_list");
                            out.print(result.size());
                        } else {
                            out.print(0);
                        }
                    %></span> 条记录</p>
                <div class="col-xs-12">
                    <div class="table-responsive bgAdd" data-pattern="priority-columns">
                        <table id="ordersTable" class="table table-small-font table-bordered table-striped"
                               cellspacing="0" width="100%">
                            <thead>
                            <tr>
                                <th>用户 ID</th>
                                <th data-priority="">用户名</th>
                                <th data-priority="">用户密码</th>
                                <th data-priority="6">预留手机号</th>
                                <th data-priority="6">注册日期</th>
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
                                <th>用户密码</th>
                                <th>预留手机号</th>
                                <th>注册日期</th>
                                <th>最后登录日期</th>
                                <th>最后成交日期</th>
                                <th>用户状态</th>
                                <th>操作</th>
                            </tr>
                            </tfoot>
                            <tbody>
                            <%
                                for (User mUser : result) { %>
                            <tr id="result<%=mUser.getUserId()%>">
                                <td name="resultUserId"><%=mUser.getUserId()%></td>
                                <td name="resultUserName"><%=mUser.getUserName()%></td>
                                <td name="resultUserPsw"><%=mUser.getUserPsw()%></td>
                                <td name="resultUserCell"><%=mUser.getUserCell()%></td>
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
                                <td name="resultUserStatus">
                                    <%
                                        switch (mUser.getUserValid()) {
                                            case 0:%>
                                    <span class="label label-danger">已冻结</span>
                                    <%
                                            break;
                                        case 1:%>
                                    <span class="label label-success">已激活</span>
                                    <%
                                            break;
                                        case 2:%>
                                    <span class="label label-warning">待审核</span>
                                    <%
                                                break;
                                        }
                                    %>
                                </td>
                                <td>
                                    <div class="btn-group">
                                        <button type="button" class="btn btn-primary" name="editUser"
                                                value="<%=mUser.getUserId()%>">修改
                                        </button>
                                        <button type="button" class="btn btn-primary" name="activateUser"
                                                value="<%=mUser.getUserId()%>">激活
                                        </button>
                                        <button type="button" class="btn btn-primary" name="suspendUser"
                                                value="<%=mUser.getUserId()%>">冻结
                                        </button>
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

<div class="modal fade" tabindex="-1" role="dialog" id="userModal" style="padding-top: 10%">
    <div class="modal-dialog" role="document">
        <div class="modal-content" style="height: 265px;width: 675px;">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span>
                </button>
                <h4 class="modal-title">编辑用户</h4>
            </div>
            <div class="modal-body">
                <div style="padding-left: 20px;padding-right: 20px">
                    <div class="input-group input-group-sm"
                         style="padding-bottom: 30px;padding-right: 20px;float:left;width: 300px">
                        <span class="input-group-addon" style="width: 80px">用户ID&nbsp&nbsp</span>
                        <input type="text" class="form-control" disabled="disabled" id="modalUserId">
                    </div>

                    <div class="input-group input-group-sm"
                         style="width: 300px;padding-bottom: 30px;padding-left: 20px">
                        <span class="input-group-addon" style="width: 80px">用户密码</span>
                        <input type="text" class="form-control" placeholder="请输入用户密码" id="modalUserPsw">
                    </div>
                </div>

                <div style="padding-left: 20px;padding-right: 20px">
                    <div class="input-group input-group-sm" style="padding-right: 20px;float:left;width: 300px">
                        <span class="input-group-addon" style="width: 80px">用户姓名</span>
                        <input type="text" class="form-control" disabled="disabled" id="modalUserName">
                    </div>

                    <div class="input-group input-group-sm" style="width: 300px;padding-left: 20px">
                        <span class="input-group-addon" style="width: 80px">联系方式</span>
                        <input type="text" class="form-control" placeholder="请输入用户号码" id="modalUserCell">
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-primary" style="width: 70px" id="modalReset">重置</button>
                <button type="button" class="btn btn-primary" style="width: 70px" id="modalConfirm">确认</button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div><!-- /.modal -->

</body>
<script>

    var userId = $("#result" + this.value).find("td[name='resultUserId']").text();

    $("#modalConfirm").click(
        function () {
            var ok = true;
            if (isNaN($("#modalUserCell").val()) || $("#modalUserCell").val().length != 11)//是数字返回false
            {
                alert("手机号仅可为11位数字");
                ok = false;
            }
            if(ok){

                $.get("/UserController?command=ADMIN_USER_UPDATE",{
                    user_id : $("#modalUserId").val(),
                    user_psw: $("#modalUserPsw").val(),
                    user_cell: $("#modalUserCell").val(),
                }, function (data, textStatus) {
                    console.log(data);
                    if(data == "true" || $("#modalUserCell").val() == $("#result" + $("#modalUserId").val()).find("td[name='resultUserCell']").text()){
                        $("#userModal").modal('hide');
                        $("#result" + $("#modalUserId").val()).find("td[name='resultUserPsw']").text($("#modalUserPsw").val());
                        $("#result" + $("#modalUserId").val()).find("td[name='resultUserCell']").text($("#modalUserCell").val());
                    }
                    else{
                        alert("手机号已存在或密码长度过长");
                    }
                });
            }
        }  
    );
    $("#modalReset").click(
        function () {
            var userPsw = $("#result" + $("#modalUserId").val()).find("td[name='resultUserPsw']").text();
            var userCell = $("#result" + $("#modalUserId").val()).find("td[name='resultUserCell']").text();
            $("#modalUserCell").val(userCell);
            $("#modalUserPsw").val(userPsw);
        }
    );
    $("button[name='editUser']").click(
        function () {
            $("#userModal").modal('show');

            var userId = $("#result" + this.value).find("td[name='resultUserId']").text();
            var userName = $("#result" + this.value).find("td[name='resultUserName']").text();
            var userPsw = $("#result" + this.value).find("td[name='resultUserPsw']").text();
            var userCell = $("#result" + this.value).find("td[name='resultUserCell']").text();

            $("#modalUserId").val(userId);
            $("#modalUserName").val(userName);
            $("#modalUserCell").val(userCell);
            $("#modalUserPsw").val(userPsw);

            $("#result" + this.value).find("td[name='resultUserPsw']").text($("#modalUserPsw").val());
            $("#result" + this.value).find("td[name='resultUserCell']").text($("#modalUserCell").val());

        }
    );
    $("button[name='activateUser']").click(
        function () {
            var userId = this.value;
            $.get("/UserController?command=ACTIVATE_USER", {
                user_id: userId
            }, function (data, textStatus) {
                if (data == "true") {
                    var status = $("#result" + userId).find("td[name='resultUserStatus']").find("span");
                    status.attr("class", "label label-success");
                    status.html("已激活");
                }
                else {
                    alert("用户状态更改失败");
                }
            })
        }
    );
    $("button[name='suspendUser']").click(
        function () {
            var userId = this.value;
            $.get("/UserController?command=SUSPEND_USER", {
                user_id: userId
            }, function (data, textStatus) {
                if (data == "true") {
                    var status = $("#result" + userId).find("td[name='resultUserStatus']").find("span");
                    status.attr("class", "label label-danger");
                    status.html("已冻结");
                }
                else {
                    alert("用户状态更改失败");
                }
            })
        }
    );

</script>
</html>