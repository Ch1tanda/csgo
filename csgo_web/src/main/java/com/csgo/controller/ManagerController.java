package com.csgo.controller;

import com.csgo.domain.User;
import com.csgo.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by IntelliJ IDEA.
 * User: Ch1tanda
 * Date: 2020/10/22
 * Time: 13:48
 */
@Controller
@RequestMapping(path = "/vip")
@SessionAttributes("signed")
public class ManagerController {
    @Autowired
    private IUserService userService;

    @RequestMapping(path = "/userinfo")
    public String userInfo(Model model){
        //加载所有并筛选出报名的用户信息
        List<User> users = userService.findAll();
        List<User> signed = new ArrayList<>();
        for(User user : users){
            if("Yes".equals(user.getSigned())){
                signed.add(user);
            }
        }
        //添加至Session
        model.addAttribute("signed",signed);
        //返回页面
        return "manager/userinfo";
    }

    @RequestMapping(path = "/group")
    public String group(){
        return "manager/group";
    }

    @RequestMapping(path = "/addresult")
    public String addresult(){
        return "manager/addresult";
    }

    @RequestMapping(path = "/manager")
    public String manager(){
        return "redirect:/manager.jsp";
    }

}
