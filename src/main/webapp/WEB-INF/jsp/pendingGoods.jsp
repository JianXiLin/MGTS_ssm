<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <!-- Title  -->
    <c:if test="${goods!=null}">
        <title>修改物品信息</title>
    </c:if>
    <c:if test="${goods==null}">
        <title>挂起物品</title>
    </c:if>

    <!-- Favicon  -->
    <%@include file="common/head_css.jsp" %>
    <link href="https://cdn.bootcss.com/bootstrap-fileinput/4.5.1/css/fileinput.css" rel="stylesheet">
    <style>
        .userNav a{
            line-height: 100% !important;
            width: 100% !important;
            text-align: left !important;
        }
        .contact-data .card{
            border:none;
        }
        .contact-data .card .card-header{
            background-color: white !important;
            border: none;

        }
        .contact-data div a{
            font-size: 15px;
        }
        .contact-data div a:hover{
            font-size: 15px;

        }
    </style>
</head>

<body>
<!-- ##### Header Area Start ##### -->
<%@include file="common/header.jsp"%>
<!-- ##### Header Area End ##### -->


<!-- ##### 导航图片  Start ##### -->
<div class="breadcumb_area bg-img" style="background-image: url(<%= request.getContextPath()%>/resource/img/bg-img/bg-4.jpg); ">
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
        <!-- ##### 页面主内容 Start #### -->
        <div class="row ">

            <!-- 挂起物品填写 -->
            <div class="col-lg-8 offset-lg-2">

                <form class="col-lg-12 form-horizontal" id="form" method="post" action="${pageContext.request.contextPath}/goods/pending">
                    <c:if test="${error!=null}">
                        <span class="alert alert-danger" role="alert" style="display: inline-block">${error}</span>
                    </c:if>
                    <input type="hidden" name="goodsId" value="${goods.id}">
                    <input type="hidden" name="userAccountId" value="${sessionScope.user.accountId}">
                    <div class="form-group">
                        <label class="col-sm-2 control-label">物品名称:</label>
                        <div class="col-sm-12">
                            <input type="text" class="form-control" name="goodsName" placeholder="物品名称"
                                   value="${goods.goodsName}">
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-sm-2 control-label">价格:</label>
                        <div class="col-sm-12">
                            <input type="text" class="form-control" name="price" placeholder="价格" value="${goods.price}">
                        </div>
                    </div>
                    <div class="form-group">
                        <label  class="col-sm-2 control-label">描述：</label>
                        <div class="col-sm-12">
                            <textarea class="form-control" rows="3" name="goodsDescribe"
                                      placeholder="描述信息"><c:out value="${goods.goodsDescribe}"></c:out></textarea>
                        </div>
                    </div>
                    <div class="form-group">
                        <label  class="col-sm-2 control-label">易物条件：</label>
                        <div class="col-sm-12">
                            <textarea class="form-control" rows="3" name="transConditions"
                                      placeholder="易物条件"><c:out value="${goods.transConditions}"></c:out></textarea>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-sm-2 control-label" style="text-align: center">物品类型：</label>
                        <div class="col-sm-4">
                            <select class="col-sm-12 form-control" name="goodsTypeName">
                                <option <c:out value="${goods.type == 1?'selected':''}"/>>图书教材</option>
                                <option <c:out value="${goods.type == 2?'selected':''}"/>>生活用品</option>
                                <option <c:out value="${goods.type == 3?'selected':''}"/>>交通工具</option>
                                <option <c:out value="${goods.type == 4?'selected':''}"/>>票卷小物</option>
                                <option <c:out value="${goods.type == 5?'selected':''}"/>>休闲食品</option>
                                <option <c:out value="${goods.type == 6?'selected':''}"/>>实用工具</option>
                                <option <c:out value="${goods.type == 7?'selected':''}"/>>闲置数码</option>
                                <option <c:out value="${goods.type == 8?'selected':''}"/>>其它物品</option>
                            </select>
                        </div>
                    </div>
                    <div class="form-group">
                        <div id="addFormPicName" class="col-sm-offset-2 col-sm-10">
                            <button id="fileBtn" type="button" class="col-sm-2 btn btn-primary" data-toggle="modal"
                                    data-target="#selectPicModal">添加图片
                            </button>
                            <img id="goodsImg" style="width:50px" src="${goods.goodsPicture}"/>
                        </div>
                        <input type="hidden" id="addFormPic" name="goodsPicture" class="form-control" value="${goods.goodsPicture}">
                        <div class="progress" style="
						                background-color: #fff;
						                margin: 10px 0 0 3%;
										width:80%;

						            ">
                            <div id="file_progress" class="progress-bar" role="progressbar" style="width: 0%;" aria-valuenow="25"
                                 aria-valuemin="0" aria-valuemax="100">
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-10">
                            <c:if test="${goods!=null}">
                                <button type="submit" class="btn btn-default">修改</button>
                            </c:if>
                            <c:if test="${goods==null}">
                                <button type="submit" class="btn btn-default" ${error==null?'':'disabled'} >发布</button>
                            </c:if>
                        </div>
                    </div>
                </form>

                <!-- 模态框 -->
                <div style="z-index: 100000" class="modal fade" id="selectPicModal" tabindex="-1" role="dialog"
                     aria-labelledby="selectPicModalLabel">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h4 class="modal-title" id="myModalLabel">选择图片</h4>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                                        aria-hidden="true">&times;</span></button>
                            </div>
                            <form id="selectPicForm" method="post"  enctype="multipart/form-data">
                                <div class="modal-body">
                                    <input type="file" id="filePicture" name="imageFile" multiple="multiple"><!--  -->
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                                    <button type="button" id="s" class="btn btn-primary" data-dismiss="modal"
                                            οnclick="selectPic()">上传
                                    </button>
                                </div>
                            </form>
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
<%@include file="common/footer.jsp"%>
<!-- ##### Footer Area End ##### -->

<%@include file="common/script.jsp"%>



<script src="https://cdn.bootcss.com/bootstrap-fileinput/4.5.1/js/fileinput.min.js"></script>
<script src="https://cdn.bootcss.com/bootstrap-fileinput/4.5.1/js/locales/zh.min.js"></script>
<script src="<%=request.getContextPath()%>/resource/js/jquery.validate.min.js"></script>
<script src="<%=request.getContextPath()%>/resource/js/myJS/pending.js"></script>

</body>

</html>
