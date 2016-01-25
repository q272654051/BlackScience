package com.black.controller.back;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/back")
public class BackController {
	
	/**
	 * 跳转后台登陆页面
	 * @author djx
	 * @date 2016-1-21
	 * @description 
	 * @param request
	 * @param response
	 *
	 */
	@RequestMapping("")
	public ModelAndView login(HttpServletRequest request, HttpServletResponse response){
		return new ModelAndView("back/login");
	}
}
