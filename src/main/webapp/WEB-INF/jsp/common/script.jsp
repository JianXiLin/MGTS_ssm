<%--
  Created by IntelliJ IDEA.
  User: 54683
  Date: 2019/10/16
  Time: 9:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!-- jQuery (Necessary for All JavaScript Plugins) -->
<script src="<%= request.getContextPath()%>/resource/js/jquery/jquery-2.2.4.min.js"></script>
<script type="text/javascript" src="https://cdn.bootcss.com/jquery-cookie/1.4.1/jquery.cookie.js"></script>
<!-- Popper js -->
<script src="<%= request.getContextPath()%>/resource/js/popper.min.js"></script>
<!-- Bootstrap js -->
<script src="<%= request.getContextPath()%>/resource/js/bootstrap.min.js"></script>
<!-- Plugins js -->
<script src="<%= request.getContextPath()%>/resource/js/plugins.js"></script>
<!-- Classy Nav js -->
<script src="<%= request.getContextPath()%>/resource/js/classy-nav.min.js"></script>
<!-- Active js -->
<script src="<%= request.getContextPath()%>/resource/js/active.js"></script>
<!-- login_register js -->
<script src="<%= request.getContextPath()%>/resource/js/login-register.js"></script>
<!-- 二维码.js-->
<script src="<%=request.getContextPath()%>/resource/js/jquery/jquery.qrcode.min.js" type="text/javascript"></script>
<!-- header.js -->
<script src="<%=request.getContextPath()%>/resource/js/myJS/header.js" type="text/javascript"></script>

<script src="<%=request.getContextPath()%>/resource/js/myJS/personInformation.js" type="text/javascript"></script>

<script src="<%=request.getContextPath()%>/resource/js/myJS/Test.js" type="text/javascript"></script>
<script type="text/javascript" src="https://cdn.goeasy.io/goeasy-1.0.3.js"></script>
<script type="text/javascript">
    var goEasy = new GoEasy({
        host:'hangzhou.goeasy.io',
        appkey: "BC-81939b1ca77f4bf48a50c59510df71cd",
        forceTLS:false,
        onConnected: function() {
            console.log('连接成功！')
        },
        onDisconnected: function() {
            console.log('连接断开！')
        },
        onConnectFailed: function(error) {
            console.log('连接失败或错误！')
        }
    });
</script>
