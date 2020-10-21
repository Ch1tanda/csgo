package com.csgo.controller;

import com.csgo.domain.User;
import com.csgo.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/user")
@SessionAttributes("user")
public class UserController {

    @Autowired
    private IUserService service;

    @RequestMapping("/findAll")
    public String findAll(Model model) {
        List<User> users = service.findAll();
        model.addAttribute("users", users);
        return "userList";
    }

    @RequestMapping("/register")
    public String register() {
        return "register";
    }

    @RequestMapping("/registerUser")
    public void registerUser(User user, HttpServletRequest request, HttpServletResponse response) throws IOException {
        System.out.println("表现层：用户注册...");
        System.out.println(user);
        service.registerUser(user);
        response.sendRedirect(request.getContextPath() + "/user/findAll");
    }


    @RequestMapping("/main")
    public ModelAndView login(@RequestParam Map<String, String> map, HttpServletRequest req, HttpServletResponse res) {
        System.out.println(map.get("email"));
        User user = service.login(map.get("email"), map.get("password"));
        System.out.println(user);
        user.setPassword("");
        ModelAndView mv = new ModelAndView();
        if (user != null) {
            mv.addObject("user", user);
        }
        mv.setViewName("main");
        return mv;
    }

    @RequestMapping("/changname")
    public void changName(){

    }
}
