package com.csgo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(path = "/user")
//@SessionAttributes("user")
public class UserController {
    /**
     * 该方法用于index.jsp中登录成功后的跳转请求
     * @return
     */
    @RequestMapping(path = "/main")
    public String login() {
        return "user/main";
    }

    @RequestMapping(path = "/profile")
    public String profile(){
        return "user/profile";
    }

    @RequestMapping(path = "/signup")
    public String signup(){
        return "user/signup";
    }

    @RequestMapping(path = "/result")
    public String result(){
        return "user/result";
    }

    @RequestMapping(path="/managerlogin")
    public String managerlogin(){
        return "user/managerlogin";
    }

}
