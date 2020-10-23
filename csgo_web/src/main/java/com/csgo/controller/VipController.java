package com.csgo.controller;

import com.csgo.domain.Group;
import com.csgo.domain.GroupMessage;
import com.csgo.domain.User;
import com.csgo.service.IGroupService;
import com.csgo.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
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
@SessionAttributes({"signed","groupMessage"})
public class VipController {
    @Autowired
    private IGroupService groupService;
    @Autowired
    private IUserService userService;

    @RequestMapping(path = "/searchByUsername")
    @ResponseBody
    public boolean searchByUsername(HttpServletRequest request, Model model){
        String username = request.getParameter("username");
        List<User> result = new ArrayList<>();
        List<User> users = userService.searchByName(username);
        for(User user : users){
            if("Yes".equals(user.getSigned())){
                result.add(user);
            }
        }
        model.addAttribute("signed",result);
        return true;
    }

    /**
     * 修改组名
     * @param request
     * @return
     */
    @RequestMapping(path = "/modifygroup")
    @ResponseBody
    public boolean modifyGroup(HttpServletRequest request){
        Integer id = Integer.parseInt(request.getParameter("groupid"));
        String groupname =  request.getParameter("groupname");
        //通过组id获取groupid 判断有无该group
        Group group = groupService.findById(id);
        if(group == null){
            return false;
        }else{
            //修改groupname
            group.setGroupname(groupname);
            //更新group
            groupService.updateGroup(group);
            return true;
        }
    }

    @RequestMapping(path = "/revoke")
    @ResponseBody
    public boolean revokeGroup(@RequestBody String id){
        //将JSON的id转化为int型
        Integer idInt = Integer.parseInt(id);
        //通过组id获取group的信息
        Group group = groupService.findById(idInt);
        if(group != null){
            //获取该组user
            User user1 = userService.findById(group.getId1());
            User user2 = userService.findById(group.getId2());
            User user3 = userService.findById(group.getId3());
            User user4 = userService.findById(group.getId4());
            User user5 = userService.findById(group.getId5());
            //groupid置为null
            user1.setGroupid(null);
            user2.setGroupid(null);
            user3.setGroupid(null);
            user4.setGroupid(null);
            user5.setGroupid(null);
            //更新这些用户
            userService.updateUser(user1);
            userService.updateUser(user2);
            userService.updateUser(user3);
            userService.updateUser(user4);
            userService.updateUser(user5);
            //删除该group
            groupService.deleteGroup(group);
            return true;
        }else return false;
    }

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

    /**
     *  创建分组
     * @param group
     * @return
     */
    @RequestMapping(path = "/creategroup")
    @ResponseBody
    public boolean createGroup(@RequestBody Group group){
        boolean result = false;
        System.out.println(group);
        //通过选手id查询选手是否存在
        User user1 = userService.findById(group.getId1());
        User user2 = userService.findById(group.getId2());
        User user3 = userService.findById(group.getId3());
        User user4 = userService.findById(group.getId4());
        User user5 = userService.findById(group.getId5());
        //
        if(user1 != null && user2 != null && user3 != null && user4 != null && user5 !=null
                && user1.getGroupid() == null && user2.getGroupid() == null && user3.getGroupid() == null
                && user4.getGroupid() == null && user5.getGroupid() == null
        ){
            result = true;
            System.out.println(group);
            groupService.saveGroup(group);
            System.out.println(group);
            //修改用户groupid
            user1.setGroupid(group.getId());
            user2.setGroupid(group.getId());
            user3.setGroupid(group.getId());
            user4.setGroupid(group.getId());
            user5.setGroupid(group.getId());
            userService.updateUser(user1);
            userService.updateUser(user2);
            userService.updateUser(user3);
            userService.updateUser(user4);
            userService.updateUser(user5);
        }
        return result;
    }

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

    @RequestMapping(path = "/backtouser")
    public String backToUser(HttpServletResponse response, HttpServletRequest request) throws IOException {
        response.sendRedirect(request.getContextPath()+"/user/main");
        return "user/main";
    }

    @RequestMapping(path = "/search")
    public String toSearch(){
        return "manager/searchByName";
    }

}
