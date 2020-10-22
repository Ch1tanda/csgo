package com.csgo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by IntelliJ IDEA.
 * User: Ch1tanda
 * Date: 2020/10/22
 * Time: 13:48
 */
@Controller
@RequestMapping(path = "/manager")
public class ManagerController {
    @RequestMapping(path = "/userinfo")
    public String userInfo(){
        //加载所有报名过的用户信息
        //添加至Session
        //返回页面
        return "manager/userinfo";
    }


}
