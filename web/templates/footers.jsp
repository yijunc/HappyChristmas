<%@ page contentType="text/html;charset=UTF-8" language="java"
         pageEncoding="utf-8" %>

<!-- FOOTER -->
<footer style="background-image: url(/img/background/bg-footer.jpg);">
    <!-- FOOTER INFO -->
    <div class="clearfix footerInfo">
        <div class="container">
            <div class="row">
                <div class="col-sm-7 col-xs-12">
                    <div class="footerText">
                        <a href="index.jsp" class="footerLogo"><img src="img/logo-footer.png"
                                                                    alt="Footer Logo"></a>
                        <p>一个圣诞节需要上交的J2EE课程作业。圣诞节快乐。🎄</p>
                        <p>一个车辆租赁出租，车位租赁的信息管理平台。</p>
                        <ul class="list-styled list-contact">
                            <li><i class="fa fa-user-circle-o" aria-hidden="true"></i>赵宁 10151590121</li>
                            <li><i class="fa fa-user-circle-o" aria-hidden="true"></i>陈弈君 10152160137</li>
                        </ul>
                    </div>
                </div>
                <div class="col-sm-5 col-xs-12">
                    <div class="footerInfoTitle">
                        <h4>网站链接：</h4>
                    </div>
                    <div class="useLink">
                        <ul class="list-unstyled">
                            <li><i class="fa fa-link" aria-hidden="true"></i> <a href="/IndexController">网站主页</a></li>
                            <li><i class="fa fa-link" aria-hidden="true"></i> <a href="/CarAvailabilityController?command=USER_CAR_AVAILABILITY">租车信息</a></li>
                            <li><i class="fa fa-link" aria-hidden="true"></i> <a href="/SpaceController?command=USER_SPACE">车位信息</a></li>
                            <li><i class="fa fa-link" aria-hidden="true"></i> <a href="/NewsController?command=NEWS_CENTER">新闻中心</a></li>
                            <%
                                if(hasLoggedIn && currentUser != null && currentUser.isUserAdmin()){
                                    out.print("<li><i class=\"fa fa-link\" aria-hidden=\"true\"></i> <a href=\"adminDashboard.jsp\">" + currentUser.getUserName() + "的管理主页</a></li>");
                                }
                            %>
                            <li><i class="fa fa-link" aria-hidden="true"></i>
                                <%
                                    if(hasLoggedIn){
                                        out.print("<a href=\"profile.jsp?user_id=" + currentUser.getUserId() + "\">");
                                        out.print(currentUser.getUserName());
                                        out.print("的个人主页</a>");
                                    }
                                    else{
                                        out.print("<a href=\"login.jsp\">用户登录</a>");
                                    }
                                %>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</footer>
</div>

<!-- JAVASCRIPTS -->
<script src="plugins/jquery-ui/jquery-ui.min.js"></script>
<script src="plugins/bootstrap/js/bootstrap.min.js"></script>
<script src="plugins/smoothscroll/SmoothScroll.min.js"></script>
<script src="plugins/waypoints/waypoints.min.js"></script>
<script src="plugins/counter-up/jquery.counterup.min.js"></script>
<script src="plugins/datepicker/bootstrap-datepicker.min.js"></script>
<script src="plugins/rwdtable/js/rwd-table.js"></script>
<script src="plugins/selectbox/jquery.selectbox-0.1.3.min.js"></script>
<script src="plugins/owl-carousel/owl.carousel.min.js"></script>
<script src="plugins/isotope/isotope.min.js"></script>
<script src="plugins/fancybox/jquery.fancybox.pack.js"></script>
<script src="plugins/isotope/isotope-triger.min.js"></script>
<script src="js/custom.js"></script>