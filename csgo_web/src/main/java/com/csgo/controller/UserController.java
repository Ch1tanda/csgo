package com.csgo.controller;

import com.csgo.domain.Group;
import com.csgo.domain.GroupMessage;
import com.csgo.domain.User;
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
import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping(path = "/user")
@SessionAttributes({"user","isManager","groupMessage"})
public class UserController {
    @Autowired
    private IUserService userService;
    @Autowired
    private IGroupService groupService;

    @RequestMapping(path = "/group")
    public String group(Model model){
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
                System.out.println(gm);
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
