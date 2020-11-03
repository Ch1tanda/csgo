package com.csgo.dao;

import com.csgo.domain.User;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface IUserDao {

    /**
     * 显示所有选手信息
     */
    @Select("select * from userinfo")
    List<User> findAll();

    /**
     * 使用邮箱查询用户
     * @param email
     * @return
     */
    @Select("select * from userinfo where email = #{email}")
    User findByEmail(String email);

    /**
     * 使用ID查询用户
     * @param id
     * @return
     */
    @Select("select * from userinfo where id = #{id}")
    User findById(Integer id);
    /**
     * 用户注册
     * @param user
     */
    @Insert("insert into userinfo(email,`password`,username,qq,platform,`rank`,signed,message) " +
            "values(#{email}, #{password}, #{username}, #{qq}, #{platform}, #{rank}, #{signed},#{message});")
    boolean registerUser(User user);

    /**
     * 更新用户
     * @param user
     */
    @Update("update userinfo set email=#{email},password=#{password},username=#{username},qq=#{qq},platform=#{platform},`rank`=#{rank},signed=#{signed},groupid=#{groupid},message=#{message},confirm=#{confirm} where id=#{id}")
    void updateUser(User user);

    @Select("select * from userinfo where username like #{username}")
    List<User> searchByName(String username);
}
