<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<jsp:useBean id="dateValue" class="java.util.Date"/>
<!DOCTYPE html>
<html lang="en">

<head>
    <!-- Title  -->
    <title>Essence - Fashion Ecommerce Template</title>

    <%@include file="common/head_css.jsp" %>
</head>

<body>

<%@include file="common/header.jsp" %>

<!-- ##### 导航图片  Start ##### -->
<div class="breadcumb_area bg-img"
     style="background-image: url(<%= request.getContextPath()%>/resource/img/bg-img/breadcumb.jpg); ">
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
        <div class="row">
            <!-- 我的物品填写 -->
            <c:forEach items="${goodsList}" var="goods">

                    <div class="col-2">
                        <div class="card" style="width: 10rem; height:14rem;">
                            <img class="card-img-top" src="${goods.goodsPicture}"
                                 alt="暂无图片">
                        </div>
                    </div>
                    <div class="col-3">
                        <div class="row">
                            <div class="col">物品名称：</div>
                            <div class="col text-truncate">${goods.goodsName}</div>
                            <div class="w-100"></div>
                            <!-- style是定义第五行后省略内容，需要其他行代码来配合，其他的不晓得。 -->
                            <div class="col" style=" overflow : hidden;
							text-overflow: ellipsis;
							display: -webkit-box;
							 -webkit-line-clamp: 4;
							-webkit-box-orient: vertical;">${goods.goodsDescribe}</div>
                        </div>
                    </div>
                    <div class="col-3">
                        <div class="row">
                            <div class="col">交易条件：</div>
                            <div class="w-100"></div>
                            <div class="col-sm-12">
                                <p class="card-text">${goods.transConditions}</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-2">
                        <div class="row align-items-center">
                            <div class="col-lg">拟定价格：</div>
                        </div>
                        <div class="row align-items-center">
                            <div class="col-lg">
                                <p class="card-text">${goods.price}</p>
                            </div>
                        </div>
                        <div class="row align-items-center">
                            <div class="col-lg">物品类型：</div>
                        </div>
                        <div class="row align-items-center">
                            <div class="col-lg">
                                <p class="card-text">${goods.typeName}</p>
                            </div>
                        </div>
                        <div class="row align-items-center">
                            <div class="col-lg">
                                更新时间：
                            </div>
                        </div>
                        <div class="row align-items-center">
                            <div class="col-lg">
                                <jsp:setProperty name="dateValue" property="time" value="${goods.gmtUpdate}"/>
                                <p class="card-text"><fmt:formatDate value="${dateValue}" pattern="yyyy.MM.dd HH:mm:ss"/></p>
                            </div>
                        </div>
                    </div>
                    <div class="col-2">
                        <div class="row">
                            <div class="col">
                                <button type="button" class="btn btn btn-light btn-lg"><a href="${pageContext.request.contextPath}/goods/${goods.id}">查看页面</a></button>
                            </div>
                            <div class="w-100"></div>
                            <div class="col">
                                <button type="button" class="btn btn btn-light btn-lg"><a href="${pageContext.request.contextPath}/goods/update/${goods.id}">&nbsp;&nbsp;&nbsp;修&nbsp;&nbsp;&nbsp;改&nbsp;&nbsp;</a></button>
                            </div>
                            <div class="w-100"></div>
                            <div class="col">
                                <button type="button" class="btn btn btn-light btn-lg" onclick="alert('此功能未实现')"><a href="#">&nbsp;&nbsp;&nbsp;删&nbsp;&nbsp;&nbsp;除&nbsp;&nbsp;</a></button>
                            </div>
                        </div>
                    </div>

            </c:forEach>

            <!-- 页码按钮组 start-->
            <c:if test="${goodsList.size()!=0}">
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
    </div>
</section>
<!--#### 内容 End #### -->

<%@include file="common/footer.jsp" %>
<%@include file="common/script.jsp" %>

</body>

</html>