package com.csgo.dao;

import com.csgo.domain.Group;
import org.apache.ibatis.annotations.*;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by IntelliJ IDEA.
 * User: Ch1tanda
 * Date: 2020/10/23
 * Time: 12:14
 */

@Repository
public interface IGroupDao {
    @Select("select * from `group`;")
    List<Group> findAll();

    @Select("select * from `group` where id=#{id};")
    Group findById(Integer id);

    @Insert("insert into `group`(groupname,live,id1,id2,id3,id4,id5) values(#{groupname},#{live},#{id1},#{id2},#{id3},#{id4},#{id5});")
    @SelectKey(before = false,keyProperty = "id", keyColumn = "id",resultType = Integer.class,statement = "select last_insert_id();")
    void saveGroup(Group group);

    @Update("update `group` set groupname=#{groupname},live=#{live},id1=#{id1},id2=#{id2},id3=#{id3},id4=#{id4},id5=#{id5} where id=#{id};")
    void updateGroup(Group group);

    @Delete("delete from `group` where id = #{id};")
    void deleteGroup(Group group);
}
