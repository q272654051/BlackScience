<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<jsp:include page="/content/jsp/Header.jsp"></jsp:include>
<!--服务-->
<div id="main2">
<div class="left_zhanshi">
<div class="menu"><div class="tittle"><span>客服服务</span></div>
<div class="menu_warp">
<ul>
<a href="linian.html"><li class="yanse">服务理念</li></a>
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

<div class="right_chanpin"><div class="tittle"><span>客户服务</span></div>
<div style="clear:both;"></div>
<div class="right_con_cp">
<div class="linian"><img src="image/ninian.jpg"></div>
<div class="linian">服务赢得尊重，服务打造品牌，服务创造价值。欧朔的服务不仅是售后的，而是全程的，服务的观念贯穿于设备生产过程中的每一个</div>
<div style="height:10px; clear:both"></div>
</div>
</div>

<div style="clear:both"></div>
</div>
<div style="clear:both; cursor:pointer;"></div>
</div>
<jsp:include page="/content/jsp/Footer.jsp"></jsp:include>
