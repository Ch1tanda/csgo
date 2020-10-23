package com.csgo.domain;

import java.io.Serializable;

/**
 * Created by IntelliJ IDEA.
 * User: Ch1tanda
 * Date: 2020/10/23
 * Time: 12:12
 */
public class Group implements Serializable {
    private Integer id;
    private String groupname;
    private String live;
    private Integer id1;
    private Integer id2;
    private Integer id3;
    private Integer id4;
    private Integer id5;

    @Override
    public String toString() {
        return "Group{" +
                "id=" + id +
                ", groupname='" + groupname + '\'' +
                ", live='" + live + '\'' +
                ", id1=" + id1 +
                ", id2=" + id2 +
                ", id3=" + id3 +
                ", id4=" + id4 +
                ", id5=" + id5 +
                '}';
    }

    public String getLive() {
        return live;
    }

    public void setLive(String live) {
        this.live = live;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getGroupname() {
        return groupname;
    }

    public void setGroupname(String groupname) {
        this.groupname = groupname;
    }

    public Integer getId1() {
        return id1;
    }

    public void setId1(Integer id1) {
        this.id1 = id1;
    }

    public Integer getId2() {
        return id2;
    }

    public void setId2(Integer id2) {
        this.id2 = id2;
    }

    public Integer getId3() {
        return id3;
    }

    public void setId3(Integer id3) {
        this.id3 = id3;
    }

    public Integer getId4() {
        return id4;
    }

    public void setId4(Integer id4) {
        this.id4 = id4;
    }

    public Integer getId5() {
        return id5;
    }

    public void setId5(Integer id5) {
        this.id5 = id5;
    }
}
