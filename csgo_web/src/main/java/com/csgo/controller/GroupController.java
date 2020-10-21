package com.csgo.controller;

import com.csgo.domain.Group;
import com.csgo.service.IGroupService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

@Controller
@RequestMapping("/group")
public class GroupController {

    @Autowired
    private IGroupService service;

    @RequestMapping("/findAll")
    public String findAll(Model model){
        List<Group> groups = service.findAll();
        model.addAttribute("groups", groups);
        return "groupList";
    }

}
