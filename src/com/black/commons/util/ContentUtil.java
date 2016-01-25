package com.black.commons.util;

/**
 *<p style="color:blue"> 用于封装全局的实例对象</p>
 *
 * @author djx
 *
 */
public class ContentUtil {

    /**
     * 图片存放地址
     */
    public static  String  customPath="upload/file/";
    public static  String  ImgPath="upload/img/";

    public static  String  FilePath="upload/file/";


    
    
    /**
     * 邮箱发送器配置一般不修改
     */
    public static String emailServiceType="smtp.163.com"; //邮件服务器
    public static String emailFromAddressName="XX公司";//邮件地址名称（我方）
    public static String emailUserName="xxx@163.com"; //邮件账户名称
    public static String emailPassword="******"; //邮件密码
    public static String emailFromAddress="wds_163_sky@163.com";//
    public static int   emailSmtpPort=25;
    
    /**
     * 时间格式参数
     */
    public static  String  YYYYMMDD="yyyyMMdd";
    public static  String  YYYYMMDDHHMMSS="yyyyMMddHHmmss";
    public static  String  YMD="yyyy-MM-dd";
    public static  String  YMDHMS="yyyy-MM-dd HH:MM:ss";
    public static  String  YMD1="yyyy/MM/dd";
    public static  String  YMDHMS1="yyyy/MM/dd HH:MM:ss";

    /**
     * 配置外部网络接口
     */
    public static  String  textUrl="www.baidu.com";

    /**
     * 加密密钥
     */
    public static  String  miyao="beijingyungfangshujujishu-xinxibumen-o2o";
    
    
    /**
     * 登录地址
     */
    public static String dengluUrl="http://192.168.1.123";
    
    /**
     * 获取城市地铁 等信息
     */
    public static String baiduditie="http://map.baidu.com/subways/data/";
    
    
}

