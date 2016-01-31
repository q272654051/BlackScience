<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="zh-CN">
<head>
    <title>黑色科技 - 网站后台管理中心</title>
    <base href="<%=basePath%>"/>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="description" content="黑色科技专业的网站后台管理系统" />
    <meta name="keywords" content="黑色,网站管理系统,企业网站" />
    <meta name="Author" content="djx" />
    <meta name="CopyRight" content="黑色科技" />
    <link rel="stylesheet" type="text/css" href="content/Style/skin.css" />
</head>
<body>
    <table width="100%">
        <!-- 顶部部分 -->
        <tr height="41"><td colspan="2" background="content/Images/login_top_bg.gif">&nbsp;</td></tr>
        <!-- 主体部分 -->
        <tr style="background:url(content/Images/login_bg.jpg) repeat-x;" height="532">
            <!-- 主体左部分 -->
            <td id="left_cont">
                <table width="100%" height="100%">
                    <tr height="155"><td colspan="2">&nbsp;</td></tr>
                    <tr>
                        <td width="20%" rowspan="2">&nbsp;</td>
                        <td width="60%">
                            <table width="100%">
                                <tr height="70"><td align="right"><img src="content/Images/logo.gif" title="瑞曼科技" alt="瑞曼科技" /></td></tr>
                                <tr height="274">
                                    <td valign="top" align="right">
                                        <ul>
                                            <li>1- 企业门户站建立的首选方案...</li>
                                            <li>2- 一站通式的整合方式，方便用户使用...</li>
                                            <li>3- 强大的后台系统，管理内容易如反掌...</li>
                                            <li><img src="content/Images/icon_demo.gif" />&nbsp;<a href="javascript:void(0)">使用说明</a>&nbsp;&nbsp;
                                            <span><a target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=609307843&site=qq&menu=yes" onfocus="this.blur()">
                                             <img border="0" src="http://wpa.qq.com/pa?p=2:609307843:41" alt="" title="黑色科技">
                                             </a> </span></li>
                                        </ul>
                                    </td>
                                </tr>
                            </table>
                        <td width="15%" rowspan="2">&nbsp;</td>
                        </td>
                    </tr>
                    <tr><td colspan="2">&nbsp;</td></tr>
                </table>
            </td>
            <!-- 主体右部分 -->
            <td id="right_cont">
                <table height="100%">
                    <tr height="30%"><td colspan="3">&nbsp;</td></tr>
                    <tr>
                        <td width="30%" rowspan="5">&nbsp;</td>
                        <td valign="top" id="form">
                            <form id="login_form">
                                <table valign="top" width="50%">
                                    <tr><td colspan="3"><h4 style="letter-spacing:0.5px;font-size:16px;">BlackScience网站管理后台</h4></td></tr>
                                    <tr><td>管理员：</td><td><input type="text" name="username" id="username" value="" /></td></tr>
                                    <tr><td>密&nbsp;&nbsp;&nbsp;&nbsp;码：</td><td><input type="password" name="password" id="password" value="" /></td></tr>
                                    <!-- <tr><td>验证码：</td><td><input type="text" name="" value="" style="width:80px;"/></td></tr> -->
                                    <tr class="bt" align="center"><td>&nbsp;<input type="button" id="login" value="登陆" /></td><td>&nbsp;<input type="reset" value="重填" /></td></tr>
                                </table>
                            </form>
                        </td>
                        <td rowspan="5">&nbsp;</td>
                    </tr>
                    <tr><td colspan="3">&nbsp;</td></tr>
                </table>
            </td>
        </tr>
        <!-- 底部部分 -->
        <tr id="login_bot"><td colspan="2"><p>Copyright © 2016-2018 BlackScience 网络工作室</p></td></tr>
    </table>
<script type="text/javascript" src="content/js/jquery-1.9.1.min.js"></script>
<script type="text/javascript" src="content/js/layer/layer.js"></script>
<script type="text/javascript" src="content/js/jsp/back/login.js"></script>
</body>
</html>