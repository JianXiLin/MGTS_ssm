<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

	<head>
		<!-- Title  -->
		<title>个人页面</title>

		<!-- Favicon  -->
		<%@include file="common/head_css.jsp"%>

	</head>

	<body>
		<!-- ##### Header Area Start ##### -->
		<%@include file="common/header.jsp"%>
		<!-- ##### Header Area End ##### -->

		<!-- ##### 导航图片  Start ##### -->
		<div class="breadcumb_area bg-img" style="background-image: url(<%= request.getContextPath()%>/resource/img/bg-img/bg-8.jpg); ">
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
		<section>
			<div class="container">
				<!-- ##### 页面主内容 Start #### -->
				<div class="row">
					<!-- 个人页面 -->
					个人页面

				</div>
				<!-- ##### 页面主内容 End #### -->
			</div>
		</section>
		<!--#### 内容 End #### -->

		<!-- ##### Footer Area Start ##### -->
		<%@include file="common/footer.jsp"%>
		<!-- ##### Footer Area End ##### -->

		<%@include file="common/script.jsp"%>




	</body>

</html>
