$(function(){	
	loadAbout(1);
});

function loadAbout(curPage){
	$.ajax({
        type: "POST",
        url: "aboutController/loadAboutMessage",
        data: "pageSize=10&curPage=" + curPage,
        dataType: "json",
        success: function (msg) {
            var listTr = $("#aboutTbodyList");
            listTr.html("");
            var data = eval(msg);
            if (data.list.length>0){
	            for (var i = 0; i < data.list.length; i++) {
	            	console.log(data.list[i].img);
	            	if (data.list[i].status == '1'){
	            		listTr.append("<tr align='center' class='d'><td>" + data.list[i].name + "</td><td>隐藏</td><td>" 
	            				+ data.list[i].content + "</td><td><img height='60px' wight='100px' src=" + data.list[i].img + "></td><td>" 
	            				+ data.list[i].date + "</td><td>" + data.list[i].remark + "</td><td>"
			            		+ "<a href='aboutController/toYaPinGuanLiDetails?curPage="
			            		+ curPage
			            		+ "&aboutId=" 
			            		+ data.list[i].aboutId + "'>显示</a>"
			            		+ "/<a href='aboutController/toYaPinGuanLiUpdate?yaPinId=" 
			            		+ data.list[i].YaPinId + "'>编辑</a>"
			            		+"</td></tr>");
	            	}else{
	            		listTr.append("<tr align='center' class='d'><td>" + data.list[i].name + "</td><td>显示</td><td>" 
	            				+ data.list[i].content + "</td><td><img height='60px' wight='100px' src=" + data.list[i].img + "></td><td>" 
	            				+ data.list[i].date + "</td><td>" + data.list[i].remark + "</td><td>"
			            		+ "<a href='aboutController/toYaPinGuanLiDetails?curPage="
			            		+ curPage
			            		+ "&aboutId=" 
			            		+ data.list[i].aboutId + "'>隐藏</a>"
			            		+ "/<a href='aboutController/toYaPinGuanLiUpdate?yaPinId=" 
			            		+ data.list[i].YaPinId + "'>编辑</a>"
			            		+"</td></tr>");
	            	}
	            }
            pagerUtil(data.curPage, data.end, data.pageSize,
                    data.start, data.totalPage, data.totalRow);
            	new _().bgcolorOdd();
            }else{
            		layer.msg('抱歉！没有信息，请添加!', {icon: 8}, function () {
            		});
            	listTr.append("<tr><td colspan='7' style='padding:10px; font-size:14px;'>抱歉！没有信息，请添加!</td></tr>");
            	pagerUtil("1", "1", "0",
                        "", "1", "0");
            }
        }, error: function () {
        		layer.msg('系统问题，请稍后再试', {icon: 8}, function () {
        		});
        }
    });
}

function pagerUtil(curPage, end, pageSize, start, totalPage, totalRow) {
    var pageUL = $("#pageUI");
    pageUL.html("");
    pageUL.append("<strong>当前页 " + curPage + " 共 " + totalPage + " 页/共" + totalRow + "条</strong>");
    pageUL.append("<a href='javascript:;' onclick='upLoadPage(" + curPage + ")'>上一页</a>");
    //显示分页提示个数
    var Flag = 5;
    if (curPage <= 3) {
        if (totalPage < 5) {
            for (var j = 0; j < totalPage; j++) {
                pageUL.append("<a href='javascript:;' id=" + (j + 1) + " onclick='loadYapinxinxi(" + (j + 1) + ")'>" + (j + 1) + "</a>");
            }
        } else {
            for (var j = 0; j < Flag; j++) {
                pageUL.append("<a href='javascript:;' id=" + (j + 1) + " onclick='loadYapinxinxi(" + (j + 1) + ")'>" + (j + 1) + "</a>");
            }
        }
        colorFlag = curPage;
    } else if (curPage > totalPage - 3) {
        for (var j = totalPage - 5 >= 0 ? totalPage - 5 : totalPage - 4; j < totalPage; j++) {
            pageUL.append("<a href='javascript:;' id=" + (j + 1) + " onclick='loadYapinxinxi(" + (j + 1) + ")'>" + (j + 1) + "</a>");
        }
        colorFlag = curPage;
    } else {
        for (var j = curPage - 2; j < curPage + 3; j++) {
            pageUL.append("<a href='javascript:;' id=" + (j + 1) + " onclick='loadYapinxinxi(" + j + ")'>" + j + "</a>");
        }
        colorFlag = curPage + 1;
    }
    pageUL.append("<a href='javascript:;' onclick='DownLoadPage(" + curPage + ',' + totalPage + ")'>下一页</a>");
    $('#' + colorFlag).addClass('active');
}
function upLoadPage(curPage) {
    if (curPage > 1) {
        var startPage = curPage - 1;
        loadYapinxinxi(startPage,"true");
    }
}

function DownLoadPage(curPage, totalPage) {
    if (curPage < totalPage) {
        var endPage = curPage + 1;
        loadYapinxinxi(endPage,"true");
    }
}
//提交事件
$("#confirm").bind("click",function(){
	var name = $("#name").val();
	var img = $("#img").val();
	var content = $("#content").val();
	var remark = $("#remark").val();
	var status = $('input[name="status"]:checked').val();
	
	if (name=="" || name=="undefined"){
		layer.msg('请选择介绍类型', {icon: 5, time: 1000});
		return;
	}
	if (img=="" || content==""){
		layer.msg('请选择照片或填写介绍内容', {icon: 5, time: 1000});
		return;
	}
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
        		layer.msg('成功', {icon: 6, time: 1000});
        		//window.location.href = "aboutController/toSysMain";  //加载主页面
        	}else{
        		layer.msg('失败', {icon: 5, time: 1000});
        	}
        },
        error: function(data){
        	layer.msg('失败', {icon: 5, time: 1000});
        }
    });
	
});