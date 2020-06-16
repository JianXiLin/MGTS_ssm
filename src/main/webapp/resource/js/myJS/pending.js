$(function () {
    // language=JQuery-CSS
    $('#s').click(function () {
        selectPic();
    });
    // language=JQuery-CSS
    $("#form").validate({
        rules: {
            price: {
                required: true,
                number: true
            },
            goodsName: {
                required: true
            },
            goodsDescribe: {
                required: true
            }
        },
        messages: {
            price: {
                required: '价格必须填写！',
                number: '请输入正确的数值'
            },
            goodsName: {
                required: '请填写物品名称'
            },
            goodsDescribe: {
                required: '请填写物品描述信息'
            }
        },
        errorPlacement: function (error, element) {
            var attrName = $(element).attr('name');
            if (attrName == 'price' || attrName == 'goodsName' || attrName == 'goodsDescribe') {
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
/*###### 挂起物品 ####### */
$(function () {
    initFileInput("filePicture");
})

/**
 * 初始化fileinput控件（第一次初始化）
 * @param ctrlName id
 * @param uploadUrl 路径
 * @returns
 */
function initFileInput(ctrlName) {
    var control = $('#' + ctrlName);
    control.fileinput({
        language: 'zh', //设置语言
        //uploadUrl: uploadUrl, //上传的地址
        allowedFileExtensions: ['jpg', 'png', 'gif'], //接收的文件后缀
        showUpload: false, //是否显示上传按钮
        showCaption: false, //是否显示标题
        browseClass: "btn btn-primary", //按钮样式
        previewFileIcon: "<i class='glyphicon glyphicon-king'></i>",
    });
}

function selectPic() {
    ajaxUploadToSM()
    // alert("上传成功")
}


function ajaxUploadToSM() {

    $('#file_progress').attr('style', 'width:0%');
    $('#file_progress').html('')
    $.ajax({
        type: "post",
        url: "/file/upload",
        async: true, //异步  true 同步 false
        contentType: false, //上传的时候必须要
        processData: false,
        data: new FormData($('#selectPicForm')[0]),
        beforeSend: function () {
            console.log("before")
            $('#file_progress').attr('style', 'width:20%');
            $('#file_progress').html('20%')
        },
        complete: function () {
            console.log("complete")
            $('#file_progress').attr('style', 'width:100%');
            $('#file_progress').html('100%')
        },
        success: function (data) {
            console.log("success")
            $('#file_progress').attr('style', 'width:80%');
            $('#file_progress').html('80%')
            $('#fileBtn').html('修改图片')
            var url = data;

            $('#addFormPic').val(url);
            $('#goodsImg').attr('src', url);
            console.log(url)
        },
        error: function (data) {
            console.log("error")
            console.log(data);
        },
    })
}
