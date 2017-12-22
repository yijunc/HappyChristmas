<%@ page import="java.util.List" %>
<%@ page import="bean.News" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/12/4
  Time: 19:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<html>

<%@include file="templates/headers.jsp" %>

<head>
    <title>新闻中心</title>
</head>

<body class="body-wrapper">
<div class="page-loader" style="background: url(img/preloader.gif) center no-repeat #fff;"></div>
<div class="main-wrapper">

    <header id="pageTop" class="header">
        <%@include file="templates/navbars.jsp" %>
    </header>


    <!-- PAGE TITLE SECTION -->
    <section class="clearfix pageTitleSection bg-image"
             style="background-image: url(img/news/news0.jpg);">
        <div class="container">
            <div class="row">
                <div class="col-xs-12">
                    <div class="pageTitle">
                        <h2>新闻中心</h2>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- BLOG SECTION -->
    <section class="clearfix">
        <div class="container">
            <div class="row">
                <div class="col-xs-8">
                    <div class="blogInnerWrapper">

                        <%
                            List<News> newsList = (List<News>) request.getAttribute("news_list");
                            for (News item : newsList) {
                        %>
                        <div class="thumbnail blogInner">
                            <div id="blog-carousel-<%=item.getNewsId()%>" class="carousel slide" data-ride="carousel">
                                <div class="carousel-inner">
                                    <div class="item active">
                                        <img src="img/news/news<%=item.getNewsId()%>-1.jpg" alt="Image blog">
                                    </div>
                                    <div class="item">
                                        <img src="img/news/news<%=item.getNewsId()%>-2.jpg" alt="Image blog">
                                    </div>
                                </div>
                                <a class="left carousel-control " href="#blog-carousel-<%=item.getNewsId()%>"
                                   data-slide="prev">
                                    <i class="icon-listy icon-left-arrow-3 "></i>
                                </a>
                                <a class="right carousel-control" href="#blog-carousel-<%=item.getNewsId()%>"
                                   data-slide="next">
                                    <i class="icon-listy icon-right-arrow-3"></i>
                                </a>
                            </div>
                            <div class="caption" style="margin-top: 3%">
                                <h4><%=item.getPostDate()%> by
                                    <a ><%=item.getPoster()%>
                                    </a>
                                </h4>
                                <h3 class="news_title">
                                    <input hidden="hidden" name="news_id" value="<%=item.getNewsId()%>">
                                    <a href="/NewsController?command=NEWS_DETAIL&news_id=<%=item.getNewsId()%>"><%=item.getTitle()%></a>
                                </h3>
                                <p><%=item.getBrief()%>
                                </p>
                            </div>
                        </div>
                        <% }%>
                    </div>
                </div>

                <div class="col-xs-4">
                    <form action="/NewsController" method="get">
                        <input hidden="hidden" name="command" value="NEWS_CENTER">
                        <div class="sidebarInner">
                            <div class="input-group">
                                <input type="text" class="form-control" placeholder="搜索..." name="search_info"
                                       aria-describedby="basic-addon2">
                                <a href="#" class="input-group-addon" id="basic-addon2">
                                    <i class="fa fa-search" aria-hidden="true"></i>
                                </a>
                            </div>
                            <button id="searchNews" type="submit" class="btn btn-primary" style="margin: 8px auto;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<i
                                    class="fa fa-search" aria-hidden="true"></i>搜索&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            </button>
                            <%--<button class="btn btn-primary" style="margin: 8px auto;margin-left: 75px">&nbsp;&nbsp;&nbsp;<i--%>
                                    <%--class="fa fa-search" aria-hidden="true"></i>发布新闻&nbsp;&nbsp;&nbsp;--%>
                            <%--</button>--%>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </section>
</div>
<%@include file="templates/loginModal.jsp" %>
<%@include file="templates/footers.jsp" %>
</body>
<script>
    $("#searchNews").click(function () {

    });

    // $("h3.news_title").click(function () {
    //     var id = $(this.parentNode).find("input[name='news_id']").val();
    //     console.log("mmm:"+id);
    //    $.get("/NewsController?command=NEWS_DETAIL",{
    //        news_id : id
    //    });
    // });

</script>
</html>