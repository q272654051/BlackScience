package com.black.controller.back;

import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.black.commons.util.Base64andMD5Util;
import com.black.commons.util.JsonUtil;
import com.black.service.IUserService;
import com.black.vo.User;


@Controller
@RequestMapping("/Backlogin")
public class LoginController {
	
	@Resource
    IUserService userService;
	
	/**
	 * 用户登录验证
	 * @param request
	 * @param response
	 * @return
	 */
	@RequestMapping(value="/login")
	public void login(HttpServletRequest request, HttpServletResponse response, PrintWriter printWriter){
		Map<String,Object> result_map = new HashMap<String,Object>();
		User user = new User();
		String name = request.getParameter("username");
		String pwd = request.getParameter("password");
		pwd = Base64andMD5Util.MD5Str32(Base64andMD5Util.encodeStr(pwd));//进行加密处理
		try{
			List<User> list = userService.findUserByName(name);
			if (list.size()>0){
				user = list.get(0);
				if (user.getStatus()==0){
					if (pwd.equals(user.getPwd())){
						result_map.put("success", true);
						result_map.put("data", user);
						result_map.put("msg", "登录成功");
						request.getSession().setAttribute("userId",user.getUserId()+"");         //存储登陆人id
						request.getSession().setMaxInactiveInterval(3600);                           //设置超时时间3600s
						//SessionOperateUtil.setSessionAttribute("user_info", user);
					} else {
						result_map.put("success", false);
						result_map.put("msg", "密码错误");
					}
				} else {
					result_map.put("success", false);
					result_map.put("msg", "该用户已被锁定");
				}
			} else {
				result_map.put("success", false);
				result_map.put("msg", "该用户不存在");
			}
		}catch(Exception e){
			result_map.put("success", false);
			result_map.put("msg", "系统错误,请稍后再试。");
		}
		printWriter.print(JsonUtil.jsonObject(result_map, null, null));
		printWriter.flush();
		printWriter.close();
	}
	
	/**
	 * 
	 * @author djx
	 * @date 2016-1-23
	 * @description 
	 * @return
	 *
	 */
	@RequestMapping(value="/loginSuccess")
	public ModelAndView loginSuccess(HttpServletRequest request, HttpServletResponse response){
		ModelAndView mav = new ModelAndView("back/index");
		return mav;
	}
	
}
