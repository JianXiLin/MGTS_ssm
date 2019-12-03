<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

	<head>
		<meta charset="UTF-8">
		<meta name="description" content="">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		<!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

		<!-- Title  -->
		<title>挂起物品页面</title>

		<!-- Core Style CSS -->
		<%@include file="common/head_css.jsp"%>
		<style>
			body{
			   background:url('<%= request.getContextPath()%>/resource/img/wechatLogin_bg.jpg')  no-repeat center center;
			   background-size:cover;
			   background-attachment:fixed;
			   background-color:#CCCCCC;
			   
			}
			body::before{  
				filter:blur(5px);
				z-index:-1;
			}

			.login_box {
				position: absolute;
				top: 50%;
				left: 50%;
				margin-left: -190px;
				margin-top: -270px;
				border-radius: 4px;
				-moz-border-radius: 4px;
				-webkit-border-radius: 4px;
				background-color: #fff;
				width: 380px;
				height: 540px;
				box-shadow: 0 2px 10px #999;
				-moz-box-shadow: #999 0 2px 10px;
				-webkit-box-shadow: #999 0 2px 10px;
				
			}

			.login_box .qrcode {
				position: relative;
				text-align: center;
			}

			.login_box .qrcode .img {
				display: block;
				width: 270px;
				height: 270px;
				margin: 42px auto 12px;
			}

			.login_box .qrcode .sub_title {
				text-align: center;
				font-size: 20px;
				color: #353535;
				margin-bottom: 23px;
			}

			.login_box .qrcode .sub_desc {
				text-align: center;
				color: #a3a3a3;
				font-size: 15px;
				padding: 0 40px;
				line-height: 1.8;
			}
		</style>

	</head>

	<body>
		<div class="bg bg-blur"></div>
		<div class="login ng-scope" ng-controller="loginController" ng-if="true">

			<!--BEGIN logo-->
			<div class="logo">
				<i class="web_wechat_login_logo"></i>
			</div>
			<!--END logo-->
			<!--BEGIN login_box-->
			<div class="login_box">
				<div class="qrcode" ng-class="{hide: isScan || isAssociationLogin || isBrokenNetwork}">
					<div id="code" class="img"></div>
					<div ng-show="!isNeedRefresh" class="">
						<p class="sub_title">使用手机微信扫码登录</p>
						<!-- ngIf: showPrivacyTips -->
						<!-- ngIf: !showPrivacyTips -->
						<p class="sub_desc ng-scope" ng-if="!showPrivacyTips">网页版微信需要配合手机使用</p><!-- end ngIf: !showPrivacyTips -->
					</div>
					<div ng-show="isNeedRefresh" class="ng-hide">
						<div class="refresh_qrcode_mask">
							<i class="icon-refresh" ng-class="{rotateLoading: isRotateLoading}" ng-click="refreshQrcode()"></i>
						</div>
					</div>
				</div>

			</div>

		</div>

		<%@include file="common/script.jsp"%>
		<%-- wechatLogin js --%>
		<script>

            $(function () {

                //获取微信登录二维码
                function initWeChatLoginImg() {
                    console.log('${wechatUrl}')
					$("#code").qrcode(
						{
							correctLevel: 0,
							width: 270,                       //宽度
							height: 270,                       //高度
							background: "#ffffff",            //背景颜色
							foreground: "#000",                //前景颜色
							text: '${wechatUrl}'     //任意内容
						}
					);

                }/*end  initWeChatLoginImg*/
                initWeChatLoginImg();

                var t = setInterval(queryWeixi, 1000)
                function queryWeixi() {
                    $.ajax({
                        url: '/user/WechatAuthState',
                        method: 'post',
                        data: {
                            uuid: uuid
                        },
                        dataType: 'json',
                        success: function (res) {
                            if (res.errcode == 0) {
                                if (res.auth == true) {
                                    clearInterval(t)
                                    //授权成功
                                    window.opener=null;
                                    window.open('','_self');
                                    window.close();
                                } else if (res.auth == false) {
                                    console.log("等待..")
                                } else {
                                    alert("服务器出错")
                                    clearInterval(t)
                                }

                            }
                        }
                    })/*end 轮询ajax*/
                }/*end queryWeixinisAuth*/


            })/*end jqury*/

		</script>

	</body>

</html>
