package com.black.commons.filter;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

/**
 * @author djx
 * @date 2015-10-14
 * @description
 */
public class LoginFilter implements Filter {

    /* (non-Javadoc)
     * @see javax.servlet.Filter#destroy()
     */
    @Override
    public void destroy() {
        // TODO Auto-generated method stub
        
    }

    /* (non-Javadoc)
     * @see javax.servlet.Filter#doFilter(javax.servlet.ServletRequest, javax.servlet.ServletResponse, javax.servlet.FilterChain)
     */
    @Override
    public void doFilter(ServletRequest request, ServletResponse response,
            FilterChain chain) throws IOException, ServletException {
        // TODO Auto-generated method stub
        HttpServletRequest req = (HttpServletRequest)request;
        HttpServletResponse rep = (HttpServletResponse)response;
        String request_Url = req.getRequestURL().toString();//请求的链接
        if(request_Url.indexOf("/") < 0 || request_Url.lastIndexOf("/") == request_Url.length()-1 
                || request_Url.indexOf("login.") > 0
                ||  request_Url.indexOf("toJinRongGuZhi") > 0){
            HttpSession session = req.getSession();
            /*KeHu kehu = (KeHu) session.getAttribute("kehu");
            if(null != kehu){
                if(StringUtils.isNotBlank(kehu.getKeHuMingCheng())
                        && StringUtils.isNotBlank(kehu.getKeHuShouJi())
                        && StringUtils.isNotBlank(kehu.getKeHuDanWei())
                        && StringUtils.isNotBlank(kehu.getKeHuXiangXiDiZhi())
                        && StringUtils.isNotBlank(kehu.getKeHuChengShi())){
                    
                }else{
                    rep.sendRedirect("/DengLu/grzxIndex");
                }
            }*/
        }
        chain.doFilter(request, response);
        
    }

    /* (non-Javadoc)
     * @see javax.servlet.Filter#init(javax.servlet.FilterConfig)
     */
    @Override
    public void init(FilterConfig config) throws ServletException {
        // TODO Auto-generated method stub
        
    }

}
