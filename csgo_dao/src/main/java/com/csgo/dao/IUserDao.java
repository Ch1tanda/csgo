package com.csgo.dao;

import com.csgo.domain.User;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface IUserDao {

    /**
     * 显示所有选手信息
     */
    @Select("select * from userinfo")
    List<User> findAll();

    @Select("select * from userinfo where email = #{email}")
    User findByEmail(String email);

    /**
     * 用户注册
     * @param user
     */
    @Insert("insert into userinfo " +
            "values(#{id}, #{email}, #{username}, #{password}, #{tel}, #{qq}, #{platform}, #{rank}, #{school}, #{groupid})")
    void registerUser(User user);

}
