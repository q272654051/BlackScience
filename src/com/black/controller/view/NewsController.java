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
 * @description 新闻页控制器
 */
@Controller
@RequestMapping("/newsController")
public class NewsController {
	
	/**
	 * 
	 * @author djx
	 * @date 2016-1-14
	 * @description 跳转到新闻页
	 * @param request
	 * @param response
	 *
	 */
	@RequestMapping(value="/news")
	public ModelAndView news(HttpServletRequest request, HttpServletResponse response){
		return new ModelAndView("view/news");
		
	}
}
