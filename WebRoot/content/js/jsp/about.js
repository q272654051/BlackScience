$(function(){	
	$('#ulTab li').click(function(){
		$(this).addClass('yanse').siblings().removeClass('yanse');
		$('#tabs>div:eq('+$(this).index()+')').show().siblings().hide();	
	});
});