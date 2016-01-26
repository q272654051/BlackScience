$(function(){	
	
});

;(function() {
	var uploadPic = {
		init: function() {
		    var me = this;
		    $('#exampleInputFile').bind('change', function() {
		        me.previewImage(this);
		    });
		},
		previewImage: function(file) {
		    var me = this;
		    var MAXWIDTH = 250;
		    var MAXHEIGHT = 240;
		    var div = document.getElementById('preview');
		    if (file.files && file.files[0]) {
		        div.innerHTML = '<img id="headpic">';
		        var img = document.getElementById("headpic");
		        img.onload = function() {
		            var rect = me.clacImgZoomParam(MAXWIDTH, MAXHEIGHT, img.offsetWidth, img.offsetHeight);
		            //img.width  =  rect.width;
		            img.height = rect.height;
		        };
		        var reader = new FileReader();
		        reader.onload = function(evt) {
		            img.src = evt.target.result;
		            $("#img").val(img.src);
		        };
		        reader.readAsDataURL(file.files[0]);
		    } else { //兼容IE
		        var sFilter = 'filter:progid:DXImageTransform.Microsoft.AlphaImageLoader(sizingMethod=scale,src="';
		        file.select();
		        var src = document.selection.createRange().text;
		        div.innerHTML = '<img id="headpic">';
		        var img = document.getElementById('headpic');
		        img.filters.item('DXImageTransform.Microsoft.AlphaImageLoader').src = src;
		        var rect = me.clacImgZoomParam(MAXWIDTH, MAXHEIGHT, img.offsetWidth, img.offsetHeight);
		        status = ('rect:' + rect.top + ',' + rect.left + ',' + rect.width + ',' + rect.height);
		        div.innerHTML = "<div id=divhead style='width:" + rect.width + "px;height:" + rect.height + "px;margin-top:" + rect.top + "px;" + sFilter + src + "\"'></div>";
		    }
		},
		clacImgZoomParam: function(maxWidth, maxHeight, width, height) {
		    var param = {
		        top: 0,
		        left: 0,
		        width: width,
		        height: height
		    };
		    if (width > maxWidth || height > maxHeight) {
		        rateWidth = width / maxWidth;
		        rateHeight = height / maxHeight;
		        if (rateWidth > rateHeight) {
		            param.width = maxWidth;
		            param.height = Math.round(height / rateWidth);
		        } else {
		            param.width = Math.round(width / rateHeight);
		            param.height = maxHeight;
		        }
		    }
		    param.left = Math.round((maxWidth - param.width) / 2);
		    param.top = Math.round((maxHeight - param.height) / 2);
		    return param;
		}
};
uploadPic.init();
})();
//提交事件
$("#confirm").bind("click",function(){
	var name = $("#name").val();
	var img = $("#img").val();
	var content = $("#content").val();
	var remark = $("#remark").val();
	var status = $('input[name="status"]:checked').val();
	
	console.log(name);
	console.log(img);
	console.log(content);
	console.log(remark);
	console.log(status);
	
	$.ajax({
	    type: "post",
        url: "aboutController/saveOrupdateAbout",
        async:false,
        data: {
            "name":name,
            "img":img,
            "content":content,
            "status":status,
            "remark":remark
        },
        dataType: "json",
        success: function(data){
        	if(data['success']){
        		alert("成功");
        		//window.location.href = "aboutController/toSysMain";  //加载主页面
        	}else{
        		alert("失败");
        	}
        },
        error: function(data){
        	alert("失败");
        }
    });
	
});