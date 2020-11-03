package com.csgo.service;

import com.csgo.domain.EventInfo;

import java.util.List;

public interface IEventService {
    List<EventInfo> findAll();

    EventInfo findById(Integer id);

    void saveEventInfo(EventInfo eventInfo);

    void updateEventInfo(EventInfo eventInfo);

    void deleteEventInfo(EventInfo eventInfo);
}
