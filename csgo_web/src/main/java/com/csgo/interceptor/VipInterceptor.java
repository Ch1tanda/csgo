package com.csgo.interceptor;

import org.springframework.web.servlet.HandlerInterceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Created by IntelliJ IDEA.
 * User: Ch1tanda
 * Date: 2020/10/23
 * Time: 16:05
 */
public class VipInterceptor implements HandlerInterceptor {

    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        //获取Session对象
        HttpSession session = request.getSession();
        //获取是否是管理员
        Object obj = session.getAttribute("isManager");
        if(obj == null){
            //重定向到用户首页
            response.sendRedirect("/user/main");
            return false;
        }
        //通行
        return true;
    }

}
