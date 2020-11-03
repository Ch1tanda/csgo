package com.csgo.domain;

import java.io.Serializable;

public class EventInfo implements Serializable {
    private Integer id;
    private Integer groupaid;
    private String groupaname;
    private Integer groupbid;
    private String groupbname;
    private String message;
    private String eventtime;
    private String eventresult;
    private String bv;

    @Override
    public String toString() {
        return "EventInfo{" +
                "id=" + id +
                ", groupaid=" + groupaid +
                ", groupaname='" + groupaname + '\'' +
                ", groupbid=" + groupbid +
                ", groupbname='" + groupbname + '\'' +
                ", message='" + message + '\'' +
                ", eventtime='" + eventtime + '\'' +
                ", eventresult='" + eventresult + '\'' +
                ", bv='" + bv + '\'' +
                '}';
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getGroupaid() {
        return groupaid;
    }

    public void setGroupaid(Integer groupaid) {
        this.groupaid = groupaid;
    }

    public String getGroupaname() {
        return groupaname;
    }

    public void setGroupaname(String groupaname) {
        this.groupaname = groupaname;
    }

    public Integer getGroupbid() {
        return groupbid;
    }

    public void setGroupbid(Integer groupbid) {
        this.groupbid = groupbid;
    }

    public String getGroupbname() {
        return groupbname;
    }

    public void setGroupbname(String groupbname) {
        this.groupbname = groupbname;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public String getEventtime() {
        return eventtime;
    }

    public void setEventtime(String eventtime) {
        this.eventtime = eventtime;
    }

    public String getEventresult() {
        return eventresult;
    }

    public void setEventresult(String eventresult) {
        this.eventresult = eventresult;
    }

    public String getBv() {
        return bv;
    }

    public void setBv(String bv) {
        this.bv = bv;
    }
}
