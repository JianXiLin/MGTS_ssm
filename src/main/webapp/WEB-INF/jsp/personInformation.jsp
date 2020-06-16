<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<html>
<head>
    <title>personInformation</title>
    <meta  name="viewport" content="width=device-width,initial-scale=1">
    <%@include file="common/head_css.jsp"%>
    <%@include file="common/personInformation_css.jsp"%>
    <style>
        body{
            padding-top: 100px;
        }
    </style>
</head>
<body>
        <%@include file="common/header.jsp"%>

        <!-- ##### 个人信息 ##### -->
        <div class="row">
            <!-- 左侧 -->
            <div class="col-sm-3  offset-1">
                <div class="panel panel-default">
                    <div class="panel-heading" style="font-size: 20px;"> <strong>个人信息</strong><div id="help" style="display: none">${user.id}</div></div>
                    <div class="panel-body">
                        <img src=${user.avaterUrl} alt='user_img' style="max-width: 100px;margin-right: 100px;border-radius:5px; position: absolute;  top:21%; left: 50%; transform: translate(-50%, -50%);" alt="Me" >
                        <p class="text-center text-primary">${user.name}</p>
                        <address>
                            <span>籍贯：${user.country}</span><br>
                            <span class="glyphicon glyphicon-home" title="Address">地址：${user.province}${user.city}</span><br>
                            <c:if test="${user.sex==1}">
                                <span class="glyphicon glyphicon-file" title="PostalCoded">性别：男</span><br>
                            </c:if>
                            <c:if test="${user.sex==2}">
                                <span class="glyphicon glyphicon-file" title="PostalCoded">性别：女</span><br>
                            </c:if>

                        </address>
                    </div>
                </div>
                <div class="panel panel-info">
                    <div class="panel panel-heading">其他信息</div>
                    <div class="panel-body">
                        <div class="row">
                            <div class="col-sm-3">
                                <span class="text-warning">交易记录</span>
                            </div>
                            <div class="col-sm-9">
                                <div class="progress">
                                    <div class="progress-bar progress-bar-striped progress-bar-warning active" style="width: 15%"></div>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-sm-3">
                                <span class="text-danger">收藏记录</span>
                            </div>
                            <div class="col-sm-9">
                                <div class="progress">
                                    <div class="progress-bar progress-bar-striped progress-bar-danger active" style="width: ${collection_num}"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="panel panel-primary" id="user-info">
                    <div class="panel-body">
                        <form class="form-horizontal">
                            <div class="form-group">
                                <label for="wechat" class="col-sm-2 control-label">WeChatID</label>
                                <div class="col-sm-10">
                                    <input type="text" id="wechat" class="form-control" value="${user_Info.wechat}">
                                </div>
                            </div>

                            <div class="form-group">
                                <label for="phone" class="col-sm-3 control-label">电话</label>
                                <div class="col-sm-10">
                                    <input type="text" id="phone" class="form-control" value="${user_Info.phoneNumber}">
                                </div>
                            </div>

                            <div class="form-group">
                                <label for="QQ" class="col-sm-2 control-label">QQ</label>
                                <div class="col-sm-10">
                                    <input type="text" id="QQ" class="form-control" value="${user_Info.qq}">
                                </div>
                            </div>

                            <div class="form-group">
                                <div class="col-sm-10 col-sm-offset-2">
                                    <button  type="button" class="btn btn-primary pull-right" id="change">修改</button>
                                    <div class="clearfix"></div>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
            <!-- 右侧 -->
            <div class="col-sm-7">
                <div class="panel-group" id="accoradion">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <div class="panel-title">
                                <a href="#collapseOne" data-toggle="collapse" data-parent="#accoradion" style="
                                    font-size: 18px;
                                    color: #000; ">交易列表</a>
                            </div>
                            <div id="collapseOne" class="panel-collapse collapse  show">
                                <div class="panel-body">
                                    <ul class="list-group">
                                        <li class="list-group-item list-group-item-success">
                                            <div class="row">
                                                <div class="col-sm-4">2019/12/1-2019/12/2</div>
                                                <div class="col-sm-4">XXX物品</div>
                                                <div class="col-sm-4">交易条件</div>
                                            </div>
                                        </li>

                                        <li class="list-group-item list-group-item-warning">
                                            <div class="row">
                                                <div class="col-sm-4">2019/12/1-2019/12/2</div>
                                                <div class="col-sm-4">XXX物品</div>
                                                <div class="col-sm-4">交易条件</div>
                                            </div>
                                        </li>

                                        <li class="list-group-item list-group-item-info">
                                            <div class="row">
                                                <div class="col-sm-4">2019/12/1-2019/12/2</div>
                                                <div class="col-sm-4">XXX物品</div>
                                                <div class="col-sm-4">交易条件</div>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>

                        <div class="panel-heading">
                            <div class="panel-title">
                                <a href="#collapseTwo" data-toggle="collapse" data-parent="#accoradion" style="
                                    font-size: 18px;
                                    color: #000; ">收藏记录</a>
                            </div>


                            <div id="collapseTwo" class="panel-collapse collapse  show">
                                <div class="panel-body">
                                    <ul class="list-group">

                                        <li class="list-group-item list-group-item-success">
                                            <div class="row">
                                                <div class="col-sm-4">收藏物品时间</div>
                                                <div class="col-sm-4">收藏物品名称</div>
                                            </div>
                                        </li>

                                        <c:forEach items="${collection}" var="mycollection">
                                                <li class="list-group-item list-group-item-success">
                                                    <div class="row">
                                                        <div class="col-sm-4"><c:out value="${mycollection.value}" /></div>
                                                        <div class="col-sm-4"><c:out value="${mycollection.key}" /></div>
                                                    </div>
                                                </li>
                                        </c:forEach>





                                    </ul>
                                </div>
                            </div>
                        </div>


                    </div>
                </div>
            </div>
        </div>


        <!-- #####底部##### -->
        <%@include file="common/footer.jsp"%>
        <%@include file="common/script.jsp"%>

</body>
</html>
