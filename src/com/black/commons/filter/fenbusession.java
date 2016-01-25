package com.black.commons.filter;


import javax.servlet.*;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.black.commons.util.ContentUtil;
import com.black.commons.util.DESUtil;

import java.io.IOException;
import java.util.Enumeration;

/**
 * 分布式session
 * @author djx
 * @date 2016-1-14
 */
public class fenbusession implements Filter {

	public void destroy() {
		// TODO Auto-generated method stub

	}

	public void init(FilterConfig arg0) throws ServletException {
		// TODO Auto-generated method stub

	}

	//分布式session的一种解决方法，每次请求的时候，从cookie中获取session，结束访问后，将session信息重新写入cookie存储
	public void doFilter(ServletRequest req, ServletResponse res,
			FilterChain chain) throws IOException, ServletException {
		// TODO Auto-generated method stub
		HttpServletRequest request = (HttpServletRequest) req;
		HttpServletResponse response = (HttpServletResponse) res;

		// 遍历cookies获取cookie中存储的session信息
		Cookie[] cookies = request.getCookies();
		HttpSession session = request.getSession();
		try {
			for (Cookie cookie : cookies) {
				if (getSessionFromCookie(cookie, session)) {
					break;
				}
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		// 转交到MVC
		chain.doFilter(request, response);

		// 将session的信息写入到cookie中
		try {
			writeSessionToCookie(session, response);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

	private void writeSessionToCookie(HttpSession session,
			HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		String sessions = "";
		Enumeration<String> sessionNames = session.getAttributeNames();
		while (sessionNames.hasMoreElements()) {
			String key = (String) sessionNames.nextElement();
			String value = session.getAttribute(key).toString();
			sessions = sessions + key + ":" + value + "%%";
		}
		Cookie cookie = new Cookie(DESUtil.encrypt("sessionincookie",
				ContentUtil.miyao).replace("=", "$"), DESUtil.encrypt(sessions,
				ContentUtil.miyao));
		cookie.setMaxAge(24 * 3600);
		response.addCookie(cookie);

	}

	private boolean getSessionFromCookie(Cookie cookie, HttpSession session)
			throws Exception {
		// TODO Auto-generated method stub
		String cookiename = DESUtil.decrypt(cookie.getName().replace("$", "="),
				ContentUtil.miyao);
		if (cookiename.equals("sessionincookie")) {
			Enumeration<String> sessionNames = session.getAttributeNames();
			while (sessionNames.hasMoreElements()) {
				String key = (String) sessionNames.nextElement();
				session.removeAttribute(key);
			}
			String sessionValue = cookie.getValue();
			String[] values = sessionValue.split("%%");
			for (String danli : values) {
				String[] jiexi = danli.split(":");
				if (jiexi.length == 2) {
					session.setAttribute(jiexi[0], jiexi[1]);
				} else {
					session.setAttribute(jiexi[0], "");
				}
			}
			return true;
		} else {
			return false;
		}
	}

}
