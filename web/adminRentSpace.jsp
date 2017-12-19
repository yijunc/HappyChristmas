<%@ page import="bean.SpaceOrder" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Date" %>
<%@ page import="bean.SpaceOrderSearch" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/12/4
  Time: 21:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<html>
<%@include file="templates/headers.jsp" %>

<header>
    <title>车位出租订单管理</title>
</header>

<body class="body-wrapper">
<div class="page-loader" style="background: url(img/preloader.gif) center no-repeat #fff;"></div>
<div class="main-wrapper">
    <script>
        var PAGEID = "adp3";
    </script>
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
                        <h2><b>HC</b>车位出租订单管理</h2>
                    </div>
                    <%
                        Boolean empty = (Boolean) request.getAttribute("empty");
                        List<SpaceOrder> result = null;
                        if (empty == null) {
                            empty = true;
                        }
                        if (!empty) {
                            SpaceOrderSearch spaceOrderSearch = (SpaceOrderSearch) request.getAttribute("search_input");
                    %>
                    <div class="dashboardBoxBg mb30">
                        <div class="profileIntro">
                            <form action="/SpaceOrderController" method="post" class="row" id="rentSpaceFormSearch">
                                <input type="hidden" name="command" value="ADMIN_SPACE_ORDER">
                                <div class="form-group col-md-4 col-sm-6 col-xs-12">
                                    <label for="orderId">订单ID</label>
                                    <input type="text" class="form-control" id="orderId" placeholder="请输入订单号"
                                           name="order_id"
                                        <%if(null!=spaceOrderSearch.getOrderId()){%>
                                           value=<%=spaceOrderSearch.getOrderId()%>
                                        <%}%>>
                                </div>
                                <div class="form-group col-md-4 col-sm-6 col-xs-12">
                                    <label for="customer">订单顾客名</label>
                                    <input type="text" class="form-control" id="customer" placeholder="请输入用户名"
                                           name="order_taker"
                                        <%if(null!=spaceOrderSearch.getOrderTaker()){%>
                                           value=<%=spaceOrderSearch.getOrderTaker()%>
                                        <%}%>>
                                </div>
                                <div class="form-group col-md-4 col-sm-6 col-xs-12">
                                    <label for="spaceId">预定车库ID</label>
                                    <input type="text" class="form-control" id="spaceId" placeholder="请输入车库ID"
                                           name="order_space_id"
                                        <%if(null!=spaceOrderSearch.getOrderSpaceId()){%>
                                           value=<%=spaceOrderSearch.getOrderSpaceId()%>
                                        <%}%>>
                                </div>
                                <div class="form-group col-md-4 col-sm-6 col-xs-12">
                                    <label for="spaceType">车位类型</label>
                                    <div class="contactSelect">
                                        <select id="spaceType" class="select-drop" name="order_space_type">
                                            <option value="all">不限</option>
                                            <option value="1">小型车位</option>
                                            <option value="2">大型车位</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group col-md-4 col-sm-6 col-xs-12">
                                    <label>订单开始时间</label>
                                    <div class="dateSelect">
                                        <div class="input-group date ed-datepicker filterDate"
                                             data-provide="datepicker">
                                            <input type="text" class="form-control" placeholder="月/日/年"
                                                   name="order_start" id="orderStart"
                                                <%if(null!=spaceOrderSearch.getOrderStart()){%>
                                                   value=<%=spaceOrderSearch.getOrderStart()%>
                                                <%}%>>
                                            <div class="input-group-addon">
                                                <i class="fa fa-calendar" aria-hidden="true"></i>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group col-md-4 col-sm-6 col-xs-12">
                                    <label>订单完成时间</label>
                                    <div class="dateSelect">
                                        <div class="input-group date ed-datepicker filterDate"
                                             data-provide="datepicker">
                                            <input type="text" class="form-control" placeholder="月/日/年"
                                                   name="order_end" id="orderEnd"
                                                <%if(null!=spaceOrderSearch.getOrderEnd()){%>
                                                   value=<%=spaceOrderSearch.getOrderEnd()%>
                                                <%}%>>
                                            <div class="input-group-addon">
                                                <i class="fa fa-calendar" aria-hidden="true"></i>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group col-md-4 col-sm-6 col-xs-12">
                                    <label for="orderStatus">订单状态</label>
                                    <div class="contactSelect">
                                        <select id="orderStatus" class="select-drop" name="order_status" size="1"
                                                multiple="false">
                                            <option value="all">不限</option>
                                            <option value="1">已完成</option>
                                            <option value="0">已取消</option>
                                            <option value="2">正在进行中</option>
                                        </select>
                                    </div>
                                    <%}%>
                                </div>
                                <div class="form-group col-md-4 col-sm-6 col-xs-12" style="padding-top: 2.3%;">
                                    <button type="button" class="btn btn-primary btn-lg" onclick="space_submit()"><i
                                            class="fa fa-search" aria-hidden="true"></i>搜索
                                    </button>
                                    <script>
                                        function space_submit() {
                                            if (isNaN($("input#orderId").val()))//是数字返回false
                                            {
                                                alert("订单ID请输入数字哦(￣^￣)ゞ");
                                            }
                                            else if (isNaN($("input#spaceId").val())) {
                                                alert("预定车库ID请输入数字哦(￣^￣)ゞ");
                                            }
                                            else {
                                                $("form#rentSpaceFormSearch").submit();
                                            }
                                        }
                                    </script>
                                    <button type="button" class="btn btn-primary btn-lg" onclick="re_set()"><i
                                            class="fa fa-circle-o" aria-hidden="true"></i>清空
                                    </button>
                                    <script>
                                        function re_set() {
                                            $("input#orderId").val("");
                                            $("input#customer").val("");
                                            $("input#spaceId").val("");
                                            $("input#orderStart").val("");
                                            $("input#orderEnd").val("");
                                        }
                                    </script>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
                <p style="height: 0px; padding-top: 10px; padding-left: 2%">共搜索到了<span style="font-weight: bold;">
                    <%
                        if (!empty) {
                            result = (List<SpaceOrder>) request.getAttribute("space_order_list");
                            out.print(result.size());
                        } else {
                            out.print(0);
                        }
                    %></span> 条记录
                </p>
                <div class="col-xs-12">
                    <div class="table-responsive bgAdd" data-pattern="priority-columns">
                        <table id="ordersTable" class="table table-small-font table-bordered table-striped"
                               cellspacing="0" width="100%">
                            <thead>
                            <tr>
                                <th>订单ID</th>
                                <th data-priority="">订单顾客名</th>
                                <th data-priority="1">车库ID</th>
                                <th data-priority="1">车位类型</th>
                                <th data-priority="6">订单开始时间</th>
                                <th data-priority="6">订单结束时间</th>
                                <th data-priority="3">订单金额</th>
                                <th data-priority="4">订单状态</th>
                                <th data-priority="2">操作</th>
                            </tr>
                            </thead>
                            <tfoot>
                            <tr>
                                <th>订单ID</th>
                                <th>订单顾客名</th>
                                <th>车库ID</th>
                                <th>车位类型</th>
                                <th>订单开始时间</th>
                                <th>订单结束时间</th>
                                <th>订单金额</th>
                                <th>订单状态</th>
                                <th>操作</th>
                            </tr>
                            </tfoot>
                            <tbody>
                            <%
                                if (!empty) {
                                    for (SpaceOrder it : result) {
                            %>
                            <tr>
                                <td name="order_id"><%=it.getOrderId()%></td>
                                <td name="space_customer"><a href="/UserController?command=ADMIN_USER&user_name=<%=it.getOrderTaker()%>"><%=it.getOrderTaker()%></a></td></td>
                                <td name="space_id"><a href="/SpaceController?command=ADMIN_SPACE&space_id=<%=it.getOrderSpaceId()%>"><%=it.getOrderSpaceId()%></a></td>
                                <td name="space_type"><%
                                        switch (it.getOrderSpaceType()) {
                                            case 1:
                                                out.print("小型车位");
                                                break;
                                            case 2:
                                                out.print("大型车位");
                                                break;
                                        }
                                    %></td>
                                <td name="order_start"><%=it.getOrderStart()%></td>
                                <td name="order_end"><%
                                        if (it.getOrderStatus() != 1) {
                                            out.print("未结束");
                                        } else {
                                            out.print(it.getOrderEnd());
                                        }
                                    %></td>
                                <td name="order_price"><%
                                        if (it.getOrderPrice() == -1) {
                                            out.print("未出账");
                                        } else {
                                            out.print(it.getOrderPrice());
                                        }
                                    %></td>
                                <%
                                    switch (it.getOrderStatus()) {
                                        case 0: %>
                                <td name="order_status"><span class="label label-danger">已取消</span></td>
                                <%
                                        break;
                                    case 1:
                                %>
                                <td name="order_status"><span class="label label-success">已完成</span></td>
                                <%
                                        break;
                                    case 2:
                                %>
                                <td name="order_status"><span class="label label-warning">正在进行中</span></td>
                                <%
                                            break;
                                    }
                                %>
                                <td>
                                    <div class="btn-group">
                                        <button type="button" class="btn btn-primary finishOrder">完成订单</button>
                                        <button type="button" class="btn btn-primary cancelOrder">取消订单</button>
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

<div class="modal fade" tabindex="-1" role="dialog" id="spaceOrderModal" style="padding-top: 10%">
    <div class="modal-dialog" role="document">
        <div class="modal-content" style="height: 320px;width: 675px;">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span>
                </button>
                <h4 class="modal-title">编辑车位订单</h4>
            </div>
            <div class="modal-body">
                <div style="padding-left: 20px;padding-right: 20px">
                    <div class="input-group input-group-sm"
                         style="padding-bottom: 30px;padding-right: 20px;float:left;width: 300px">
                        <span class="input-group-addon" style="width: 80px">车库ID：&nbsp&nbsp</span>
                        <input type="text" class="form-control" disabled="disabled" id="modalSpaceId"
                               style="background-color: white; color:dimgrey">
                    </div>

                    <div class="input-group input-group-sm"
                         style="width: 300px;padding-bottom: 30px;padding-left: 20px">
                        <span class="input-group-addon" style="width: 80px">车位类型：</span>
                        <input type="text" class="form-control" disabled="disabled" id="modalSpaceType"
                               style="background-color: white; color:dimgrey">
                    </div>
                </div>

                <div style="padding-left: 20px;padding-right: 20px">
                    <div class="input-group input-group-sm"
                         style="padding-bottom: 30px;padding-right: 20px;float:left;width: 300px">
                        <span class="input-group-addon" style="width: 80px">订单顾客：</span>
                        <input type="text" class="form-control" disabled="disabled" id="modalSpaceCustomer"
                               style="background-color: white; color:dimgrey">
                    </div>

                    <div class="input-group input-group-sm"
                         style="width: 300px;padding-bottom: 30px;padding-left: 20px">
                        <span class="input-group-addon" style="width: 80px">订单金额：</span>
                        <input type="text" class="form-control"  id="modalSpaceOrderPrice">
                    </div>
                </div>

                <div style="padding-left: 20px;padding-right: 20px">
                    <div class="input-group input-group-sm" style="padding-right: 20px;float:left;width: 300px">
                        <span class="input-group-addon" style="width: 80px">开始时间：</span>
                        <input type="text" class="form-control" disabled="disabled" id="modalSpaceOrderStart"
                               style="background-color: white; color:dimgrey">
                    </div>

                    <div class="input-group input-group-sm" style="width: 300px;padding-left: 20px">
                        <span class="input-group-addon" style="width: 80px">结束时间：</span>
                        <input type="text" class="form-control" disabled="disabled" id="modalSpaceOrderEnd"
                               style="background-color: white; color:dimgrey">
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
    var element;
    var finalPrice;
    var dateEnd;
    $(".cancelOrder").click(function () {
        var index = this.parentNode.parentNode.parentNode;//index为tr
        var id = $(index).find("td[name='order_id']").text();
        var spaceId = $(index).find("td[name='space_id']").text();
        var spaceType = $(index).find("td[name='space_type']").text();
        var sT=0;
        switch(spaceType){
            case "小型车位":
                sT = 1;
                break;
            case "大型车位":
                sT = 2;
                break;
        }
        console.log("id="+id+" spaceId="+spaceId+" spaceType="+spaceType);
        $.post("/SpaceOrderController?command=ADMIN_ORDER_CANCEL", {
            order_id: id,
            space_id: spaceId,
            space_type: sT
        });
        var status = $(index).find("td[name='order_status']").find("span");
        status.attr("class", "label label-danger");
        status.html("已取消");
    });
    $(".finishOrder").click(function () {
        var index = this.parentNode.parentNode.parentNode;//index为tr
        element = index;
        var id = $(index).find("td[name='order_id']").text();
        var spaceId = $(index).find("td[name='space_id']").text();
        var spaceType = $(index).find("td[name='space_type']").text();
        var sT = 1 ;
        if(spaceType == "大型车位"){
            sT = 2;
        }
        var spaceCustom = $(index).find("td[name='space_customer']").text();
        var orderStart = $(index).find("td[name='order_start']").text();
        var orderEnd = $(index).find("td[name='order_end']").text();
        var orderPrice = $(index).find("td[name='order_price']").text();
        var dailyPrice;
        if(orderPrice == "未出账"){
            $.get("/SpaceController?command=GET_PRICE",{
                space_id: spaceId,
                space_type: sT
            },function (data , textStatus) {
                dailyPrice = data;
                var price = getPrice(orderStart,dailyPrice);
                finalPrice = price;
                $("#modalSpaceOrderPrice").val(price);
            });
        }
        else {
            $("#modalSpaceOrderPrice").val(orderPrice);
        }
        $("#spaceOrderModal").modal('show');
        $("#modalSpaceId").val(spaceId);
        $("#modalSpaceType").val(spaceType);
        $("#modalSpaceCustomer").val(spaceCustom);
        $("#modalSpaceOrderStart").val(orderStart);
        if(orderEnd == "未结束"){
            var myDate = new Date();
            var reg = new RegExp("/","g");//g,表示全部替换。
            var time = myDate.toLocaleDateString().replace(reg,'-');
            dateEnd = time;
            $("#modalSpaceOrderEnd").val(time);
        }
        else {
            $("#modalSpaceOrderEnd").val(orderEnd);
        }
    });

    function getPrice(dateStart, dailyPrice) {
        var arr1 = dateStart.split("-");
        var date1 = new Date(parseInt(arr1[0]),parseInt(arr1[1])-1,parseInt(arr1[2]));
        date1 = date1.getTime();
        var date2 = new Date().getTime();
        return Math.floor((date2 - date1) / (1000 * 60 * 60 * 24) )* dailyPrice; //结果是秒
    }

    $("#modalReset").click(function () {
        $("#modalSpaceOrderPrice").val(finalPrice);
    });
    
    $("#modalConfirm").click(function () {
        $("#spaceOrderModal").modal('hide');
        $(element).find("td[name='order_end']").text($("#modalSpaceOrderEnd").val());
        $(element).find("td[name='order_price']").text($("#modalSpaceOrderPrice").val());
        var status = $(element).find("td[name='order_status']").find("span");
        status.attr("class", "label label-success");
        status.html("已完成");
        var id = $(element).find("td[name='order_id']").text();
        var spaceId = $("#modalSpaceId").val();
        var spaceType = $("#modalSpaceType").val();
        var sT;
        // var p = $("#modalSpaceOrderPrice").val();
        // var d = $("#modalSpaceOrderEnd").val();
        console.log("id="+id);
        console.log("finalPrice="+finalPrice);
        console.log("dateEnd="+dateEnd);
        switch(spaceType){
            case "小型车位":
                sT = 1;
                break;
            case "大型车位":
                sT = 2;
                break;
        }
        $.post("/SpaceOrderController?command=ADMIN_ORDER_DONE", {
            order_id:id,
            order_price:finalPrice,
            order_date:dateEnd,
            space_id:spaceId,
            space_type:sT
        });
    });

</script>
</html>