$(function () {
    // 评论按钮
    $('#comment').popover(true);
    //取消收藏
    $('#cruelty').click(function() {
        $.ajax({
            url: '/goods/insCollection',
            method: 'post',
            data:{
                goodsId: $('#goodsId').val()
            },
            success: function (data) {
                $('#cruelty').attr('style', 'display:none')
                $('#heart').attr('style', 'display:block')
                console.log('cruelty_success')
            }

        })

    })
    //收藏按钮
    $('#heart').click(function() {
        $.ajax({
            url: '/goods/delCollection',
            method: 'post',
            data:{
                goodsId: $('#goodsId').val()
            },
            success: function (data) {
                $('#heart').attr('style', 'display:none')
                $('#cruelty').attr('style', 'display:block')
                console.log('heart_success')
            }

        })

    })

    //评论输入框
    $("#commentForm").validate({
        rules: {
            content: {
                required: true
            }
        },
        messages: {
            content: {
                required: '请填写评论内容！'
            }
        },
        errorPlacement: function (error, element) {
            var attrName = $(element).attr('name');
            if (attrName == 'content') {
                $(element).parent().append(error);
                $(element).parent().css('color', 'red');
            } else {
                error.insertAfter(element);
            }
        },
        highlight: function (element, errorClass, validClass) {
            $(element).css('border-color', 'red');
            $(element).css('box-shadow', 'red');
        },
        success: function (label, element) {
            $(element).css('border-color', '#ccc');
        },
    });

});