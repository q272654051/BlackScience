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
 * @description 机会页控制器
 */
@Controller
@RequestMapping("/chanceController")
public class ChanceController {
	
	/**
	 * 
	 * @author djx
	 * @date 2016-1-14
	 * @description 跳转到机会页
	 * @param request
	 * @param response
	 *
	 */
	@RequestMapping(value="/chance")
	public ModelAndView service(HttpServletRequest request, HttpServletResponse response){
		return new ModelAndView("view/chance");
		
	}
}
