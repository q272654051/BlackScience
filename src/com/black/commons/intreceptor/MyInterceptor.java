package com.black.commons.intreceptor;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.black.vo.User;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.Iterator;
import java.util.Map;

/**
 * 自定义拦截器
 *
 * @author tushen
 * @date Nov 5, 2011
 */
public class MyInterceptor extends HandlerInterceptorAdapter {

    /**
     * 最后执行，可用于释放资源
     */
    @Override
    public void afterCompletion(HttpServletRequest request,
                                HttpServletResponse response, Object handler, Exception ex)
            throws Exception {
        // TODO Auto-generated method stub

        super.afterCompletion(request, response, handler, ex);
    }

    /**
     * 显示视图前执行
     */
    @Override
    public void postHandle(HttpServletRequest request,
                           HttpServletResponse response, Object handler,
                           ModelAndView modelAndView) throws Exception {
        super.postHandle(request, response, handler, modelAndView);
    }

    /**
     * 在业务处理器处理请求之前被调用
     * 如果返回false
     *     从当前的拦截器往回执行所有拦截器的afterCompletion(),再退出拦截器链
     *
     * 如果返回true
     *    执行下一个拦截器,直到所有的拦截器都执行完毕
     *    再执行被拦截的Controller
     *    然后进入拦截器链,
     *    从最后一个拦截器往回执行所有的postHandle()
     *    接着再从最后一个拦截器往回执行所有的afterCompletion()
     */
    @Override
    public boolean preHandle(HttpServletRequest request,
                             HttpServletResponse response, Object handler) throws Exception {

            // 1.获取用户
            User user_info = (User) request.getSession().getAttribute("user_info");
            String request_Url = request.getRequestURL().toString();//请求的链接
            String reg = ".*\\.(?i)(jpg|js|png|css|gif)";
            //静态资源不进行验证
            if(request_Url.matches(reg)){
                return true;
            }
            if (null == user_info || "".equals(user_info)) {// 如果用户为空(同等于session过期操作)
                //String url = request_Url.substring(request_Url.lastIndexOf("/"), request_Url.length()).replace(".do","");
                String url = request_Url;
                if(url.indexOf("back")==-1){//个人中心 session过期后操作
                	return true;
                }else{
                	String backUrl = url.substring(url.lastIndexOf("back"), url.length()-4);
                	if (backUrl.length()>0){
                		Map map = request.getParameterMap();
                		String params = "";// 参数
                		if (null != map && map.size() > 0) {
                			Iterator it = map.keySet().iterator();
                			while (it.hasNext()) {
                				String key = "";
                				String[] value;
                				key = it.next().toString();
                				value = (String[]) map.get(key);
                				params += key + "=" + value[0] + "&";
                			}
                			response.sendRedirect(request.getContextPath()+"/back?ResultUrl=" + request.getRequestURL() + "?" + params.substring(0, params.length() - 1));
                			return false;
                		} else {
                			response.sendRedirect(request.getContextPath() + "/back?ResultUrl=" + request.getRequestURL());
                			return false;
                		}
                	}else{
                		return true;
                	}
                }
            } else {
                return true;
            }
    }

}
