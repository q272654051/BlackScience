package com.black.commons.filter;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;

import com.black.commons.util.XssHttpWrapper;

import java.io.IOException;

/**
 * 防止XSS跨域攻击，自定义filter
 * cn.kepu.filter.SqlInjectFilter.java
 * @author djx
 * created at 2015-7-2
 */
public class XssFilter implements Filter {


	public void init(FilterConfig filterConfig) throws ServletException {
		System.out.println("Xss filter inited!");
	}

	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		XssHttpWrapper xssRequest = new XssHttpWrapper((HttpServletRequest) request);
		chain.doFilter(xssRequest, response);
	}

	
	public void destroy() {
		System.out.println("Xss filter destroyed!");
	}
	
}
