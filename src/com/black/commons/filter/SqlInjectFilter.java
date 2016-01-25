package com.black.commons.filter;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Enumeration;

/**
 * 防止sql注入，自定义filter
 * cn.kepu.filter.SqlInjectFilter.java
 * @author djx
 * created at 2015-7-2
 */
public class SqlInjectFilter implements Filter {

	public void destroy() {
		// TODO Auto-generated method stub
	}

	public void init(FilterConfig arg0) throws ServletException {
		// TODO Auto-generated method stub
	}

	public void doFilter(ServletRequest req, ServletResponse res,
						 FilterChain chain) throws IOException, ServletException {
	    HttpServletRequest request=(HttpServletRequest)req;
		HttpServletResponse response=(HttpServletResponse)res;
		String reg = ".*\\.(?i)(jpg|js|png|css|gif)";
		String request_Url = request.getRequestURL().toString();//请求的链接
		//静态资源不进行验证
        if(request_Url.matches(reg)){
            chain.doFilter(req,res);
            return;
        }
		if(request_Url.indexOf("downloadBaoGaoPic_noLogin") == -1){//如果是下载报告，传输imgurl 放弃拦截
			//获得所有请求参数名
			Enumeration params = request.getParameterNames();
			String sql = "";
			while (params.hasMoreElements()) {
				//得到参数名
				String name = params.nextElement().toString();
				//得到参数对应值
				String[] value = request.getParameterValues(name);
				for (int i = 0; i < value.length; i++) {
					sql = sql + value[i];
				}
			}
			//有sql关键字，跳转到error.html
			if (sqlValidate(sql)) {
				response.sendRedirect(request.getContextPath() + "/error.jsp");
				throw new IOException("您发送请求中的参数中含有非法字符");
				//String ip = req.getRemoteAddr();
			} else {
				chain.doFilter(req,res);
			}
		}else{
			chain.doFilter(req,res);
		}
	}

	//效验
	protected static boolean sqlValidate(String str) {
		str = str.toLowerCase();//统一转为小写
//		String badStr = "and|exec|insert|select|delete|update|count|*|chr|mid|truncate|char|declare|or|alert|script|redirect:";//过滤掉的sql关键字，可以手动添加
		String badStr = "exec|insert|delete|update|count|truncate|char|declare|alert|script|redirect:";//过滤掉的sql关键字，可以手动添加
		String[] badStrs = badStr.split("\\|");
		for (int i = 0; i < badStrs.length; i++) {
			if (str.indexOf(badStrs[i]) >= 0) {
				return true;
			}
		}
		return false;
	}
}