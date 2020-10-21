package com.csgo.service.impl;

import com.csgo.dao.IGroupDao;
import com.csgo.domain.Group;
import com.csgo.service.IGroupService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("groupService")
public class GroupServiceImpl implements IGroupService {

    @Autowired
    private IGroupDao dao;

    @Override
    public List<Group> findAll() {
        System.out.println("业务层：查询所有战队信息...");
        return dao.findAll();
    }

    @Override
    public Group findById(Integer groupid) {
        Group group = dao.findById(groupid);
        return group;
    }
}
