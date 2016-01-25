<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<jsp:include page="/content/jsp/Header.jsp"></jsp:include>
<!--关于-->
<div id="main2">
<div class="left_zhanshi">
<div class="menu"><div class="tittle"><span>关于百众</span></div>
<div class="menu_warp">
<ul id="ulTab">
<li class="yanse">公司简介</li>
<li>企业文化</li>
<li>领导致辞</li>
<li>企业资质</li>
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
<div id="tabs">
<div class="right_chanpin" style="display:block;"><div class="tittle"><span>关于百众</span><tt> > </tt><span>公司简介</span></div>
<div style="clear:both;"></div>
<div class="right_con_cp">
<div class="linian"><img src="content/image/guanyu.jpg"></div>
<div class="linian">河北百众机械有限公司是一家专门从事水平式全自动包装机械的设计、制造、销售与服务的现代化型企业，产品广泛应用于食品、化工、制药、日用化学品、健康产品等的全自动包装生产线，并已远销美国、加拿大、巴西、墨西哥、阿根廷、俄罗斯、西欧、东南亚、中东、非洲等30 多个国家和地区。 公司以满足客户多样化包装需求为市场导向，为客户提供包含袋包装、纸盒包装及瓶装解决方案和服务。依托先进的设计理念和丰富的包装经验，欧朔致力于成为全球性的包装系统供应商，为客户创造包装价值。</div>
<div class="linian"><img src="content/image/baozhuang.jpg" width="300"></div>
<div class="linian">上海欧朔包装机械有限公司是一家专门从事水平式全自动包装机械的设计、制造、销售与服务的现代化型企业，产品广泛应用于食品、化工、制药、日用化学品、健康产品等的全自动包装生产线，并已远销美国、加拿大、巴西、墨西哥、阿根廷、俄罗斯、西欧、东南亚、中东、非洲等30 多个国家和地区。 公司以满足客户多样化包装需求为市场导向，为客户提供包含袋包装、纸盒包装及瓶装解决方案和服务。依托先进的设计理念和丰富的包装经验，欧朔致力于成为全球性的包装系统供应商，为客户创造包装价值。</div>
<div style="height:10px; clear:both"></div>
</div>
</div>

<div class="right_chanpin" style="display:none;"><div class="tittle"><span>关于百众</span><tt> > </tt><span>企业文化</span></div>
<div style="clear:both;"></div>
<div class="right_con_cp">
<div class="linian"><img src="content/image/guanyu.jpg"></div>
<div class="linian">河北百众机械有限公司是一家专门从事水平式全自动包装机械的设计、制造、销售与服务的现代化型企业，产品广泛应用于食品、化工、制药、日用化学品、健康产品等的全自动包装生产线，并已远销美国、加拿大、巴西、墨西哥、阿根廷、俄罗斯、西欧、东南亚、中东、非洲等30 多个国家和地区。 公司以满足客户多样化包装需求为市场导向，为客户提供包含袋包装、纸盒包装及瓶装解决方案和服务。依托先进的设计理念和丰富的包装经验，欧朔致力于成为全球性的包装系统供应商，为客户创造包装价值。</div>
<div class="linian"><img src="content/image/baozhuang.jpg" width="300"></div>
<div class="linian">上海欧朔包装机械有限公司是一家专门从事水平式全自动包装机械的设计、制造、销售与服务的现代化型企业，产品广泛应用于食品、化工、制药、日用化学品、健康产品等的全自动包装生产线，并已远销美国、加拿大、巴西、墨西哥、阿根廷、俄罗斯、西欧、东南亚、中东、非洲等30 多个国家和地区。 公司以满足客户多样化包装需求为市场导向，为客户提供包含袋包装、纸盒包装及瓶装解决方案和服务。依托先进的设计理念和丰富的包装经验，欧朔致力于成为全球性的包装系统供应商，为客户创造包装价值。</div>
<div style="height:10px; clear:both"></div>
</div>
</div>

<div class="right_chanpin" style="display:none;"><div class="tittle"><span>关于百众</span><tt> > </tt><span>领导致辞</span></div>
<div style="clear:both;"></div>
<div class="right_con_cp">
<div class="linian"><img src="content/image/guanyu.jpg"></div>
<div class="linian">河北百众机械有限公司是一家专门从事水平式全自动包装机械的设计、制造、销售与服务的现代化型企业，产品广泛应用于食品、化工、制药、日用化学品、健康产品等的全自动包装生产线，并已远销美国、加拿大、巴西、墨西哥、阿根廷、俄罗斯、西欧、东南亚、中东、非洲等30 多个国家和地区。 公司以满足客户多样化包装需求为市场导向，为客户提供包含袋包装、纸盒包装及瓶装解决方案和服务。依托先进的设计理念和丰富的包装经验，欧朔致力于成为全球性的包装系统供应商，为客户创造包装价值。</div>
<div class="linian"><img src="content/image/baozhuang.jpg" width="300"></div>
<div class="linian">上海欧朔包装机械有限公司是一家专门从事水平式全自动包装机械的设计、制造、销售与服务的现代化型企业，产品广泛应用于食品、化工、制药、日用化学品、健康产品等的全自动包装生产线，并已远销美国、加拿大、巴西、墨西哥、阿根廷、俄罗斯、西欧、东南亚、中东、非洲等30 多个国家和地区。 公司以满足客户多样化包装需求为市场导向，为客户提供包含袋包装、纸盒包装及瓶装解决方案和服务。依托先进的设计理念和丰富的包装经验，欧朔致力于成为全球性的包装系统供应商，为客户创造包装价值。</div>
<div style="height:10px; clear:both"></div>
</div>
</div>

<div class="right_chanpin" style="display:none;"><div class="tittle"><span>关于百众</span><tt> > </tt><span>企业资质</span></div>
<div style="clear:both;"></div>
<div class="right_con_cp">
<div class="linian"><img src="content/image/guanyu.jpg"></div>
<div class="linian">河北百众机械有限公司是一家专门从事水平式全自动包装机械的设计、制造、销售与服务的现代化型企业，产品广泛应用于食品、化工、制药、日用化学品、健康产品等的全自动包装生产线，并已远销美国、加拿大、巴西、墨西哥、阿根廷、俄罗斯、西欧、东南亚、中东、非洲等30 多个国家和地区。 公司以满足客户多样化包装需求为市场导向，为客户提供包含袋包装、纸盒包装及瓶装解决方案和服务。依托先进的设计理念和丰富的包装经验，欧朔致力于成为全球性的包装系统供应商，为客户创造包装价值。</div>
<div class="linian"><img src="content/image/baozhuang.jpg" width="300"></div>
<div class="linian">上海欧朔包装机械有限公司是一家专门从事水平式全自动包装机械的设计、制造、销售与服务的现代化型企业，产品广泛应用于食品、化工、制药、日用化学品、健康产品等的全自动包装生产线，并已远销美国、加拿大、巴西、墨西哥、阿根廷、俄罗斯、西欧、东南亚、中东、非洲等30 多个国家和地区。 公司以满足客户多样化包装需求为市场导向，为客户提供包含袋包装、纸盒包装及瓶装解决方案和服务。依托先进的设计理念和丰富的包装经验，欧朔致力于成为全球性的包装系统供应商，为客户创造包装价值。</div>
<div style="height:10px; clear:both"></div>
</div>
</div>
</div>
<div style="clear:both"></div>
</div>
<div style="clear:both; cursor:pointer;"></div>
</div>
<script type="text/javascript" src="content/js/jsp/about.js"></script>
<jsp:include page="/content/jsp/Footer.jsp"></jsp:include>