package com.csgo.domain;

import java.io.Serializable;

/**
 * Created by IntelliJ IDEA.
 * User: Ch1tanda
 * Date: 2020/10/22
 * Time: 14:20
 */
public class Event implements Serializable {
    private Integer id;
    private String eventname;
    private String eventgame;

    @Override
    public String toString() {
        return "Event{" +
                "id=" + id +
                ", eventname='" + eventname + '\'' +
                ", eventgame='" + eventgame + '\'' +
                '}';
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getEventname() {
        return eventname;
    }

    public void setEventname(String eventname) {
        this.eventname = eventname;
    }

    public String getEventgame() {
        return eventgame;
    }

    public void setEventgame(String eventgame) {
        this.eventgame = eventgame;
    }
}
