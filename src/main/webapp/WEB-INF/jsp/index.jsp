<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <!-- Title  -->
    <title>Essence - Fashion Ecommerce Template</title>

    <%@include file="common/head_css.jsp"%>
</head>

<body>
    <%@include file="common/header.jsp"%>

    <!-- ##### 导航图片  Start ##### -->
    <div class="breadcumb_area bg-img" style="background-image: url(<%= request.getContextPath()%>/resource/img/bg-img/breadcumb.jpg); ">
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
                <!-- ##### 物品类型栏 Start ##### -->
                <div class="col-12 col-md-4 col-lg-3">
                    <div class="shop_sidebar_area">

                        <!-- ##### Single Widget ##### -->
                        <div class="widget catagory mb-50">
                            <!-- Widget Title -->
                            <h6 class="widget-title mb-30">Catagories</h6>

                            <!--  Catagories  -->
                            <div class="catagories-menu">
                                <ul id="menu-content2" class="menu-content collapse show">
                                    <!-- Single Item -->
                                    <li data-toggle="collapse" data-target="#clothing">

                                    <li><a href="/goods/page/1">图书教材</a></li>
                                    <li><a href="/goods/page/2">生活用品</a></li>
                                    <li><a href="/goods/page/3">交通工具</a></li>
                                    <li><a href="/goods/page/4">票卷小物</a></li>
                                    <li><a href="/goods/page/5">休闲食品</a></li>
                                    <li><a href="/goods/page/6">实用工具</a></li>
                                    <li><a href="/goods/page/7">闲置数码</a></li>
                                    <li><a href="/goods/page/8">其它物品</a></li>

                                    </li>

                                </ul>
                            </div>
                        </div>

                        <!-- ##### Single Widget ##### -->

                    </div>
                </div>
                <!-- ##### 物品类型栏 End ##### -->

                <!-- ##### 页面主内容 Start #### -->
                <div class="col-12 col-md-8 col-lg-9">
                    <div class="row">
                        <div class="col-lg-12">

                            <div id="carouselExampleIndicators" class="carousel slide my-4" data-ride="carousel">
                                <ol class="carousel-indicators">
                                    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                                    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                                    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                                </ol>
                                <div class="carousel-inner" role="listbox">
                                    <div class="carousel-item active">
                                        <img class="d-block img-fluid" src="https://i.loli.net/2019/11/26/xKkCbFqh8tnJOGy.png" alt="First slide">
                                    </div>
                                    <div class="carousel-item">
                                        <img class="d-block img-fluid" src="https://i.loli.net/2019/11/26/xKkCbFqh8tnJOGy.png" alt="Second slide">
                                    </div>
                                    <div class="carousel-item">
                                        <img class="d-block img-fluid" src="https://i.loli.net/2019/11/26/xKkCbFqh8tnJOGy.png" alt="Third slide">
                                    </div>
                                </div>
                                <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                    <span class="sr-only">Previous</span>
                                </a>
                                <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                    <span class="sr-only">Next</span>
                                </a>
                            </div>

                            <div class="row">
                                <c:forEach items="${hotGoods}" var="hotGoods">
                                    <div class="col-lg-4 col-md-6 mb-4">
                                        <div class="card h-100">
                                            <a href="/goods/${hotGoods.id}"><img class="card-img-top"
                                                                        src="<c:url value="${hotGoods.goodsPicture}"/>"
                                                                        alt=""></a>
                                            <div class="card-body">
                                                <h4 class="card-title">
                                                    <a href="onePages.jsp"><c:out value="${hotGoods.name}"/></a>
                                                </h4>
                                                <h5>$<c:out value="${hotGoods.price}"/></h5>
                                            </div>

                                        </div>
                                    </div>
                                </c:forEach>
                            </div>
                            <!-- /.row -->

                        </div>
                        <!-- /.col-lg-12 -->

                    </div>

                </div>
                <!-- ##### 页面主内容 End #### -->
            </div>
        </div>
    </section>
    <!--#### 内容 End #### -->
  
    <%@include file="common/footer.jsp"%>
    <%@include file="common/script.jsp"%>


    <script src="<%=request.getContextPath()%>/resource/js/myJS/header.js"></script>
</body>

</html>