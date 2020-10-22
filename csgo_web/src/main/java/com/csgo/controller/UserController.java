package com.csgo.controller;

import com.csgo.domain.User;
import com.csgo.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@Controller
@RequestMapping(path = "/user")
@SessionAttributes({"user","isManager"})
public class UserController {
    @Autowired
    private IUserService userService;

    @RequestMapping(path = "/signupsubmit")
    @ResponseBody
    public boolean signupSubmit(ModelMap modelMap, Model model){
        User user =(User)modelMap.getAttribute("user");
        boolean result = false;
        if("No".equals(user.getSigned())){
            user.setSigned("Yes");
            result = true ;
            userService.updateUser(user);
            model.addAttribute("user",user);
        }
        return result;
    }

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

    @RequestMapping(path = "/managerlogin")
    public String managerPage(){
        return "user/managerlogin";
    }

    @RequestMapping(path="/managersubmit")
    @ResponseBody
    public boolean managerLogin(@RequestBody String password, Model model, HttpServletResponse response, HttpServletRequest request) throws ServletException, IOException {
        boolean result = false;
        System.out.println(password);
        if("tudoumeiniuzi".equals(password)){
            result = true;
            model.addAttribute("isManager",1);
        }
        return result;
    }

}
