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
</head>
    <body>
        <table width="100%" border="0" cellpadding="0" cellspacing="0">
            <!-- 头部开始 -->
            <tr>
                <td width="17" valign="top" background="content/Images/mail_left_bg.gif">
                    <img src="content/Images/left_top_right.gif" width="17" height="29" />
                </td>
                <td valign="top" background="content/Images/content_bg.gif">
                    <table width="100%" height="31" border="0" cellpadding="0" cellspacing="0" background="content/Images/content_bg.gif">
                        <tr><td height="31"><div class="title">添加信息</div></td></tr>
                    </table>
                </td>
                <td width="16" valign="top" background="content/Images/mail_right_bg.gif"><img src="content/Images/nav_right_bg.gif" width="16" height="29" /></td>
            </tr>
            <!-- 中间部分开始 -->
            <tr>
                <!--第一行左边框-->
                <td valign="middle" background="content/Images/mail_left_bg.gif">&nbsp;</td>
                <!--第一行中间内容-->
                <td valign="top" bgcolor="#F7F8F9">
                    <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
                        <!-- 空白行-->
                        <tr><td colspan="2" valign="top">&nbsp;</td><td>&nbsp;</td><td valign="top">&nbsp;</td></tr>
                        <tr>
                            <td colspan="4">
                                <table>
                                    <tr>
                                        <td width="100" align="center"><img src="content/Images/mime.gif" /></td>
                                        <td valign="bottom"><h3 style="letter-spacing:1px;">在这里，您可以添加关于网站页网站的有关介绍！</h3></td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <!-- 一条线 -->
                        <tr>
                            <td height="40" colspan="4">
                                <table width="100%" height="1" border="0" cellpadding="0" cellspacing="0" bgcolor="#CCCCCC">
                                    <tr><td></td></tr>
                                </table>
                            </td>
                        </tr>
                        <!-- 开始 -->
                        <tr>
                            <td width="2%">&nbsp;</td>
                            <td width="96%">
                                <table width="100%">
                                    <tr>
                                        <td colspan="2">
                                            <form action="" method="">
                                                <table width="100%" class="cont">
                                                    <tr>
                                                        <td>&nbsp;</td>
                                                        <td>介绍类型：</td>
                                                        <td>
                                                            <select id="name">
                                                                <option value="">请选择...</option>
                                                                <option value="公司简介">公司简介</option>
                                                                <option value="公司文化">企业文化</option>
                                                                <option value="领导致辞">领导致辞</option>
                                                                <option value="公司资质">企业资质</option>
                                                            </select>
                                                        </td>
                                                        <td>选择介绍类型</td>
                                                        <td>&nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td>&nbsp;</td>
                                                        <td>是否显示：</td>
                                                        <td>
                                                            <input type="radio" name="status" value="1" checked="checked"/> 是 
                                                            <input type="radio" name="status" value="0" /> 否
                                                        </td>
                                                        <td>设置该介绍是否显示。</td>
                                                        <td>&nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td>&nbsp;</td>
                                                        <td>介绍图片：</td>
                                                        <td>
                                                            <div class="col-md-2 pic-upload">
										                        <a class="thumbnail" id="preview">
										                            <img id="headpic" src="" alt="" width="250" height="150">
										                        </a>
										                        <div class="form-group file-upload">
										                             <input type="file" name="exampleInputFile" id="exampleInputFile"/>
										                        </div>
										                        <!-- <p class="help-block">上传消息头图</p> -->
										                        <input type="hidden" id="img" value=""/>
										                    </div>
                                                        </td>
                                                        <td>在介绍中插入图片。</td>
                                                        <td>&nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td>&nbsp;</td>
                                                        <td>介绍内容</td>
                                                        <td><textarea id="content"  rows="3" cols="20"></textarea></td>
                                                        <td>详细介绍的文字内容</td>
                                                        <td>&nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td>&nbsp;</td>
                                                        <td>备注</td>
                                                        <td><input type="text" id="remark"  /></td>
                                                        <td>关于添加的次介绍的备注</td>
                                                        <td>&nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td>&nbsp;</td>
                                                        <td colspan="3"><input class="btn" type="button" id="confirm" value="提交" /></td>
                                                        <td>&nbsp;</td>
                                                    </tr>
                                                </table>
                                            </form>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                            <td width="2%">&nbsp;</td>
                        </tr>
                        <!-- 添加栏目结束 -->
                        <tr>
                            <td height="40" colspan="4">
                                <table width="100%" height="1" border="0" cellpadding="0" cellspacing="0" bgcolor="#CCCCCC">
                                    <tr><td></td></tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td width="2%">&nbsp;</td>
                            <td width="51%" class="left_txt">
                                <img src="content/Images/icon_mail.gif" width="16" height="11"> 客户服务邮箱：rainman@foxmail.com<br />
                                <img src="content/Images/icon_phone.gif" width="17" height="14"> 官方网站：<a href="http://www.mycodes.net/" target="_blank">源码之家</a>
                            </td>
                            <td>&nbsp;</td><td>&nbsp;</td>
                        </tr>
                    </table>
                </td>
                <td background="content/Images/mail_right_bg.gif">&nbsp;</td>
            </tr>
            <!-- 底部部分 -->
            <tr>
                <td valign="bottom" background="content/Images/mail_left_bg.gif">
                    <img src="content/Images/buttom_left.gif" width="17" height="17" />
                </td>
                <td background="content/Images/buttom_bgs.gif">
                    <img src="content/Images/buttom_bgs.gif" width="17" height="17">
                </td>
                <td valign="bottom" background="content/Images/mail_right_bg.gif">
                    <img src="content/Images/buttom_right.gif" width="16" height="17" />
                </td>           
            </tr>
        </table>
    <script type="text/javascript" src="content/js/jquery-1.9.1.min.js"></script>
    <script type="text/javascript" src="content/js/layer/layer.js"></script>
	<script type="text/javascript" src="content/js/jsp/back/about_add.js"></script>
    </body>
</html>