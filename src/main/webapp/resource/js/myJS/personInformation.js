$("#change").click(function(){
    //获取路径
    var pathName=window.document.location.pathname;
    //截取，得到项目名称
    var projectName=pathName.substring(0,pathName.substr(1).indexOf('/')+1);

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

