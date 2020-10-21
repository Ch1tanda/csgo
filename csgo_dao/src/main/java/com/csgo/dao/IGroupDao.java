package com.csgo.dao;

import com.csgo.domain.Group;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface IGroupDao {

    @Select("select * from groupinfo")
    List<Group> findAll();

    @Select("select * from group where groupid = #{groupid}")
    Group findById(Integer groupid);

}
