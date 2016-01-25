<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<jsp:include page="/content/jsp/Header.jsp"></jsp:include>
<!--行业-->
<div id="main2">
<div class="left_zhanshi">
<div class="menu"><div class="tittle"><span>行业应用</span></div>
<div class="menu_warp">
<ul>
<a href=""><li class="yanse">食品</li></a>
<a href=""><li>饮料</li></a>
<a href=""><li>医药</li></a>
<a href=""><li>日化</li></a>
<a href=""><li>农化</li></a>
<a href=""><li>其他</li></a>
</ul>
</div>
</div>
<div class="tongdao">
<div class="tittle"><span>产品快速通道</span></div>
<div class="kuai_warp"><select type="text" class="text_chaxub" ><option>请选择类别</option></select><select type="text" class="text_chaxub" ><option>请选择型号</option></select>
<input type="button" class="button_sousuo" value="搜索" />
</div>
</div>
</div>
<div class="right_chanpin">
<div class="tittle"><span>行业应用</span><tt> > </tt><span>食品</span></div>
<div style="clear:both;"></div>
<div class="right_con_cp">
<div class="hangye_anli"><img src="image/anli1.jpg"></div>
<div class="hangye_anli"><img src="image/anli1.jpg"></div>
<div class="hangye_anli"><img src="image/anli1.jpg"></div>
<div class="hangye_anli"><img src="image/anli1.jpg"></div>
<div class="hangye_anli"><img src="image/anli1.jpg"></div>
<div class="hangye_anli"><img src="image/anli1.jpg"></div>
<div class="hangye_anli"><img src="image/anli1.jpg"></div>
<div class="hangye_anli"><img src="image/anli1.jpg"></div>
<div class="hangye_anli"><img src="image/anli1.jpg"></div>
<div class="hangye_anli"><img src="image/anli1.jpg"></div>
<div class="hangye_anli"><img src="image/anli1.jpg"></div>
<div class="hangye_anli"><img src="image/anli1.jpg"></div>
<div class="hangye_anli"><img src="image/anli1.jpg"></div>
<div class="hangye_anli"><img src="image/anli1.jpg"></div>
<div class="hangye_anli"><img src="image/anli1.jpg"></div>
<div class="hangye_anli"><img src="image/anli1.jpg"></div>
<div class="hangye_anli"><img src="image/anli1.jpg"></div>
<div class="hangye_anli"><img src="image/anli1.jpg"></div>
<div class="hangye_anli"><img src="image/anli1.jpg"></div>
<div class="hangye_anli"><img src="image/anli1.jpg"></div>
<div class="hangye_anli"><img src="image/anli1.jpg"></div>
<div class="hangye_anli"><img src="image/anli1.jpg"></div>
<div class="hangye_anli"><img src="image/anli1.jpg"></div>
<div class="hangye_anli"><img src="image/anli1.jpg"></div>
<div class="hangye_anli"><img src="image/anli1.jpg"></div>
<div class="hangye_anli"><img src="image/anli1.jpg"></div>
<div style="height:10px; clear:both"></div>
</div>
</div>
<div style="clear:both"></div>
</div>
<div style="clear:both; cursor:pointer;"></div>
</div>
<jsp:include page="/content/jsp/Footer.jsp"></jsp:include>
