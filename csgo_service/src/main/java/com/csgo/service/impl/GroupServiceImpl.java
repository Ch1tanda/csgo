package com.csgo.service.impl;

import com.csgo.dao.IGroupDao;
import com.csgo.domain.Group;
import com.csgo.service.IGroupService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by IntelliJ IDEA.
 * User: Ch1tanda
 * Date: 2020/10/23
 * Time: 12:16
 */
@Service("groupService")
public class GroupServiceImpl implements IGroupService {
    @Autowired
    private IGroupDao groupDao;

    @Override
    public List<Group> findAll() {
        return groupDao.findAll();
    }

    @Override
    public Group findById(Integer id) {
        return groupDao.findById(id);
    }

    @Override
    public void saveGroup(Group group) {
        groupDao.saveGroup(group);
    }

    @Override
    public boolean updateGroup(Group group) {
        List<Group> groups = this.findAll();
        boolean result = false;
        for(Group group1 : groups){
            if(group1.getId() == group.getId()){
                groupDao.updateGroup(group);
                result = true;
                break;
            }
        }
        return result;
    }

    @Override
    public void deleteGroup(Group group) {
        groupDao.deleteGroup(group);
    }
}
