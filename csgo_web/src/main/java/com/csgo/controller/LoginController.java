package com.csgo.controller;

import com.csgo.domain.User;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;

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
public class LoginController {
    @RequestMapping(path="/register")
    public String toRegister(){
        return "register";
    }

    @RequestMapping(path="/return")
    public String returnLogin(HttpServletResponse response, HttpServletRequest request) throws ServletException, IOException {
        System.out.println("returnLogin executing");
        return "redirect:/index.jsp";
    }

    @RequestMapping(path="/registersubmit")
    public String register(@RequestBody User user){
        System.out.println(user);
        return "redirect:/index.jsp";
    }
}
