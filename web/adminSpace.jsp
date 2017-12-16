<%@ page import="bean.Space" %>
<%@ page import="java.util.List" %>
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
    <title>车库信息管理</title>
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
                        <h2><b>HC</b>车库管理</h2>
                    </div>
                    <div class="dashboardBoxBg mb30">
                        <div class="profileIntro">
                            <%
                                Boolean empty = (Boolean) request.getAttribute("empty");
                                List<Space> result = null;
                                if (empty == null) {
                                    empty = true;
                                }
                            %>
                            <form action="/SpaceController" method="POST" class="row" id="userSearchForm">
                                <input type="hidden" name="command" value="ADMIN_SPACE"/>
                                <div class="form-group col-md-4 col-sm-6 col-xs-12">
                                    <label for="spaceId">车库ID</label>
                                    <input type="text" class="form-control" id="spaceId" placeholder="请输入车库ID"
                                           name="space_id">
                                </div>
                                <div class="form-group col-md-4 col-sm-6 col-xs-12">
                                    <label for="spaceCity">车库城市</label>
                                    <input type="text" class="form-control" id="spaceCity" placeholder="请输车库所在城市"
                                           name="space_city">
                                </div>
                                <div class="form-group col-md-4 col-sm-6 col-xs-12">
                                    <label for="spaceType">车库类型</label>
                                    <div class="contactSelect">
                                        <select id="spaceType" class="select-drop" name="space_type" size="1"
                                                multiple="false">
                                            <option value="all">不限</option>
                                            <option value="地下车库">地下车库</option>
                                            <option value="地上车库">地上车库</option>
                                            <option value="露天车库">露天车库</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group col-md-4 col-sm-6 col-xs-12" style="padding-top: 2.3%;">
                                    <button type="submit" class="btn btn-primary btn-lg"><i
                                            class="fa fa-search" aria-hidden="true"></i>搜索
                                    </button>
                                    <button type="button" class="btn btn-primary btn-lg" onclick=""><i
                                            class="fa fa-circle-o" aria-hidden="true"></i>清空
                                    </button>
                                </div>
                                <div class="form-group col-md-4 col-sm-6 col-xs-12" style="padding-top: 2.3%;">
                                    <button type="button" class="btn btn-primary btn-lg" onclick="re_set()"><i class="fa fa-plus" aria-hidden="true"></i>添加新车库
                                    </button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
                <p style="height: 0px; padding-top: 10px; padding-left: 2%">共搜索到了<span style="font-weight: bold;">
                <%
                    if (!empty) {
                        result = (List<Space>) request.getAttribute("space_list");
                        out.print(result.size());
                    } else {
                        out.print(0);
                    }

                %>
                    </span> 条记录</p>
                <div class="col-xs-12">
                    <div class="table-responsive bgAdd" data-pattern="priority-columns">
                        <table id="ordersTable" class="table table-small-font table-bordered table-striped"
                               cellspacing="0" width="100%">
                            <thead>
                            <tr>
                                <th>车库ID</th>
                                <th data-priority="">所在城市</th>
                                <th data-priority="6">详细地址</th>
                                <th data-priority="6">类别</th>
                                <th data-priority="6">启用日期</th>
                                <th data-priority="6">总车位(小/大)</th>
                                <th data-priority="3">可用车位(小/大)</th>
                                <th data-priority="3">车位价格(小/大)</th>
                                <th data-priority="2">操作</th>
                            </tr>
                            </thead>
                            <tfoot>
                            <tr>
                                <th>车库ID</th>
                                <th>所在城市</th>
                                <th>详细地址</th>
                                <th>类别</th>
                                <th>启用日期</th>
                                <th>总车位</th>
                                <th>可用车位</th>
                                <th>车位价格</th>
                                <th>操作</th>
                            </tr>
                            </tfoot>
                            <tbody>
                            <%
                                for (Space it : result) { %>
                            <tr>
                                <td><%=it.getSpaceId()%>
                                </td>
                                <td><%=it.getSpaceCity()%>
                                </td>
                                <td><%=it.getSpaceDetailLoc()%>
                                </td>
                                <td>
                                    <%=it.getSpaceType()%>
                                </td>
                                <td>
                                    <%=it.getSpaceDate()%>
                                </td>
                                <td>
                                    <%
                                        out.print(it.getSpaceSmall());
                                        out.print(" / ");
                                        out.print(it.getSpaceLarge());
                                    %>
                                </td>
                                <td>
                                    <%
                                        if (it.getSpaceSmallLeft() > 0) {
                                            if(it.getSpaceSmall()*0.2 >= it.getSpaceSmallLeft()){
                                                out.print("<span class=\"label label-warning\">" + it.getSpaceSmallLeft() + "</span>");
                                            }
                                            else{
                                                out.print("<span class=\"label label-success\">" + it.getSpaceSmallLeft() + "</span>");
                                            }
                                        }
                                        else{
                                            out.print("<span class=\"label label-danger\">" + it.getSpaceSmallLeft() + "</span>");
                                        }
                                        out.print(" / ");
                                        if (it.getSpaceLargeLeft() > 0) {
                                            if(it.getSpaceLarge()*0.1 > it.getSpaceLargeLeft()){
                                                out.print("<span class=\"label label-warning\">" + it.getSpaceLargeLeft() + "</span>");
                                            }
                                            else{
                                                out.print("<span class=\"label label-success\">" + it.getSpaceLargeLeft() + "</span>");
                                            }
                                        }
                                        else{
                                            out.print("<span class=\"label label-danger\">" + it.getSpaceLargeLeft() + "</span>");
                                        }
                                    %>
                                </td>
                                <td>
                                    <%
                                        out.print(it.getSpaceSmallPrice());
                                        out.print(" / ");
                                        out.print(it.getSpaceLargePrice());
                                    %>
                                </td>
                                <td>
                                    <div class="btn-group">
                                        <button type="button" class="btn btn-primary">修改车库信息</button>
                                    </div>
                                </td>
                                <%
                                    }
                                %>
                            </tr>
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