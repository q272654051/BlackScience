<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<jsp:include page="/content/jsp/Header.jsp"></jsp:include>
<div id="main1">
<div class="jianjie">
<div class="tittle"><span>公司简介</span><a>更多+</a></div>
<div class="conent_jianjie">
<div class="gongsi_tu"><img src="content/image/gongsi.jpg" width="220" height="150"></div>
<div class="gongsi_neir"><p>河北百众机电科技有限公司是一家专门从事水平式全自动包装机械的设计、制造、销售与服务的现代化型企业，产品广泛应用于食品化工、制药、日用化学品、健康产品等的全自动包装生产线，依托先进的设计理念和丰富的包装经验，欧朔致力于成为全球性的包装系统供应商，为..........<a>了解更多>></a></p></div>
</div>
</div>
<div class="zhanshi">
 <div>
            <div class="divMainTab">
                <ul style="list-style: none; margin: 0px; padding: 0px; border-collapse: collapse;">
                 <li id="li_1" class="selected" onmouseover="changeTab('1')">产品展示</li>
                 <li id="li_2" class="normal" onmouseover="changeTab('2')"> 解决方案</li>
                 <li id="li_3" class="normal" onmouseover="changeTab('3')"> 行业应用</li>
                 
                </ul>
            </div>
            <div style="clear:both;"></div>
            <div   id="div1" style ="display :block" class ="conent_jianjie">
              <div class="zhanshi_index"><div class="tu_index"><img src="content/image/tu.jpg" width="138" height="96"></div>
              <span>自立袋机型</span><span>型号：S-110</span>
              </div>
              <div class="zhanshi_index"><div class="tu_index"><img src="content/image/tu.jpg" width="138" height="96"></div>
              <span>自立袋机型</span><span>型号：S-110</span>
              </div>
              
              <div class="zhanshi_index"><div class="tu_index"><img src="content/image/tu.jpg" width="138" height="96"></div>
              <span>自立袋机型</span><span>型号：S-110</span>
              </div>
              
</div>
             <div  id="div2" style ="display :none" class ="conent_jianjie">
            <div style="clear:both; height:28px;"></div>
            <div class="fangan_index">
            <div class="fan_tu_index"><img src="content/image/an.jpg" width="200" height="148"></div>
            <div class="fanzhan_nr_index"><p>解决方案针对您不同的包装形式、物料，我们提供不同的包装解决方案。<a href="xiangxi.html">了解详情>></a></p></div>
            </div>
</div>
             <div  id="div3" style ="display :none" class ="conent_jianjie">
                 <div style="clear:both; height:28px;"></div>
            <div class="fangan_index">
            <div class="fan_tu_index"><img src="content/image/tu1.jpg" width="200" height="148"></div>
            <div class="fanzhan_nr_index"><p>食品、日化、农化、医药等满足您所在行业的包装需求。<a href="xiangxi.html">了解详情>></a></p></div>
            </div>
    </div>
        </div>
</div>
<div class="zhanhui_index">
<div class="tittle"><span>新闻展会</span><a>更多+</a></div>
<div class="conent_zhan_index">
<ul>
<li><span>2012-12-10</span><a>9月13河北百组织公司旅游，乘载着开心的大巴向溧阳驶去…</a></li>
<li><span>2012-12-10</span><a>9月13河北百组织公司旅游，乘大巴向溧阳驶去…</a></li>
<li><span>2012-12-10</span><a>9月13河北百组织公司旅游，乘载着开心的大巴向溧阳驶去…</a></li>
<li><span>2012-12-10</span><a>9月13河北百组织公司旅游，乘大巴向溧阳驶去…</a></li>
<li><span>2012-12-10</span><a>9月13河北百组织公司旅游，乘载着开心的大巴向溧阳驶去…</a></li>
<li><span>2012-12-10</span><a>9月13河北百组织公司旅游，乘大巴向溧阳驶去…</a></li>
<li><span>2012-12-10</span><a>9月13河北百组织公司旅游，乘载着开心的大巴向溧阳驶去…</a></li>
<li><span>2012-12-10</span><a>9月13河北百组织公司旅游，乘大巴向溧阳驶去…</a></li>
<li><span>2012-12-10</span><a>9月13河北百组织公司旅游，乘载着开心的大巴向溧阳驶去…</a></li>
<li><span>2012-12-10</span><a>9月13河北百组织公司旅游，乘大巴向溧阳驶去…</a></li>
</ul>
</div>
</div>
<div class="zhanshi"><div class="tittle"><span>客服服务</span><a>更多+</a></div>
<div class="kefu_index">
<div style="height:13px;"></div>
<div class="kefu_tu"><img src="content/image/kefu.jpg"></div>
<p>如果您对我们的产品有任何疑问，请拨打咨询热线</p>
<h1>客服电话：<span>400-8203699</span></h1>

</div>
</div>
<script language="javascript" type="text/javascript">
        function changeTab(index)
        {
         for (var i=1;i<=3;i++)
            {
				//鼠标离开
                document.getElementById ("li_"+i).className ="normal";
                document.getElementById ("li_"+index).className="selected";
                document.getElementById ("div"+i).style.display="none";
			
            }
			//鼠标经过
            //document.getElementById ("div1").innerText= "www.zzjs.net"+index;
            document.getElementById ("div"+index).style.display  ="block";
		
       }
    </script>
<div style="clear:both"></div>
</div>
<div id="footer">
<div class="conent_foter">
<div class="nav_foot">
<a>关于百众</a>  |   <a>新闻展会</a>  |   <a>产品展示</a>  |   <a>行业应用 </a> |  <a>解决方案</a>   |   <a>客户服务 </a> |  <a>工作机会 </a> | <a>联系我们</a>
</div>
<div style="height:20px;"></div>
<p>权所有 © 河北百众机电科技有限公司  冀ICP备10204030-1号</p><p>公司网址：www.mycodes.net  公司地址：石家庄市 建通街塔南路29号  联系电话：13901624119</p>
<div style="padding-left:288px; padding-right:100px;">
<div class="chengxin"><a href="#"><img src="content/image/a.jpg"></a></div>
<div class="chengxin"><a href="#"><img src="content/image/b.jpg"></a></div>
<div class="chengxin"><a href="#"><img src="content/image/c.jpg"></a></div>
</div>
</div>
</div>
<!--在线客服-->
<div id="kefu">
<div class="top_shan"><a  href='http://wpa.b.qq.com/cgi/wpa.php?ln=2&uin=1107853006' target='_blank'><img src="content/image/20.png"></a></div>
<div class="was"><a>订单查询</a>
<a>配件服务</a>
</div>
</div>
</body>
</html>
