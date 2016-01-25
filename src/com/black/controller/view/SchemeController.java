package com.black.controller.view;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;


/**
 * 
 * @author djx
 * @date 2016-1-14
 * @description 解决方案页控制器
 */
@Controller
@RequestMapping("/schemeController")
public class SchemeController {
	
	/**
	 * 
	 * @author djx
	 * @date 2016-1-14
	 * @description 跳转到解决方案页
	 * @param request
	 * @param response
	 *
	 */
	@RequestMapping(value="/scheme")
	public ModelAndView scheme(HttpServletRequest request, HttpServletResponse response){
		return new ModelAndView("view/scheme");
		
	}
}
