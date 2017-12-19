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
                        <h2>We found <span><%
                            if (null == spaceList)
                                out.print("0");
                            else {
                                out.print(spaceList.size());%></span> Results for you</h2>
                    </div>
                    <%
                        for (Space item : spaceList) {
                    %>
                    <div class="listContent">
                        <div class="row">
                            <div class="col-sm-5 col-xs-12">
                                <div class="categoryImage">
                                    <img src="img/things/things-1.jpg" alt="Image category"
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
                                    <h2><%=item.getSpaceDetailLoc()%> 车库<%=item.getSpaceId()%>
                                        <span class="likeCount"><i class="fa fa-heart-o"
                                                                   aria-hidden="true"
                                                                   style="color: hotpink"></i> 10 k</span></h2>
                                    <p><%=item.getSpaceDate()%> <span class="placeName"><%=item.getSpaceCity()%></span>
                                    </p>
                                    <p><span
                                            style="color: hotpink; font-size: 20px;font-weight: bold">¥ <%=item.getSpaceLargePrice()%></span>/大型日均
                                        <span style="margin-left: 50px">剩余&nbsp;
                                            <%
                                                if (item.getSpaceLargeLeft() == 0) {%>
                                                    <span style="color: red">0</span></span>
                                        <% } else {%>
                                        <span style="color: dodgerblue"><%=item.getSpaceLargeLeft()%></span></span>
                                        <% }%>
                                    </p>
                                    <p><span
                                            style="color: lightpink; font-size: 20px;font-weight: bold">¥ <%=item.getSpaceSmallPrice()%></span>/小型日均
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
                                        <button type="button" class="btn btn-primary btn-sm"
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
    </section>
</div>
<%@include file="templates/loginModal.jsp" %>
<%@include file="templates/footers.jsp" %>
</body>

</html>
