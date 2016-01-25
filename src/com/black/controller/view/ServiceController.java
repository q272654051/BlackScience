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
 * @description 服务页控制器
 */
@Controller
@RequestMapping("/serviceController")
public class ServiceController {
	
	/**
	 * 
	 * @author djx
	 * @date 2016-1-14
	 * @description 跳转到服务页
	 * @param request
	 * @param response
	 *
	 */
	@RequestMapping(value="/service")
	public ModelAndView service(HttpServletRequest request, HttpServletResponse response){
		return new ModelAndView("view/service");
		
	}
}
