<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Frameset//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-frameset.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="zh-CN">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <base href="<%=basePath%>"/>
    <link rel="stylesheet" type="text/css" href="content/Style/skin.css" />
    <script type="text/javascript" src="content/js/jquery-1.9.1.min.js"></script>
    <script type="text/javascript" src="content/js/layer/layer.js"></script>
    <script type="text/javascript">
        function logout() {
	        /* layer.confirm('确定要退出吗？', {icon: 3, title:'提示'}, function(index){
				    top.location = '/back';
				    layer.close(index);
				}); */
            if(window.confirm('您确定要退出吗？')) {
                top.location = '/back';
            }
        }       
    </script>
</head>
    <body>
        <table cellpadding="0" width="100%" height="64" background="content/Images/top_top_bg.gif">
            <tr valign="top">
                <td width="50%"><a href="javascript:void(0)"><img style="border:none" src="content/Images/logo.png" /></a></td>
                <td width="30%" style="padding-top:13px;font:15px Arial,SimSun,sans-serif;color:#FFF">管理员：<b>${user_info.name }</b> 您好，感谢登陆使用！</td>
                <td style="padding-top:10px;" align="center"><a href="/" target="_blank"><img style="border:none" src="content/Images/index.gif" /></a></td>
                <td style="padding-top:10px;" align="center"><a href="javascript:void(0)"><img style="border:none" src="content/Images/out.gif" onclick="logout();" /></td>
            </tr>
        </table>
    </body>
</html>