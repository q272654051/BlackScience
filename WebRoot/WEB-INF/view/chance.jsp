<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<jsp:include page="/content/jsp/Header.jsp"></jsp:include>
<!--机会-->
<div id="main2">
<div class="left_zhanshi">
<div class="menu"><div class="tittle"><span>工作机会</span></div>
<div class="menu_warp">
<ul>
<a href="jihui.html"><li class="yanse">人才理念</li></a>
<a href="zhaopin.html"><li>人才招聘</li></a>
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

<div class="right_chanpin"><div class="tittle"><span>客户服务</span><tt> > </tt><span>人才理念</span></div>
<div style="clear:both;"></div>
<div class="right_con_cp">
<div class="linian"><img src="image/jihui.gif"></div>
<div class="linian">人力资源是公司最重要的百众十分注重人力资源的培养和开发，现有员工65人，平均年龄28岁，其中80%以上职工为大专以上学历。公司从选、用、育、留各个环节制定有效的管理措施，对员工实行宽带薪酬激励，按国家规定作息。ACEPACK员工业余生活丰富多彩，有足球队、生日party、集体出游、年会等多种娱乐形式。公司为员工提供住宿，免费工作午餐，办理国家规定的保险福利。促进员工成长、推动企业发展始终是公司HR管理的使命。服务赢得尊重，服务打造品牌，服务创造价值。欧朔的服务不仅是售后的，而是全程的，服务的观念贯穿于设备生产过程中的每一个</div>
<div style="height:10px; clear:both"></div>
</div>
</div>

<div style="clear:both"></div>
</div>
<div style="clear:both; cursor:pointer;"></div>
</div>
<jsp:include page="/content/jsp/Footer.jsp"></jsp:include>
