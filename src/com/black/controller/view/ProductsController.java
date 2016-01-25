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
@RequestMapping("/productsController")
public class ProductsController {
	
	/**
	 * 
	 * @author djx
	 * @date 2016-1-14
	 * @description 跳转到关于页
	 * @param request
	 * @param response
	 *
	 */
	@RequestMapping(value="/products")
	public ModelAndView products(HttpServletRequest request, HttpServletResponse response){
		return new ModelAndView("view/products");
		
	}
}
