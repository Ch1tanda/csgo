package com.csgo.service;

import com.csgo.domain.Group;

import java.util.List;

/**
 * Created by IntelliJ IDEA.
 * User: Ch1tanda
 * Date: 2020/10/23
 * Time: 12:16
 */
public interface IGroupService {

    List<Group> findAll();

    Group findById(Integer id);

    void saveGroup(Group group);

    boolean updateGroup(Group group);

    void deleteGroup(Group group);
}
