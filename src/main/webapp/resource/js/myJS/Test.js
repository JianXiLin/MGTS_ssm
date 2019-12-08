$("#test").click(function() {
    alert("shhshsh")
    var wechat="1";
    $.ajax({
        type:"post",
        url:"/",
        data: {"wechat":wechat },
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
    goEasy.subscribe({
        channel: "BC-81939b1ca77f4bf48a50c59510df71cd",
        onMessage: function (message) {
            console.log("Channel:" + message.channel + " content:" + message.content);
        }
    });

});