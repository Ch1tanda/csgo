package com.csgo.service.impl;

import com.csgo.dao.IEventDao;
import com.csgo.domain.EventInfo;
import com.csgo.service.IEventService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.xml.ws.ServiceMode;
import java.util.List;

@Service
public class EventServiceImpl implements IEventService {
    @Autowired
    private IEventDao eventDao;

    @Override
    public List<EventInfo> findAll() {
        return eventDao.findAll();
    }

    @Override
    public EventInfo findById(Integer id) {
        return eventDao.findById(id);
    }

    @Override
    public void saveEventInfo(EventInfo eventInfo) {
        eventDao.saveEventInfo(eventInfo);
    }

    @Override
    public void updateEventInfo(EventInfo eventInfo) {
        eventDao.updateEventInfo(eventInfo);
    }

    @Override
    public void deleteEventInfo(EventInfo eventInfo) {
        eventDao.deleteEventInfo(eventInfo);
    }
}
