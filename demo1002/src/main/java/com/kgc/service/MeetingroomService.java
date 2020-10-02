package com.kgc.service;

import com.kgc.entity.Meetingroom;

import java.util.List;

public interface MeetingroomService {
    List<Meetingroom> selectAll();

    void add(Meetingroom meetingroom);
}
