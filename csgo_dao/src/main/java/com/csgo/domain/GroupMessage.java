package com.csgo.domain;

import java.io.Serializable;

/**
 * Created by IntelliJ IDEA.
 * User: Ch1tanda
 * Date: 2020/10/23
 * Time: 13:39
 */
public class GroupMessage implements Serializable {
    private Integer id;
    private String groupname;
    private String username1;
    private String username2;
    private String username3;
    private String username4;
    private String username5;

    @Override
    public String toString() {
        return "GroupMessage{" +
                "id=" + id +
                ", groupname='" + groupname + '\'' +
                ", username1='" + username1 + '\'' +
                ", username2='" + username2 + '\'' +
                ", username3='" + username3 + '\'' +
                ", username4='" + username4 + '\'' +
                ", username5='" + username5 + '\'' +
                '}';
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

    public String getUsername1() {
        return username1;
    }

    public void setUsername1(String username1) {
        this.username1 = username1;
    }

    public String getUsername2() {
        return username2;
    }

    public void setUsername2(String username2) {
        this.username2 = username2;
    }

    public String getUsername3() {
        return username3;
    }

    public void setUsername3(String username3) {
        this.username3 = username3;
    }

    public String getUsername4() {
        return username4;
    }

    public void setUsername4(String username4) {
        this.username4 = username4;
    }

    public String getUsername5() {
        return username5;
    }

    public void setUsername5(String username5) {
        this.username5 = username5;
    }
}
