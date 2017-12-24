<%@ page import="bean.News" %>
<%@ page import="bean.Message" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/12/4
  Time: 19:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<html>
<%@include file="templates/headers.jsp" %>

<%
    News news = (News) request.getAttribute("news");
%>
<head>
    <title><%=news.getTitle()%></title>
</head>

<body class="body-wrapper">
<div class="page-loader" style="background: url(img/preloader.gif) center no-repeat #fff;"></div>
<div class="main-wrapper">
    <header id="pageTop" class="header">
        <%@include file="templates/navbars.jsp" %>
    </header>
    <!-- BLOG DETAILS -->
    <section class="clearfix blogDetials">
        <div class="container">
            <div class="row">
                <div class="col-sm-12 col-xs-12">

                    <div class="thumbnail blogContent">
                        <div class="caption">
                            <h3 style="text-align:center "><%=news.getTitle()%>
                            </h3>
                            <h4 style="text-align: right;margin-right: 10%"><%=news.getPostDate()%> by <a><%=news.getPoster()%>
                            </a></h4>
                            <div class="carousel-inner" style="margin-left: 17%">
                                <div class="item active">
                                    <img src="img/news/news<%=news.getNewsId()%>-1.jpg" alt="Image blog">
                                </div>
                                <div class="item">
                                    <img src="img/news/news<%=news.getNewsId()%>-2.jpg" alt="Image blog">
                                </div>
                            </div>
                            <p><%=news.getBrief()%>
                            </p>
                            <p><%=news.getContent()%>
                            </p>
                            <ul class="list-inline socialLink">
                                <li><a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
                                <li><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
                                <li><a href="#"><i class="fa fa-pinterest-p" aria-hidden="true"></i></a></li>
                                <li><a href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="commentArea">
                        <h3>热门评论</h3>
                        <form class="deafultForm">
                            <div class="row">
                                <%
                                    List<Message> messageList = (List<Message>) request.getAttribute("messages");
                                    if (messageList.size() == 0) {
                                        out.print(" &nbsp;&nbsp;&nbsp;&nbsp;暂无评论(˶‾᷄ ⁻̫ ‾᷅˵)<br><br>");
                                    } else {
                                        for (Message item : messageList) {
                                %>
                                <div class="form-group col-xs-12">
                                    <input hidden="hidden" name="message_id" value="<%=item.getMessageId()%>">
                                    <h3 for="messageBox" class="control-label"><%=item.getMessagePoster()%>
                                        <button type="button" class="btn btn-default active btn-xs pull-right"
                                                name="delete_commit"
                                                style="width: auto;padding: 7px 7px;font-size: 12px;margin-right: 50px">
                                            删除评论
                                        </button>
                                    </h3>

                                    <p><%=item.getMessageContent()%>
                                    </p>
                                </div>
                                <%
                                        }
                                    }
                                %>
                            </div>
                        </form>
                    </div>
                    <div class="commentArea">
                        <form action="#" class="deafultForm">
                            <div class="row">
                                <div class="form-group col-xs-12">
                                    <h3>撰写评论</h3>
                                    <textarea class="form-control" rows="3" id="messageBox"></textarea>
                                </div>
                                <%--<div class="form-group col-sm-6 col-xs-12">--%>
                                <%--<label for="userName" class="control-label">姓名</label>--%>
                                <%--<input type="text" class="form-control" id="userName">--%>
                                <%--</div>--%>
                                <%--<div class="form-group col-sm-6 col-xs-12">--%>
                                <%--<label for="userEmail" class="control-label">邮箱</label>--%>
                                <%--<input type="email" class="form-control" id="userEmail">--%>
                                <%--</div>--%>
                                <div class="form-group col-xs-12">
                                    <button type="submit" class="btn btn-primary">发布评论&nbsp;<i
                                            class="fa fa-paper-plane-o" aria-hidden="true"></i></button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </section>

</div>
<%@include file="templates/loginModal.jsp" %>
<%@include file="templates/footers.jsp" %>

</body>
<script>
    $("button[name='delete_commit']").click(function () {
        var id = $(this.parentNode.parentNode).find("input[name='message_id']").val();
        console.log(id);
        $.get("/MessageController?command=DELETE_MESSAGE", {
            message_id: id
        });
        $(this.parentNode.parentNode).remove();
    });
</script>
</html>

