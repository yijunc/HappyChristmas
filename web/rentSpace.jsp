<%@ page import="java.util.List" %>
<%@ page import="bean.Space" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/12/4
  Time: 20:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<html>
<%@include file="templates/headers.jsp" %>

<head>
    <title>车位信息查询</title>
</head>

<body class="body-wrapper">
<div class="page-loader" style="background: url(img/preloader.gif) center no-repeat #fff;"></div>
<div class="main-wrapper">
    <header id="pageTop" class="header">
        <%@include file="templates/navbars.jsp" %>
    </header>

    <!-- CATEGORY SEARCH SECTION -->
    <section class="clearfix searchArea banerInfo searchAreaGray">
        <form action="/SpaceController" method="post" id="spaceSearchForm">
            <input type="hidden" name="command" value="USER_SPACE"/>
            <div class="container">
                <div class="row">
                    <div class="col-sm-5 col-xs-12">
                        <div class="form-group">
                            <div class="input-group">
                                <div class="input-group-addon">位置</div>
                                <input type="text" class="form-control" id="spaceLocation" name="space_location"
                                       placeholder="请输入您想查询的车库位置">
                                <div class="input-group-addon addon-right"></div>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-5 col-xs-12">
                        <div class="searchPart">
                            <div class="searchPartInner">
                                <div class="searchPartTitle">种类</div>
                                <div class="searchSelectboxes">
                                    <select name="space_type" id="spaceType" class="select-drop" multiple="false">
                                        <option value="all">不限</option>
                                        <option value="地上车库">地上车库</option>
                                        <option value="地下车库">地下车库</option>
                                        <option value="露天车库">露天车库</option>
                                    </select>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="" style="padding-left: 20px">
                        <div class="">
                            <button type="submit" class="btn btn-primary btn-xs" onclick=""><i
                                    class="fa fa-search" aria-hidden="true"></i>搜索
                            </button>
                        </div>
                    </div>
                </div>
            </div>
        </form>
    </section>

    <%
        List<Space> spaceList = (List<Space>) request.getAttribute("space_list");
    %>
    <section class="clearfix listyPage" style="padding-top: 10px;">
        <div class="container">
            <div class="row">
                <div class="col-sm-12 col-xs-12">
                    <div class="resultBar barSpaceAdjust">
                        <h2>共搜索到了<span><%
                            if (null == spaceList)
                                out.print("0");
                            else {
                                out.print(spaceList.size());%></span> 条结果</h2>
                    </div>
                    <%
                        for (Space item : spaceList) {
                    %>
                    <div class="listContent">
                        <div class="row">
                            <div class="col-sm-5 col-xs-12">
                                <div class="categoryImage">
                                    <img src="img/space/space<%=item.getSpaceId()%10%>.jpg" alt="Image category"
                                         class="img-responsive img-rounded">
                                    <span class="label label-primary"><b>HC</b></span>
                                </div>
                            </div>
                            <div class="col-sm-7 col-xs-12">
                                <div class="categoryDetails">
                                    <ul class="list-inline rating">
                                        <li><i class="fa fa-star" aria-hidden="true"></i></li>
                                        <li><i class="fa fa-star" aria-hidden="true"></i></li>
                                        <li><i class="fa fa-star" aria-hidden="true"></i></li>
                                        <li><i class="fa fa-star" aria-hidden="true"></i></li>
                                        <li><i class="fa fa-star" aria-hidden="true"></i></li>
                                    </ul>
                                    <h2><span name="space_location"><%=item.getSpaceDetailLoc()%></span> 车库<span name="space_id"><%=item.getSpaceId()%></span>
                                        <span class="likeCount"><i class="fa fa-heart-o"
                                                                   aria-hidden="true"
                                                                   style="color: hotpink"></i> 10 k</span></h2>
                                    <p><%=item.getSpaceDate()%> <span class="placeName"><%=item.getSpaceCity()%></span>
                                    </p>
                                    <p><span style="color: hotpink; font-size: 20px;font-weight: bold">¥
                                        <span name="large_price"><%=item.getSpaceLargePrice()%></span></span>/大型日均
                                        <span style="margin-left: 50px">剩余&nbsp;
                                            <%
                                                if (item.getSpaceLargeLeft() == 0) {%>
                                                    <span style="color: red">0</span></span>
                                        <% } else {%>
                                        <span style="color: dodgerblue"><%=item.getSpaceLargeLeft()%></span></span>
                                        <% }%>
                                    </p>
                                    <p><span style="color: lightpink; font-size: 20px;font-weight: bold">¥
                                        <span name="small_price"><%=item.getSpaceSmallPrice()%></span></span>/小型日均
                                        <span style="margin-left: 50px">剩余&nbsp;
                                             <%
                                                 if (item.getSpaceSmallLeft() == 0) {%>
                                                    <span style="color: red">0</span></span>
                                        <% } else {%>
                                        <span style="color: dodgerblue"><%=item.getSpaceSmallLeft()%></span></span>
                                        <% }%>
                                    </p>
                                    <p style="color: lightskyblue"><%=item.getSpaceType()%>
                                    </p>
                                    <p class="text-right">
                                        <button type="button" class="btn btn-primary btn-sm orderButton"
                                                style="width: 100px;background-color: orange">预约
                                        </button>
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <%
                            }
                        }
                    %>
                </div>
            </div>
        </div>
    </section>
</div>
<%@include file="templates/loginModal.jsp" %>
<%@include file="templates/footers.jsp" %>

<div class="modal fade" tabindex="-1" role="dialog" id="spaceOrderingModal" style="padding-top: 10%">
    <div class="modal-dialog" role="document">
        <div class="modal-content" style="height: 320px;width: 675px;">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span>
                </button>
                <h4 class="modal-title">停车位账单详情</h4>
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
                        <span class="input-group-addon" style="width: 80px">订单顾客：</span>
                        <input type="text" class="form-control" disabled="disabled" id="modalCustomer"
                               style="background-color: white; color:dimgrey">
                    </div>
                </div>

                <div style="padding-left: 20px;padding-right: 20px">
                    <div class="input-group input-group-sm"
                         style="padding-bottom: 30px;padding-right: 20px;float:left;width: 300px">
                        <span class="input-group-addon" style="width: 80px">车库位置：</span>
                        <input type="text" class="form-control" disabled="disabled" id="modalSpaceLocation"
                               style="background-color: white; color:dimgrey">
                    </div>

                    <div class="input-group input-group-sm"
                         style="width: 300px;padding-bottom: 30px;padding-left: 20px">
                        <span class="input-group-addon" style="width: 80px">车库类型：</span>
                        <%--<input type="text" class="form-control" disabled="disabled" id="modalSpaceType"--%>
                               <%--style="background-color: white; color:dimgrey">--%>
                        <div class="form-control">
                            <label class="radio-inline">
                                <input type="radio" name="modal_space_type" id="inlineRadio1" value="大型车位" checked="true"> 大型车位
                            </label>
                            <label class="radio-inline">
                                <input type="radio" name="modal_space_type" id="inlineRadio2" value="小型车位"> 小型车位
                            </label>
                        </div>

                    </div>
                </div>

                <div style="padding-left: 20px;padding-right: 20px">
                    <div class="input-group input-group-sm" style="padding-right: 20px;float:left;width: 300px">
                        <span class="input-group-addon" style="width: 80px">开始时间：</span>
                        <input type="text" class="form-control" disabled="disabled" id="modalStart"
                               style="background-color: white; color:dimgrey">
                    </div>

                    <div class="input-group input-group-sm" style="width: 300px;padding-left: 20px">
                        <span class="input-group-addon" style="width: 80px">结束时间：</span>
                        <input type="text" class="form-control" id="modalEnd">
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <h3 style="color: red">总额： ¥<span id="modalPrice">270</span><span><button type="button" class="btn btn-primary confirmButton" style="width: 70px;margin-left: 20px;margin-right: 20px" id="modalConfirm">确认</button></span></h3>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div><!-- /.modal -->

</body>
<script>
    var element;
    var spaceType;
    var dailyPrice;
    $(".orderButton").click(function () {
        var index = this.parentNode.parentNode;
        element = index ;
        var id = $(index).find("h2").find("span[name='space_id']").text();
        var customer = "<%
            if(currentUser == null){
                out.print("-1");
            }
            else{
                out.print(currentUser.getUserName());
            }%>";
        if(customer == "-1"){
            alert("预订请先登录！");
            $(window).attr('location','./login.jsp');
        }
        else {
            var location = $(index).find("h2").find("span[name='space_location']").text();
            // var type = "大型车库";
            var myDate = new Date();
            var reg = new RegExp("/","g");//g,表示全部替换
            var today = myDate.toLocaleDateString().replace(reg,'-');
            var type = $("input:checked[name='modal_space_type']").val();
            spaceType =type;
            if(type == "大型车位"){
                dailyPrice = $(element).find("p").find("span[name='large_price']").text();
            }
            else{
                dailyPrice = $(element).find("p").find("span[name='small_price']").text();
            }
            $("#modalSpaceId").val(id);
            $("#modalCustomer").val(customer);
            $("#modalSpaceLocation").val(location);
            // var type = $("input:checked[name='modal_space_type']").val();
            // console.log(type);
            // $("#modalSpaceType").val(type);
            $("#modalStart").val(today);
            $("#modalEnd").val(today);
            $("#modalPrice").text(dailyPrice);
            $("#spaceOrderingModal").modal('show');
        }
    });
    $("input[name='modal_space_type']").click(function(){
        var type = $("input:checked[name='modal_space_type']").val();
        if(type == "大型车位"){
            dailyPrice = $(element).find("p").find("span[name='large_price']").text();
        }
        else{
            dailyPrice = $(element).find("p").find("span[name='small_price']").text();
        }
        spaceType = type;
        console.log("dailyPrice"+dailyPrice);
        updatePrice();
    });
    $("#modalEnd").blur(updatePrice);
    $("#modalEnd").click(updatePrice);
    $("#modalEnd").change(updatePrice);
    function updatePrice() {
        var date1 = $("#modalStart").val();
        var date2 = $("#modalEnd").val();
        var arr1 = date1.split("-");
        var arr2 = date2.split("-");
        var date1 = new Date(parseInt(arr1[0]),parseInt(arr1[1])-1,parseInt(arr1[2]));
        var date2 = new Date(parseInt(arr2[0]),parseInt(arr2[1])-1,parseInt(arr2[2]));
        var date1 = date1.getTime();
        var date2 = date2.getTime();
        // console.log(date1+"|"+date2);
        var price = (Math.floor((date2 - date1) / (1000 * 60 * 60 * 24))+1)* dailyPrice;
        $("#modalPrice").text(price);
        console.log("total:"+price);
    }
    $(".confirmButton").click(function () {
        var sT = 1;
        if(spaceType=="大型车位"){
            sT = 2;
        }
        $.post("/SpaceOrderController?command=USER_TAKE_ORDER",{
            space_id: $("#modalSpaceId").val(),
            space_taker: $("#modalCustomer").val(),
            space_start: $("#modalStart").val(),
            space_end: $("#modalEnd").val(),
            space_price: $("#modalPrice").text(),
            space_type: sT
        }, function (){
            window.location=("/UserController?command=USER_PAGE&user_name=" + $("#modalCustomer").val());
        });
        $("#spaceOrderingModal").modal('hide');
    });
</script>
</html>
