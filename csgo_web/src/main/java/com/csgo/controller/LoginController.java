package com.csgo.controller;

import com.csgo.domain.User;
import com.csgo.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by IntelliJ IDEA.
 * User: Ch1tanda
 * Date: 2020/10/21
 * Time: 20:44
 */
@Controller
@RequestMapping(path="/login")
@SessionAttributes("user")
public class LoginController {
    @Autowired
    private IUserService userService;

    @RequestMapping(path="/register")
    public String toRegister(){
        return "register";
    }

    @RequestMapping(path="/return")
    public String returnLogin(HttpServletResponse response, HttpServletRequest request) throws ServletException, IOException {
        System.out.println("returnLogin executing......");
        return "redirect:/index.jsp";
    }

    /**
     * 响应注册页面的注册ajax
     * @param user
     * @param response
     * @param request
     * @return
     * @throws Exception
     */
    @RequestMapping(path="/registersubmit")
    @ResponseBody
    public boolean register(@RequestBody User user, HttpServletResponse response, HttpServletRequest request) throws Exception {
        System.out.println("registering......");
        System.out.println(user);
        boolean result = userService.registerUser(user);
        return result;
    }


    /**
     * 用来响应前端ajax 登录提交的请求
     * @param user
     * @param model
     * @return
     */
    @RequestMapping(path = "/loginsubmit")
    @ResponseBody
    public boolean loginSubmit(@RequestBody User user, Model model){
        System.out.println("logining......");
        System.out.println(user);
        boolean result = false;
        User ruser = userService.login(user.getEmail(),user.getPassword());
        if(ruser != null){
            result = true;
            model.addAttribute("user",ruser);
        }
        return result;
    }
}
