package com.csgo.dao;

import com.csgo.domain.EventInfo;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface IEventDao {

    /**
     * 获取所有
     * @return
     */
    @Select("select * from eventinfo;")
    List<EventInfo> findAll();

    /**
     * 根据id获取
     * @return
     */
    @Select("select * from eventinfo where id=#{id}")
    EventInfo findById(Integer id);

    /**
     * 插入新的EventInfo
     * @param eventInfo
     */
    @Insert("insert into eventinfo(groupaid,groupaname,groupbid,groupbname,message) values(#{groupaid},#{groupaname},#{groupbid},#{groupbname},#{message});")
    void saveEventInfo(EventInfo eventInfo);

    /**
     * 更新
     * @param eventInfo
     */
    @Update("update eventinfo set groupaid=#{groupaid},groupaname=#{groupaname},groupbid=#{groupbid}," +
            "groupbname=#{groupbname},message=#{message},eventtime=#{eventtime},eventresult=#{eventresult}," +
            "bv=#{bv} where id=#{id}")
    void updateEventInfo(EventInfo eventInfo);

    /**
     * 删除信息
     * @param eventInfo
     */
    @Delete("delete from eventinfo where id = #{id};")
    void deleteEventInfo(EventInfo eventInfo);
}
