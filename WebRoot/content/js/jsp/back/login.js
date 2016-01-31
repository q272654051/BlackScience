$(function(){	
});
$('#login').click(function(){
	var username = $('#username').val();
	var password = $('#password').val();
	
	if (username=='' || username=='undefined'){
		layer.msg('请输入用户名', {icon: 5, time: 1000});
		return;
	}
	if (password=='' || password=='undefined'){
		layer.msg('请输入密码', {icon: 5, time: 1000});
		return;
	}
	$.ajax({
 	   type: "post",
        url: "Backlogin/login",
        async:false,
        data: {
            "username":username,
            "password":password
        },
        dataType: "json",
        success: function(data){
        	var msg = data['msg'];
        	if(data['success']){
        		window.location.href="Backlogin/loginSuccess";
        	}else{
        		layer.msg(msg, {icon: 5, time: 1000});
        	}
        },
        error: function(data){
            layer.msg('系统错误，请联系管理员', {icon: 5, time: 1000});
        }
 });
	
});