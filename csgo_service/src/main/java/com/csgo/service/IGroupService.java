package com.csgo.service;

import com.csgo.domain.Group;
import org.apache.ibatis.annotations.Select;

import java.security.PrivateKey;
import java.util.List;

public interface IGroupService {

    List<Group> findAll();

    Group findById(Integer groupid);

}
