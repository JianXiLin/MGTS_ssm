<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<jsp:useBean id="dateValue" class="java.util.Date"/>
<!DOCTYPE html>
<html lang="en">

<head>
    <!-- Title  -->
    <title>${goodsWithUser.goods.name}</title>

    <%@include file="common/head_css.jsp" %>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/resource/css/myCSS/detailGoods.css"/>
</head>

<body>

<jsp:setProperty name="dateValue" property="time" value="${goodsWithUser.goods.gmtCreate}"/>
<!-- 使用jsp:setProperty标签将时间戳设置到Date的time属性中 -->
<fmt:formatDate value="${dateValue}" pattern="yyyy-MM-dd HH:mm:ss"/> <!-- 转换格式 -->

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
                    <h2>dresses</h2>
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
            <li><a href="#">Home <span>></span></a></li>
            <li><a href="#">Library <span>></span></a></li>
            <li class="active">Data</li>
        </ol>
        <!-- ##### 页面主内容 Start #### -->
        <div class="row oneGoodsData">

            <!-- 物品信息 start-->
            <div class="col-lg-12 row">
                <!-- 物品图片-->
                <div class="col-lg-6">
                    <img class="goodsImg" src="<c:url value="${goodsWithUser.goods.goodsPicture}"/>"> alt="">
                </div>
                <!-- 物品简要信息 start-->
                <div class="col-lg-6 info">
                    <!-- Title -->
                    <h1 class="goodsTitle">${goodsWithUser.goods.name}</h1>
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
                    <!-- Date/Time -->
                    <p class="time">Released on ${dateValue}</p>
                    <button type="button" class="btn tradeBtn">Submit</button>
                </div>
                <!-- 物品简要信息 end-->
            </div>
            <!-- 物品信息 end-->

            <hr>
            <!-- 物品描述信息 start-->
            <div class="col-lg-12 describe">
                <h2><b>物品描述</b></h2>
                <p>${goodsWithUser.goods.describe}</p>
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
                <h5 class="">Leave a Comment:</h5>
                <div class="card-body">
                    <form>
                        <div class="form-group">
                            <textarea class="form-control" rows="3"></textarea>
                        </div>
                        <button type="submit" class="btn btn-primary">Submit</button>
                    </form>
                </div>
            </div>
            <!-- Comments Form end-->
            <!-- Single Comment -->
            <div class="media col-lg-12 mt-4">
                <img class="d-flex mr-3 rounded-circle" src="http://placehold.it/50x50" alt="">
                <div class="media-body">
                    <h5 class="mt-0">Commenter Name</h5>
                    vvvv
                </div>
            </div>

            <!-- Comment with nested comments -->
            <div class="media col-lg-12 mt-4">
                <img class="d-flex mr-3 rounded-circle" src="http://placehold.it/50x50" alt="">
                <div class="media-body">
                    <h5 class="mt-0">Commenter Name</h5>
                    aaaa

                    <div class="media mt-4">
                        <img class="d-flex mr-3 rounded-circle" src="http://placehold.it/50x50" alt="">
                        <div class="media-body">
                            <h5 class="mt-0">Commenter Name</h5>
                            bbb
                        </div>
                    </div>

                    <div class="media mt-4">
                        <img class="d-flex mr-3 rounded-circle" src="http://placehold.it/50x50" alt="">
                        <div class="media-body">
                            <h5 class="mt-0">Commenter Name</h5>
                            aaaa
                        </div>
                    </div>

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

</body>

</html>
