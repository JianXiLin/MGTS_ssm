<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<jsp:useBean id="dateValue" class="java.util.Date"/>
<!DOCTYPE html>
<html lang="en">

<head>
    <!-- Title  -->
    <title>${goodsWithUser.goods.goodsName}</title>

    <%@include file="common/head_css.jsp" %>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/resource/css/myCSS/detailGoods.css"/>
</head>

<body>

<jsp:setProperty name="dateValue" property="time" value="${goodsWithUser.goods.gmtUpdate}"/>
<!-- 使用jsp:setProperty标签将时间戳设置到Date的time属性中 -->

<!-- ##### Header Area Start ######## -->
<%@include file="common/header.jsp" %>
<!-- ##### Header Area End ######## -->

<!-- ##### 导航图片  Start ##### -->
<div class="breadcumb_area bg-img"
     style="background-image: url(<%= request.getContextPath()%>/resource/img/bg-img/breadcumb2.jpg);">
    <div class="container h-100">
        <div class="row h-100 align-items-center">
            <div class="col-12">
                <div class="page-title text-center">
                    <h2>Goods</h2>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- ##### 导航图片 Area End ##### -->


<!--#### 内容 Start ####-->
<section class="shop_grid_area section-padding-80">
    <div class="container">
        <ol class="myBreadcrumb">
            <li><a href="${pageContext.request.contextPath}/">Home <span>></span></a></li>
            <li><a href="${pageContext.request.contextPath}/goods/page/${goodsWithUser.goods.type}">${goodsWithUser.goods.typeName} <span>></span></a>
            </li>
            <li class="active">${goodsWithUser.goods.goodsName}</li>
        </ol>
        <!-- ##### 页面主内容 Start #### -->
        <div class="row oneGoodsData">

            <!-- 物品信息 start-->
            <div class="col-lg-12 row">
                <!-- 物品图片-->
                <div class="col-lg-6">
                    <img class="goodsImg" src="<c:url value="${goodsWithUser.goods.goodsPicture}"/>" alt="">
                </div>
                <!-- 物品简要信息 start-->
                <div class="col-lg-6 info">
                    <!-- Title -->
                    <h1 class="goodsTitle">${goodsWithUser.goods.goodsName}</h1>
                    <!-- Author -->
                    <p class="user">
                        by
                        <a href="#">
                            <img src="<c:url value="${goodsWithUser.user.avaterUrl}"/>">${goodsWithUser.user.name}
                        </a>
                    </p>
                    <!-- Price -->
                    <div class="price">
                        价格 : <span>￥ ${goodsWithUser.goods.price}</span>
                    </div>
                    <!-- 联系方式 -->
                    <div class="contact">
                        <c:if test="${user == null}">
                            <div class="toLogin">
                                <a href="#" onclick="openLoginModal();">登录</a>后即可查看联系方式
                            </div>
                        </c:if>
                        <c:if test="${user != null && contact != null}">
                            <c:if test="${contact.wechat != null}">
                                <div>
                                    <img src="<%=request.getContextPath()%>/resource/img/icon_wechat.png"> :
                                    <span>${contact.wechat}</span>
                                </div>
                            </c:if>
                            <c:if test="${contact.qq != null}">
                                <div>
                                    <img src="<%=request.getContextPath()%>/resource/img/icon_qq.png"> :
                                    <span>${contact.qq}</span>
                                </div>
                            </c:if>
                            <c:if test="${contact.phoneNumber != null}">
                                <div>
                                    <img src="<%=request.getContextPath()%>/resource/img/icon_phone.png"> :
                                    <span>${contact.phoneNumber}</span>
                                </div>
                            </c:if>
                        </c:if>

                    </div>
                    <!-- Date/Time -->
                    <p class="time">Released on <fmt:formatDate value="${dateValue}"
                                                                pattern="yyyy年 MM月 dd日  HH:mm:ss"/></p>
                    <c:if test="${sessionScope.user != null}">
                        <c:if test="${goodsWithUser.user.accountId == sessionScope.user.accountId}">
                            <a href="${pageContext.request.contextPath}/goods/update/${goodsWithUser.goods.id}">
                                <button type="button" class="btn tradeBtn" href="">修改</button>
                            </a>
                        </c:if>
                        <c:if test="${goodsWithUser.user.accountId != sessionScope.user.accountId}">
                            <button id="cruelty" type="button"
                                    class="btn tradeBtn heartBtn"  ${isHeart?'style=\"display: none;\"':''}>
                                <img src="<%=request.getContextPath()%>/resource/img/cruelty.png">
                            </button>
                            <button id="heart" type="button"
                                    class="btn tradeBtn heartBtn" ${isHeart?'':'style=\"display: none;\"' }>
                                <img src="<%=request.getContextPath()%>/resource/img/heart.png">
                            </button>
                        </c:if>

                    </c:if>

                </div>
                <!-- 物品简要信息 end-->
            </div>
            <!-- 物品信息 end-->

            <hr>
            <!-- 物品描述信息 start-->
            <div class="col-lg-12 describe">

                <h2><b>物品描述</b></h2>
                <p>${goodsWithUser.goods.goodsDescribe}</p>
            </div>
            <!-- 物品描述信息 end-->
            <!-- 物品交易条件 start-->
            <div class="col-lg-12 barter">
                <h2><b>易物条件</b></h2>
                <p>${goodsWithUser.goods.transConditions}</p>
            </div>
            <!-- 物品交易条件 end-->
            <!-- Comments Form start-->
            <div class="col-lg-12 my-4 comment">
                <!--评论输入框-->
                <h5 class="">Leave a Comment:</h5>
                <div class="card-body">
                    <form id="commentForm" action="${pageContext.request.contextPath}/goods/insComment" method="post">
                        <input id="goodsId" type="hidden" name="goodsId" value="${goodsWithUser.goods.id}">
                        <input id="userId" type="hidden" name="userId" value="${sessionScope.user.id}">
                        <div class="form-group">
                            <textarea class="form-control" rows="3" name="content"></textarea>
                        </div>
                        <span id="comment" class="d-inline-block" data-trigger="hover"
                        ${sessionScope.user ==null?'data-content=\"请您先登录\"':''} >
                            <button type="submit"
                                    class="btn tradeBtn"
                            ${sessionScope.user ==null?' style="pointer-events: none;" disabled':''} >评论
                            </button>
                        </span>
                        <c:if test="${user == null}">
                            <span class="">
                                <a href="#" onclick="openLoginModal();"
                                   style="font-size: 15px;margin: 0 5px 0 10px;">登录</a>后即可进行评论
                            </span>
                        </c:if>
                    </form>
                </div>
                <!--评论内容-->
                <div id="commentText">
                    <c:forEach items="${chatWithUserDTOS}" var="chatWithUserDTO">
                        <div class="media col-lg-12 mt-4">
                            <img class="d-flex mr-3 rounded-circle" src="${chatWithUserDTO.user.avaterUrl}" alt="">
                            <div class="media-body">
                                <h5 class="mt-0">${chatWithUserDTO.user.name}</h5>
                                <jsp:setProperty name="dateValue" property="time"
                                                 value="${chatWithUserDTO.chat.gmtUpdate}"/>
                                <span class="time" style="">on  <fmt:formatDate value="${dateValue}"
                                                                                pattern="yyyy.MM.dd HH:mm:ss"/></span>
                                <div class="text">${chatWithUserDTO.chat.content}</div>
                            </div>
                        </div>
                    </c:forEach>
                </div>

            </div>


        </div>
        <!-- ##### 页面主内容 End #### -->
    </div>
</section>
<!--#### 内容 End #### -->

<!-- ##### Footer Area Start ##### -->
<%@include file="common/footer.jsp" %>
<!-- ##### Footer Area End ##### -->

<%@include file="common/script.jsp" %>

<script src="<%=request.getContextPath()%>/resource/js/jquery.validate.min.js"></script>
<script src="<%=request.getContextPath()%>/resource/js/myJS/detailGoods.js" type="text/javascript"></script>

</body>

</html>
