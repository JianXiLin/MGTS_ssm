<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 54683
  Date: 2019/10/16
  Time: 8:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<header class="header_area">
    <div class="classy-nav-container breakpoint-off d-flex align-items-center justify-content-between">
        <!-- Classy Menu -->
        <nav class="classy-navbar" id="essenceNav">
            <!-- Logo -->
            <a class="nav-brand" href="/"><img src="<%=request.getContextPath()%>/resource/img/core-img/logo.png" alt=""></a>
            <!-- Navbar Toggler -->
            <div class="classy-navbar-toggler">
                <span class="navbarToggler"><span></span><span></span><span></span></span>
            </div>
            <!-- Menu -->
            <div class="classy-menu">
                <!-- close btn -->
                <div class="classycloseIcon">
                    <div class="cross-wrap"><span class="top"></span><span class="bottom"></span></div>
                </div>
                <!-- Nav Start -->
                <div class="classynav">
                    <ul>
                        <li><a href="#">物品</a>
                            <ul class="dropdown">
                                <li><a href="/goods/page/1">图书教材</a></li>
                                <li><a href="/goods/page/2">生活用品</a></li>
                                <li><a href="/goods/page/3">交通工具</a></li>
                                <li><a href="/goods/page/4">票卷小物</a></li>
                                <li><a href="/goods/page/5">休闲食品</a></li>
                                <li><a href="/goods/page/6">实用工具</a></li>
                                <li><a href="/goods/page/7">闲置数码</a></li>
                                <li><a href="/goods/page/8">其它物品</a></li>
                            </ul>
                        </li>
                        <c:if test="${sessionScope.user != null}">
                            <li><a href="/goods/pending">挂起物品</a></li>
                        </c:if>

                        <li><a href="/user/person/1">个人页面（用于测试）</a></li>
                        <li><a href="transactionPage.html">交易页面（用于测试）</a></li>
                    </ul>
                </div>
                <!-- Nav End -->
            </div>
        </nav>

        <!-- Header Meta Data -->
        <div class="header-meta d-flex clearfix justify-content-end">
            <!-- Search Area -->
            <div class="search-area">
                <form action="#" method="post">
                    <input type="search" name="search" id="headerSearch" placeholder="Type for search">
                    <button type="submit"><i class="fa fa-search" aria-hidden="true"></i></button>
                </form>
            </div>
            <!-- User Login Info -->
            <div id="user_info" class="user-login-info" style="margin-right: 10px">
                <c:if test="${user == null}">
                    <a id="" href="#" onclick="openLoginModal();">
                        <img src="" alt="">
                        登录
                    </a>
                </c:if>

                <c:if test="${user!=null}">
                    <a  href="#" >
                        <img src=${user.avaterUrl} alt='user_img' style="max-width: 28px;margin-right: 5px;border-radius:5px;">
                            ${user.name}
                    </a>
                </c:if>

            </div>

        </div>

    </div>
</header>
<!-- ##### Header Area End ##### -->



<!-- 登录页面 -->
<div class="modal fade login" id="loginModal">
    <div class="modal-dialog login animated">
        <div class="modal-content">
            <div class="modal-header">
                <button id="close" type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <!-- <h4 class="modal-title">Login with</h4> -->
            </div>
            <div class="modal-body">
                <div class="box">
                    <div class="content">
                        <div class="social">
                            <a id="github_login" class="circle github" href="#" onclick="alert('目前仅支持微信登录')">
                                <i class="fa fa-github fa-fw"></i>
                            </a>
                            <a id="weixin_login" class="circle weixin" target="view_window">
                                <i class="fa fa-weixin fa-fw"></i>
                            </a>
                            <a id="weibo_login" class="circle weibo" href="#" onclick="alert('目前仅支持微信登录')">
                                <i class="fa fa-weibo fa-fw"></i>
                            </a>
                        </div>
                        <div class="division">
                            <div class="line l"></div>
                            <span>or</span>
                            <div class="line r"></div>
                        </div>
                        <div class="error"></div>
                        <div class="form loginBox">
                            <form method="" action="" accept-charset="UTF-8">
                                <input id="account" class="form-control" type="text" placeholder="Account" name="account">
                                <input id="password" class="form-control" type="password" placeholder="Password" name="password">
                                <input class="btn btn-default btn-login" type="button" value="Login" onclick="loginAjax()">
                            </form>
                        </div>
                    </div>
                </div>
                <div class="box">
                    <div class="content registerBox" style="display:none;">
                        <div class="form">
                            <form method="" html="{:multipart=>true}" data-remote="true" action="" accept-charset="UTF-8">
                                <input id="account_r" class="form-control" type="text" placeholder="Account" name="account">
                                <input id="password_r" class="form-control" type="password" placeholder="Password" name="password">
                                <input id="password_confirmation" class="form-control" type="password" placeholder="Repeat Password" name="password_confirmation">
                                <input class="btn btn-default btn-register" type="button" value="Create account" name="commit" onclick="alert('此功能未实现')">
                            </form>
                        </div>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <div class="forgot login-footer">
							<span>Looking to
								<a href="javascript: showRegisterForm();">create an account</a>
								?</span>
                </div>
                <div class="forgot register-footer" style="display:none">
                    <span>Already have an account?</span>
                    <a href="javascript: showLoginForm();">Login</a>
                </div>
            </div>
        </div>
    </div>
</div>
