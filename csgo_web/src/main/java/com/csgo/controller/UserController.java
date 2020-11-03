package com.csgo.controller;

import com.csgo.domain.*;
import com.csgo.service.IEventService;
import com.csgo.service.IGroupService;
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
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping(path = "/user")
@SessionAttributes({"user","isManager","groupMessage","events"})
public class UserController {
    @Autowired
    private IUserService userService;
    @Autowired
    private IGroupService groupService;
    @Autowired
    private IEventService eventService;

    @RequestMapping("confirm")
    @ResponseBody
    public boolean confirm(ModelMap modelMap, Model model){
        User user = (User) modelMap.getAttribute("user");
        if("Yes".equals(user.getConfirm())){
            return false;
        }else{
            user.setConfirm("Yes");
            userService.updateUser(user);
            //更新Session中的User
            model.addAttribute("user",user);
            return true;
        }
    }

    @RequestMapping(path = "/group")
    public String group(Model model, ModelMap modelMap, HttpServletResponse response){
            //获取group数据
            List<Group> groups = groupService.findAll();
            System.out.println(groups);
            //获取要存储到session的数据结构
            List<GroupMessage> groupMessages = new ArrayList<>();
            //构造list
            if(groups.size() != 0){
                for(Group group : groups){
                    GroupMessage gm = new GroupMessage();
                    gm.setId(group.getId());
                    gm.setGroupname(group.getGroupname());
                    gm.setUsername1(userService.findById(group.getId1()).getUsername());
                    gm.setUsername2(userService.findById(group.getId2()).getUsername());
                    gm.setUsername3(userService.findById(group.getId3()).getUsername());
                    gm.setUsername4(userService.findById(group.getId4()).getUsername());
                    gm.setUsername5(userService.findById(group.getId5()).getUsername());
                    gm.setQq1(userService.findById(group.getId1()).getQq());
                    gm.setQq2(userService.findById(group.getId2()).getQq());
                    gm.setQq3(userService.findById(group.getId3()).getQq());
                    gm.setQq4(userService.findById(group.getId4()).getQq());
                    gm.setQq5(userService.findById(group.getId5()).getQq());
                    groupMessages.add(gm);

                }
            }
            model.addAttribute("groupMessage",groupMessages);
            return "user/group";
    }
    @RequestMapping(path = "/signupsubmit")
    @ResponseBody
    public boolean signupSubmit(ModelMap modelMap, Model model, HttpServletRequest request){
        //获取登录存入Session的user
        User user =(User)modelMap.getAttribute("user");
        //获取message
        String message = request.getParameter("message");
        System.out.println(message);
        boolean result = false;
        if("No".equals(user.getSigned())){
            user.setSigned("Yes");
            result = true ;
        }
        user.setMessage(message);
        userService.updateUser(user);
        model.addAttribute("user",user);
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
    public String result(Model model){
        //获取所有eventinfo
        List<EventInfo> events = eventService.findAll();
        //加入Session
        model.addAttribute("events",events);
        return "user/result";
    }

    @RequestMapping(path = "/managerlogin")
    public String managerPage(){
        return "user/managerlogin";
    }

    @RequestMapping(path="/managersubmit")
    @ResponseBody
    public boolean managerLogin(@RequestBody String password, Model model) throws ServletException, IOException {
        boolean result = false;
        System.out.println(password);
        if("tudoumeiniuzi".equals(password)){
            result = true;
            model.addAttribute("isManager",1);
        }
        return result;
    }

}
