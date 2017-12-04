<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/12/4
  Time: 19:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<html>
<%@include file="templates/headers.jsp" %>

<head>
    <title>某新闻的新闻标题---新闻中心</title>
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
                <div class="col-sm-8 col-xs-12">
                    <div class="thumbnail blogContent">
                        <div class="caption">
                            <h4>Nov 22, 2016 by <a href="#">Admin</a></h4>
                            <h3>Donec id dolor in erat imperdiet</h3>
                            <img src="img/blog/blog-1.jpg" alt="Image blog" class="img-responsive">
                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed eiusmod tempor incididunt
                                labore et dolore magna aliqua.Ut enim ad minim veniam, quis nostrud exercitation ullamco
                                laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit
                                in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat
                                cupidatat non proident. sunt in culpa qui officia deserunt mollit anim id est laborum.
                                Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque
                                laudantium, totam rem aperiam.</p>
                            <p>Eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt
                                explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit,
                                sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque
                                porro quisquam est. </p>
                            <p>Qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam
                                eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.eaque
                                ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt
                                explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit,
                                sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque
                                porro quisquam est. </p>
                            <p>Sed eiusmod tempor incididunt labore et dolore magna aliqua.Ut enim ad minim veniam, quis
                                nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute
                                irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla
                                pariatur.</p>
                            <p>Dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius
                                modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.eaque ipsa
                                quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.
                                Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia
                                consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro
                                quisquam est. </p>
                            <p>Mod tempor incididunt labore et dolore magna aliqua.Ut enim ad minim veniam, quis nostrud
                                exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure
                                dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla
                                pariatur. </p>
                            <ul class="list-inline socialLink">
                                <li><a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
                                <li><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
                                <li><a href="#"><i class="fa fa-pinterest-p" aria-hidden="true"></i></a></li>
                                <li><a href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="commentArea">
                        <h3>Leave A Comment</h3>
                        <form action="#" class="deafultForm">
                            <div class="row">
                                <div class="form-group col-xs-12">
                                    <label for="messageBox" class="control-label">Message</label>
                                    <textarea class="form-control" rows="3" id="messageBox"></textarea>
                                </div>
                                <div class="form-group col-sm-6 col-xs-12">
                                    <label for="userName" class="control-label">Name</label>
                                    <input type="text" class="form-control" id="userName">
                                </div>
                                <div class="form-group col-sm-6 col-xs-12">
                                    <label for="userEmail" class="control-label">Email</label>
                                    <input type="email" class="form-control" id="userEmail">
                                </div>
                                <div class="form-group col-xs-12">
                                    <button type="submit" class="btn btn-primary">Get Started</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
                <div class="col-sm-4 col-xs-12">
                    <div class="sidebarInner">
                        <div class="input-group">
                            <input type="text" class="form-control" placeholder="Search..."
                                   aria-describedby="basic-addon2">
                            <a href="#" class="input-group-addon" id="basic-addon2"><i
                                    class="icon-listy icon-search-2"></i></a>
                        </div>
                    </div>
                    <div class="sidebarInner">
                        <div class="panel panel-default">
                            <div class="panel-heading">Categories</div>
                            <div class="panel-body">
                                <ul class="list-unstyle categoryList">
                                    <li><a href="#">Real Estate <span class="pull-right">(3)</span></a></li>
                                    <li><a href="#">Automotive <span class="pull-right">(7)</span></a></li>
                                    <li><a href="#">Healthcare <span class="pull-right">(12)</span></a></li>
                                    <li><a href="#">Restaurent <span class="pull-right">(5)</span></a></li>
                                    <li><a href="#">Business <span class="pull-right">(9)</span></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="sidebarInner">
                        <div class="panel panel-default">
                            <div class="panel-heading">Recent Posts</div>
                            <div class="panel-body">
                                <ul class="list-unstyle categoryList">
                                    <li><a href="#">Curabitur scelerisque lacus sit amet.</a></li>
                                    <li><a href="#">Morbi pretium ipsum ac massa sollicitu.</a></li>
                                    <li><a href="#">Etiam eget augue et lorem sagittis.</a></li>
                                    <li><a href="#">Sed mollis tincidunt massa vel egestas.</a></li>
                                    <li><a href="#">Aliquam semper dolor nec metus alique.</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="sidebarInner">
                        <div class="panel panel-default">
                            <div class="panel-heading">Archives</div>
                            <div class="panel-body">
                                <ul class="list-unstyle categoryList">
                                    <li><a href="#">Jan 2016</a></li>
                                    <li><a href="#">Feb 2016</a></li>
                                    <li><a href="#">Mar 2016</a></li>
                                    <li><a href="#">April 2016</a></li>
                                    <li><a href="#">May 2016</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

</div>
<%@include file="templates/loginModal.jsp" %>
<%@include file="templates/footers.jsp" %>

</body>

</html>
