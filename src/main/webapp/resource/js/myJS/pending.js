$(function() {
	// language=JQuery-CSS
    $('#s').click(function() {
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
        errorPlacement: function(error, element) {
            var attrName = $(element).attr('name');
            if (attrName == 'price' || attrName == 'goodsName' || attrName == 'goodsDescribe') {
                $(element).parent().append(error);
                $(element).parent().css('color', 'red');
            } else {
                error.insertAfter(element);
            }
        },
        highlight: function(element, errorClass, validClass) {
            $(element).css('border-color', 'red');
            $(element).css('box-shadow', 'red');
        },
        success: function(label, element) {
            $(element).css('border-color', '#ccc');
        },
    })
});

	$(function() {
		initFileInput("filePicture", "https://sm.ms/api/upload");
	})
	/**
	 * 初始化fileinput控件（第一次初始化）
	 * @param ctrlName id
	 * @param uploadUrl 路径
	 * @returns
	 */
	function initFileInput(ctrlName, uploadUrl) {
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
		var file = $('#filePicture')[0];
		for (var i = 0; i < file.files.length; i++) {
			var formData = new FormData();
			formData.append('smfile', file.files[i]);
			ajaxUploadToSM(formData)
		}
		// alert("上传成功")
	}


	function ajaxUploadToSM(formData) {

		// alert("上传中。。。。")
		$.ajax({
			type: "post",
			dataType: "json",
			url: "https://sm.ms/api/upload",
			async: false, //异步  true 同步
			cache: false, //缓存 false的话会在url后面加一个时间缀，让它跑到服务器获取结果。
			contentType: false, //上传的时候必须要 
			processData: false,
			data: formData,
			success: function(data) {
				console.log(data);
				var url = '';
				if (data.success) {
					url = data.data.url;
				} else {
					var rep = /https?:\/\/(?:[-\w.]|(?:%[\da-fA-F]{2})|\/)+/;
					var str = data.message
					url = rep.exec(str)
				}
				$('#addFormPic').val(url);
				$('#goodsImg').attr({src: url});
			},
			error: function(data) {
				console.log(data);
			},
		})
	}
