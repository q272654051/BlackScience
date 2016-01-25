<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<jsp:include page="/content/jsp/Header.jsp"></jsp:include>
<!--联系-->
<div id="main2">
<div class="left_zhanshi">
<div class="menu"><div class="tittle"><span>联系我们</span></div>
<div class="menu_warp">
<ul>
<a href="lianxi.html"><li class="yanse">联系我们</li></a>
<a href="liuyan.html"><li>留言反馈</li></a>
<a href="ditu.html"><li>网站地图</li></a>
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

<div class="right_chanpin"><div class="tittle"><span>联系我们</span></div>
<div style="clear:both;"></div>
<div class="right_con_cp">
<div class="linian"><img src="image/lianxi.jpg"></div>
<div class="linian">
  <div>
    <p><strong>河北百众机电科技有限公司</strong><br />
      地　址：上海市奉贤区南桥镇平庄西路6号（近南桥环城东路）<br />
      电   话：86-21-37596580/581/582/583     37596589（直线）</p>
    <p>传　真：86-21-37596583-616<br />
      邮　编：201400</p>
    <p>服务热线：400 001 6888<br />
      E-mail：sales@acepackgroup.com <br />
      网　址：http://www.baizhong.com</p>
  </div>
</div>
<div style="height:10px; clear:both"></div>
</div>
</div>

<div style="clear:both"></div>
</div>
<div style="clear:both; cursor:pointer;"></div>
</div>
<jsp:include page="/content/jsp/Footer.jsp"></jsp:include>
