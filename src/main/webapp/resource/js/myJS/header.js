var uuid = null

$(function () {
    //初始化js轮询
    var t = setInterval(queryWeixinisAuth, 1000)
    clearInterval(t);

    //微信登录按钮事件
    $("#weixin_login").click(function () {
        getWeChatLoginImg();
        $("#code").css("display", "block")
        $("#user_info").css("display", "none")
        t = setInterval(queryWeixinisAuth, 1000);
    })

    //获取微信登录二维码
    function getWeChatLoginImg() {
        $.ajax({
            url: '/user/getWechatLogin',
            method: 'get',
            success: function (data) {
                alert("getLogin")
                uuid = data.uuid;
                window.open('/user/toWeChatPage?uuid=' + data.uuid)
            }

        })
        /*end ajax*/
    }


    //ajax轮询: 询问微信是否确认登录
    //点击登录、显示二维码后，js轮询ajax内容
    function queryWeixinisAuth() {
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
                        // $("#toLogin").css("display","none")
                        $("#close").click();

                        $("#code").css("display", "none")
                        $("#user_info").css("display", "block")
                        $("#likesBut").css("display", "block")
                        $("#carBtn").css("display", "block")

                        // $("#toLogin").html(
                        //     "<img src='"+res.wechatUserDTO.headimgurl+"' alt='user_img' " +
                        //     "style='max-width: 28px;margin-right: 5px;border-radius:5px;'>"+
                        //     res.wechatUserDTO.nickname
                        // )

                        $.cookie('token', res.token);
                        console.log(res.token)
                        window.location.reload()
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

    /**
     * 退出登录
     */
    function logoutWechat() {
        console.log("1");
        $.ajax({
            url: '/user/logout',
            method: 'get',
            success: function () {
                //退出登录
                $.cookie('token', null);
                window.location.reload();
            },
            erorr: function (date) {
                console.log(date)
            }
        })/*end 轮询ajax*/
    }/*end logoutWechat*/
    $('#logoutBtn').click(logoutWechat);

})/*end jqury*/
