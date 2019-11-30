var uuid = null
$(function () {
    alert("test01")
    //获取微信登录二维码
    function getWeChatLoginImg() {
        $.ajax({
            url:'/user/getWechatLogin',
            method:'get',
            success:function (data) {
                $("#code").qrcode(
                    {
                        correctLevel: 0,
                        width: 270,                       //宽度
                        height: 270,                       //高度
                        background: "#ffffff",            //背景颜色
                        foreground: "#000",                //前景颜色
                        text: data.wechatUrl        //任意内容
                    }
                );
                uuid = data.uuid;
                alert(data.wechatUrl+"---url")
            }

        })/*end ajax*/
    }
    getWeChatLoginImg();

})/*end jqury*/
