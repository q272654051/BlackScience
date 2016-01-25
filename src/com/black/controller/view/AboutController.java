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
 * @description 关于页控制器
 */
@Controller
@RequestMapping("/aboutController")
public class AboutController {
	
	/**
	 * 
	 * @author djx
	 * @date 2016-1-14
	 * @description 跳转到关于页
	 * @param request
	 * @param response
	 *
	 */
	@RequestMapping(value="/about")
	public ModelAndView about(HttpServletRequest request, HttpServletResponse response){
		return new ModelAndView("view/about");
		
	}
	
	/**
	 * 后台添加关于的栏目内容
	 * @author djx
	 * @date 2016-1-25
	 * @description 
	 * @param request
	 * @param response
	 * @return
	 */
	@RequestMapping("about_add")
	public ModelAndView login(HttpServletRequest request, HttpServletResponse response){
		return new ModelAndView("back/about_add");
	}
}
