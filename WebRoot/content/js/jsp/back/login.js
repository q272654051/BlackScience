$(function(){	
});
$('#login').click(function(){
	var username = $('#username').val();
	var password = $('#password').val();
	console.log(username);
//	console.log(password);
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
        		alert(msg);
        	}
        },
        error: function(data){
            alert("系统错误，请联系管理员");
        }
 });
	
});