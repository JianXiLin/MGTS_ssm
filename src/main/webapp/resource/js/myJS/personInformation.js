$("#change").click(function(){
        var wechat=$("#wechat").val();
        var phone=$("#phone").val();
        var qq=$("#QQ").val();
    $.ajax({
        type:"post",
        url:"/personInformation/change",
        data: {"wechat":wechat,"phone": phone ,"qq": qq },
        async: true,
        dataType:"json",
        success:function (msg) {
            if(msg.success){
                alert("ok");
            }else {
                alert("fail");
            }
        }

    } );

    alert("修改成功");
});

