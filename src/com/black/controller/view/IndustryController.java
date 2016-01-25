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
 * @description 行业页控制器
 */
@Controller
@RequestMapping("/industryController")
public class IndustryController {
	
	/**
	 * 
	 * @author djx
	 * @date 2016-1-14
	 * @description 跳转到行业页
	 * @param request
	 * @param response
	 *
	 */
	@RequestMapping(value="/industry")
	public ModelAndView industry(HttpServletRequest request, HttpServletResponse response){
		return new ModelAndView("view/industry");
		
	}
}
