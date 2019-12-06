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
            <!-- 我的物品填写 -->
            <div class="row">
                <div class="col-2">
                    <div class="card" style="width: 10rem; height:14rem;">
                        <img class="card-img-top" src="https://i.loli.net/2019/11/26/N1LQXYfsgMoxFTn.jpg" alt="暂无图片">
                    </div>
                </div>
                <div class="col-3">
                    <div class="row">
                        <div class="col">物品名称：</div>
                        <div class="col text-truncate">
                            Head First Java_8（JAVA经典畅销书 生动有趣 轻松学好JAVA）
                        </div>
                        <div class="w-100"></div>
                        <!-- style是定义第五行后省略内容，需要其他行代码来配合，其他的不晓得。 -->
                        <div class="col" style=" overflow : hidden;
							text-overflow: ellipsis;
							display: -webkit-box;
							 -webkit-line-clamp: 4;
							-webkit-box-orient: vertical;">
                            《HeadFirstJava》是一本完整地面向对象(object-oriented，OO)程序设计和Java的学习指导用书，
                            根据学习理论所设计，你可以从程序语言的基础开始，到线程、网络与分布式程序等项目。重要的是，
                            你可以学会如何像一个面向对象开发者一样去思考，而且不只是读死书。
                        </div>
                    </div>
                </div>
                <div class="col-3">
                    <div class="row">
                        <div class="col">交易条件：</div>
                        <div class="w-100"></div>
                        <div class="col-sm-12">
                            <p class="card-text">《PHP程序设计》</p>
                        </div>
                    </div>
                </div>
                <div class="col-2">
                    <div class="row align-items-center">
                        <div class="col-lg">拟定价格：</div>
                    </div>
                    <div class="row align-items-center">
                        <div class="col-lg">
                            <p class="card-text">50.50</p>
                        </div>
                    </div>
                    <div class="row align-items-center">
                        <div class="col-lg">物品类型：</div>
                    </div>
                    <div class="row align-items-center">
                        <div class="col-lg">
                            <p class="card-text">图书教材</p>
                        </div>
                    </div>
                    <div class="row align-items-center">
                        <div class="col-lg">
                            更新时间：
                        </div>
                    </div>
                    <div class="row align-items-center">
                        <div class="col-lg">
                            <p class="card-text">2019/12/5</p>
                        </div>
                    </div>
                </div>
                <div class="col-2">
                    <div class="row">
                        <div class="col">
                            <button type="button" class="btn btn btn-light btn-lg">查看页面</button>
                        </div>
                        <div class="w-100"></div>
                        <div class="col">
                            <button type="button" class="btn btn btn-light btn-lg">&nbsp;&nbsp;&nbsp;修&nbsp;&nbsp;&nbsp;改&nbsp;&nbsp;</button>
                        </div>
                        <div class="w-100"></div>
                        <div class="col">
                            <button type="button" class="btn btn btn-light btn-lg">&nbsp;&nbsp;&nbsp;删&nbsp;&nbsp;&nbsp;除&nbsp;&nbsp;</button>
                        </div>
                    </div>
                </div>

            </div>


        </div>
    </div>
</section>
<!--#### 内容 End #### -->

<%@include file="common/footer.jsp" %>
<%@include file="common/script.jsp" %>

</body>

</html>