package com.csgo.domain;

import java.io.Serializable;

public class Group implements Serializable {
    private Integer groupid;
    private String groupname;
    private String captain;

    public Integer getGroupid() {
        return groupid;
    }

    public void setGroupid(Integer groupid) {
        this.groupid = groupid;
    }

    public String getGroupname() {
        return groupname;
    }

    public void setGroupname(String groupname) {
        this.groupname = groupname;
    }

    public String getCaptain() {
        return captain;
    }

    public void setCaptain(String captain) {
        this.captain = captain;
    }

    @Override
    public String toString() {
        return "Group{" +
                "id=" + groupid +
                ", groupname='" + groupname + '\'' +
                ", captian='" + captain + '\'' +
                '}';
    }
}
