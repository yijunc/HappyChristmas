<!-- LOGIN  MODAL -->


<%@ page contentType="text/html;charset=UTF-8" language="java"
         pageEncoding="utf-8" %>
<style type="text/css">
    .modal-body .fa {
        margin-left: 5%;
    }
</style>
<div id="loginModal" tabindex="-1" class="modal fade" role="dialog">
    <div class="modal-dialog">
        <!-- Modal content-->
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title">用户登录</h4>
            </div>
            <div class="modal-body">
                <form class="loginForm" action="/UserController" method="post">
                    <input type="hidden" name="command" value="LOGIN"/>
                    <div class="form-group">
                        <i class="fa fa-user" aria-hidden="true"></i>
                        <input type="text" class="form-control" id="user_name" placeholder="用户名">
                    </div>
                    <div class="form-group">
                        <i class="fa fa-lock" aria-hidden="true"></i>
                        <input type="password" class="form-control" id="user_psw" placeholder="密码">
                    </div>
                    <div class="form-group">
                        <button type="submit" class="btn btn-primary">登录</button>
                        <a href="#" class="pull-right link" style="margin-top: 5%">忘记密码?</a>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <p>还没有账号? <a href="/register.jsp" class="link">注册新用户</a></p>
            </div>
        </div>

    </div>
</div>