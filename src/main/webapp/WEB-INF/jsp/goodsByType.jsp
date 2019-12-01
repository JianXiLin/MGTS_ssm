<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<jsp:useBean id="dateValue" class="java.util.Date"/>
<!DOCTYPE html>
<html lang="en">

<head>
    <!-- Title  -->
    <title>${goodsWithUserDTOList.get(0).goods.typeName}</title>

    <%@include file="common/head_css.jsp" %>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/resource/css/myCSS/showGoods.css"/>
</head>

<body>


<!-- ##### Header Area Start ######## -->
<%@include file="common/header.jsp" %>
<!-- ##### Header Area End ######## -->

<!-- ##### 导航图片  Start ##### -->
<div class="breadcumb_area bg-img"
     style="background-image: url(<%= request.getContextPath()%>/resource/img/bg-img/bg-1.jpg);">
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
        <div class="row">
            <!-- ##### 页面主内容 Start #### -->
            <div class="col-12 col-md-8 col-lg-12">
                <!-- row start -->
                <div class="row">
                    <!-- goodsList start -->
                    <div class="col-lg-12 goodsList">
                        <h2 class='title'>${goodsWithUserDTOList.get(0).goods.typeName}</h2>
                        <div class="row">
                            <c:forEach items="${goodsWithUserDTOList}" var="goodsWithUserDTO">
                                <div class="col-lg-3 col-md-6 mb-3">
                                    <div class="card h-100">
                                        <a href="/goods/${goodsWithUserDTO.goods.id}"><img class="card-img-top"
                                                                    src="<c:url value="${goodsWithUserDTO.goods.goodsPicture}"/>"
                                                                    alt=""></a>
                                        <div class="card-body">
                                            <h4 class="card-title">
                                                <a href="/goods/${goodsWithUserDTO.goods.id}"><c:out value="${goodsWithUserDTO.goods.goodsName}"/></a>
                                            </h4>
                                            <h5>$<c:out value="${goodsWithUserDTO.goods.price}"/></h5>
                                            <span style="padding-top:20px;">
                                                    <img src="${goodsWithUserDTO.user.avaterUrl}" style="margin-right:10px;width: 10%;border-radius: 50%;"/>${goodsWithUserDTO.user.name}
                                                </span>
                                            <jsp:setProperty name="dateValue" property="time" value="${goodsWithUserDTO.goods.gmtUpdate}"/>
                                            <p style="margin:0 0 0 30%;"> <fmt:formatDate value="${dateValue}" pattern="yyyy.MM.dd HH:mm:ss"/></p>

                                        </div>

                                    </div>
                                </div>
                            </c:forEach>

                        </div><!-- /.row -->

                        <!-- 页码按钮组 start-->
                        <c:if test="${goodsWithUserDTOList.size()!=0}">
                            <nav aria-label="Page navigation" class=" myPagination">
                                <ul class="pagination ">
                                    <c:if test="${goodsPageDTO.showFirstButton}">
                                        <li>
                                            <a href="?page=1" aria-label="Previous">
                                                &lt;&lt;
                                            </a>
                                        </li>
                                    </c:if>
                                    <c:if test="${goodsPageDTO.showPreButton}">
                                        <li>
                                            <a href="<c:url value="?page=${goodsPageDTO.page - 1}"></c:url>" aria-label="Previous">
                                                &lt;
                                            </a>
                                        </li>
                                    </c:if>
                                    <c:forEach items="${goodsPageDTO.showPagesList}" var="list">
                                        <li class="<c:out value="${(list==goodsPageDTO.page)?'active':_}"></c:out>">
                                            <a href="<c:url value="?page=${list}"></c:url>"><c:out value="${list}"></c:out></a>
                                        </li>
                                    </c:forEach>
                                    <c:if test="${goodsPageDTO.showNextButton}">
                                        <li>
                                            <a href="<c:url value="?page=${goodsPageDTO.page+1}"></c:url>" aria-label="Next">
                                                &gt;
                                            </a>
                                        </li>
                                    </c:if>
                                    <c:if test="${goodsPageDTO.showLastButton}">
                                        <li>
                                            <a href="<c:url value="?page=${goodsPageDTO.lastPageNum}"></c:url>" aria-label="Next">
                                                &gt;&gt;
                                            </a>
                                        </li>
                                    </c:if>
                                </ul>
                            </nav>
                        </c:if>
                        <!-- 页码按钮组 end-->

                    </div>
                    <!-- goodsList end -->
                </div>
                <!--  row end -->
            </div>
            <!-- ##### 页面主内容 End #### -->
        </div>
    </div>
</section>
<!--#### 内容 End #### -->

<!-- ##### Footer Area Start ##### -->
<%@include file="common/footer.jsp" %>
<!-- ##### Footer Area End ##### -->

<%@include file="common/script.jsp" %>

</body>

</html>
