package com.black.controller.view;

import java.io.PrintWriter;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.black.commons.util.ContentUtil;
import com.black.commons.util.JsonUtil;
import com.black.commons.util.Pager;
import com.black.commons.util.PagerParam;
import com.black.service.IAboutService;
import com.black.vo.About;


/**
 * 
 * @author djx
 * @date 2016-1-14
 * @description 关于页控制器
 */
@Controller
@RequestMapping("/aboutController")
public class AboutController {
	
	@Resource
    IAboutService aboutService;
	
	/**
	 * 
	 * @author djx
	 * @date 2016-1-14
	 * @description 跳转到关于页
	 *
	 */
	@RequestMapping(value="/about")
	public ModelAndView about(){
		return new ModelAndView("view/about");
		
	}
	
	/**
	 * @author djx
	 * @date 2016-1-25
	 * @description 后台添加关于的栏目内容
	 * @return
	 */
	@RequestMapping("about_add")
	public ModelAndView about_add(){
		return new ModelAndView("back/about_add");
	}
	
	/**
	 * 
	 * @author djx
	 * @date 2016-1-26
	 * @description 
	 * @return
	 *
	 */
	@RequestMapping("about_manage")
	public ModelAndView about_manager(){
		return new ModelAndView("back/about_manage");
	}
	
	/**
	 * 
	 * @author djx
	 * @date 2016-1-26
	 * @description 添加和更新ABOUT
	 * @param request
	 * @param response
	 *
	 */
	@RequestMapping("saveOrupdateAbout")
	public void saveOrupdateAbout(HttpServletRequest request, HttpServletResponse response, PrintWriter printWriter, About about){
		Map<String,Object> result_map = new HashMap<String,Object>();
		String aboutId = about.getAboutId();
		about.setDate(new Date());
		boolean bon = false;
		if (StringUtils.isNotBlank(aboutId)){
			bon = aboutService.saveOrUpdate(about);
		} else {
			about.setAboutId(UUID.randomUUID()+"");
			bon = aboutService.saveOrUpdate(about);
		}
		
		if(bon){
			result_map.put("success", true);
			result_map.put("msg", "成功");
		}else{
			result_map.put("success", false);
			result_map.put("msg", "失败");
		}
		
		printWriter.print(JsonUtil.jsonObject(result_map, null, null));
		printWriter.flush();
		printWriter.close();
	}
	
	/**
	 * 
	 * @author djx
	 * @date 2016-1-31
	 * @description 
	 * @param request
	 * @param response
	 * @param printWriter
	 *
	 */
	@RequestMapping("loadAboutMessage")
	public void loadAboutMessage(HttpServletRequest request,HttpServletResponse response, PrintWriter printWriter) {
		Pager pagers = null;
//		String name = request.getParameter("name");//关于页面的名称
		
		Map<String, Object> map = new HashMap<String, Object>();
		pagers = PagerParam.getPagerParam(request, pagers);
		/*if (StringUtils.isNotBlank(name)) {
			map.put("name", name);
		}*/
		Pager result = aboutService.findByHQLQuery(map, pagers);
		String param = JsonUtil.jsonObject(result, new String[] {}, ContentUtil.YMDHMS);
		printWriter.print(param);
		printWriter.flush();
        printWriter.close();
	}
}
