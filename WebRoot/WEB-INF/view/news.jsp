<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<jsp:include page="/content/jsp/Header.jsp"></jsp:include>
<!--新闻-->
<div id="main2">
<div class="left_zhanshi">
<div class="menu"><div class="tittle"><span>新闻展会</span></div>
<div class="menu_warp">
<ul>
<a href="xinwenxx.html"><li class="yanse">公司公告</li></a>
<a href="xinwenxx.html"><li>公司新闻</li></a>
<a href="xinwenxx.html"><li>行业资讯</li></a>
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
<div class="right_chanpin"><div class="tittle"><span>公司公告</span></div>
<div style="clear:both;"></div>
<div class="right_con_cp">
<ul>
<li><span>2014-12-05</span><a href="xinwenxx.html">5月12日，Acepack（上海欧朔包装机械有限公司）在古华山庄望园楼西会议室内.....    </a></li>
<li><span>2014-12-05</span><a href="xinwenxx.html">5月12日，Acepack（上海欧朔包装机械有限公司）在古华山庄望园楼西会议室内.....    </a></li>
<li><span>2014-12-05</span><a href="xinwenxx.html">5月12日，Acepack（上海欧朔包装机械有限公司）在古华山庄望园楼西会议室内.....    </a></li>
<li><span>2014-12-05</span><a href="xinwenxx.html">5月12日，Acepack（上海欧朔包装机械有限公司）在古华山庄望园楼西会议室内.....    </a></li>
<li><span>2014-12-05</span><a href="xinwenxx.html">5月12日，Acepack（上海欧朔包装机械有限公司）在古华山庄望园楼西会议室内.....    </a></li>
<li><span>2014-12-05</span><a href="xinwenxx.html">5月12日，Acepack（上海欧朔包装机械有限公司）在古华山庄望园楼西会议室内.....    </a></li>
<li><span>2014-12-05</span><a href="xinwenxx.html">5月12日，Acepack（上海欧朔包装机械有限公司）在古华山庄望园楼西会议室内.....    </a></li>
<li><span>2014-12-05</span><a href="xinwenxx.html">5月12日，Acepack（上海欧朔包装机械有限公司）在古华山庄望园楼西会议室内.....    </a></li>
<li><span>2014-12-05</span><a href="xinwenxx.html">5月12日，Acepack（上海欧朔包装机械有限公司）在古华山庄望园楼西会议室内.....    </a></li>
<li><span>2014-12-05</span><a href="xinwenxx.html">5月12日，Acepack（上海欧朔包装机械有限公司）在古华山庄望园楼西会议室内.....    </a></li>
<li><span>2014-12-05</span><a href="xinwenxx.html">5月12日，Acepack（上海欧朔包装机械有限公司）在古华山庄望园楼西会议室内.....    </a></li>
<li><span>2014-12-05</span><a href="xinwenxx.html">5月12日，Acepack（上海欧朔包装机械有限公司）在古华山庄望园楼西会议室内.....    </a></li>
<li><span>2014-12-05</span><a href="xinwenxx.html">5月12日，Acepack（上海欧朔包装机械有限公司）在古华山庄望园楼西会议室内.....    </a></li>
<li><span>2014-12-05</span><a href="xinwenxx.html">5月12日，Acepack（上海欧朔包装机械有限公司）在古华山庄望园楼西会议室内.....    </a></li>
<li><span>2014-12-05</span><a href="xinwenxx.html">5月12日，Acepack（上海欧朔包装机械有限公司）在古华山庄望园楼西会议室内.....    </a></li>
<li><span>2014-12-05</span><a href="xinwenxx.html">5月12日，Acepack（上海欧朔包装机械有限公司）在古华山庄望园楼西会议室内.....    </a></li>
</ul>
<div style="height:10px; clear:both"></div>
</div>
<div class="right_con_cp">

<div style="height:10px; clear:both"></div>
<div id="fenye" style="_padding-top:10px;">
<div class="zhong">
<a class="shouy hover">首页</a><a class="sxy" style="width:81px;">&lt; 上一页</a><a class="hover">1</a><a>2</a><a>3</a><a>4</a><a>5</a><a>6</a><a>7</a><a>8</a>
<a class="sxy" style="width:81px;" >下一页 ></a><a class="shouy">末页</a>
</div>
</div>
</div>
</div>
<div style="clear:both"></div>
</div>
<div style="clear:both; cursor:pointer;"></div>
</div>
<jsp:include page="/content/jsp/Footer.jsp"></jsp:include>
