package com.black.controller.view;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;


/**
 * 
 * @author lovej
 * @date 2016-1-14
 * @description 前台主页控制器
 */
@Controller
@RequestMapping("/mainController")
public class MainController {
	
	/**
	 * 
	 * @auther djx
	 * @date 2016-1-14
	 * @description 跳转到前台主页
	 * @param request
	 * @param response
	 *
	 */
	@RequestMapping(value="/index")
	public ModelAndView index(HttpServletRequest request, HttpServletResponse response){
		return new ModelAndView("../index");
		
	}
}
