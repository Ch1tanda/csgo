package com.csgo.interceptor;

import org.springframework.web.servlet.HandlerInterceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Created by IntelliJ IDEA.
 * User: Ch1tanda
 * Date: 2020/10/23
 * Time: 15:58
 */
public class UserInterceptor implements HandlerInterceptor {

    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        //获取Session
        HttpSession session = request.getSession();
        //判断是否登录
        Object obj = session.getAttribute("user");
        if(obj == null){
            //重定向登录页面
            response.sendRedirect("/index.jsp");
            return false;
        }
        //通行
        return true;
    }
}
