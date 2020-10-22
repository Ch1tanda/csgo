package com.csgo.controller;

import com.csgo.domain.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

@Controller
@RequestMapping(path = "/user")
@SessionAttributes("user")
public class UserController {
    @RequestMapping(path = "/signupsubmit")
    @ResponseBody
    public boolean signupSubmit(ModelMap modelMap, Model model){
        User user =(User)modelMap.getAttribute("user");
        boolean result = false;
        if("No".equals(user.getSigned())){
            user.setSigned("Yes");
            result = true ;
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

    @RequestMapping(path="/managerlogin")
    public String managerlogin(){
        return "user/managerlogin";
    }

}
